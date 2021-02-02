import { Component, OnInit, ViewChildren, QueryList, ViewChild, AfterViewInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { Layout } from 'src/app/shared/models/layout.model';
import { ApiService } from 'src/app/core/services/api.service';
import { Widget } from 'src/app/shared/models/widget.model';
import { CdkDragDrop, moveItemInArray, CdkDropList } from '@angular/cdk/drag-drop';
import { CUSTOM_TYPE_REGEX, MAX_INTEGER, MEDIA_LIBRARY_ID, MODULE_LIST_ID } from 'src/app/configs/constants.config';
import { MediaLibraryComponent } from '../../components/media-library/media-library.component';
import { Playlist } from 'src/app/shared/models/playlist.model';
import { SelectedRowService } from 'src/app/core/services/selected-row.service';
import { Region } from 'src/app/shared/models/region.model';
import { MatSnackBar } from '@angular/material/snack-bar';
import { MatDialog } from '@angular/material/dialog';
import { WidgetEditorDialogComponent } from '../../components/widget-editor-dialog/widget-editor-dialog.component';

@Component({
  selector: 'app-group-detail',
  templateUrl: './group-detail.component.html',
  styleUrls: ['./group-detail.component.scss']
})
export class GroupDetailComponent implements OnInit, AfterViewInit {

  displayedColumns = ['dragAndDrop'];
  layout: Layout;
  originalLayoutId: number;
  @ViewChild(MediaLibraryComponent) mediaLibrary: MediaLibraryComponent;
  @ViewChildren(CdkDropList) cdkDropLists: QueryList<CdkDropList>;
  lists: CdkDropList[] = [];
  CUSTOM_TYPE_REGEX = CUSTOM_TYPE_REGEX;
  mediaLibraryId = MEDIA_LIBRARY_ID;
  moduleListId = MODULE_LIST_ID;

  constructor(
    private route: ActivatedRoute,
    private router: Router,
    private snackbar: MatSnackBar,
    private dialog: MatDialog,
    private apiService: ApiService,
    public selectedRowService: SelectedRowService
  ) { }

  ngOnInit(): void {
    this.layout = this.route.snapshot.data['layout'];
    this.originalLayoutId = +this.route.snapshot.paramMap.get('layoutId');
    // TODO: show layout not found when layoutId is not a valid number or does not exist
  }

  ngAfterViewInit(): void {
    // Fix: https://stackoverflow.com/a/42035143/11125147
    setTimeout(_ => this.lists = this.cdkDropLists.toArray());
  }

  save(): void {
    console.log(this.layout);
    // TODO: better solution for cloning object
    const layout: Layout = JSON.parse(JSON.stringify(this.layout));
    layout.regions.forEach(region => region.regionPlaylist.widgets.forEach(widget => {
      if (widget.customType) {
        // name field is never null due to the formbuilder creating null values
        const nameField = widget.widgetOptions.find(wo => wo.option === 'name');
        const name = nameField.value || widget.customType;
        nameField.value = `${name} --custom-type="${widget.customType}"`;
      }
    }));

    //TODO: Use return value to fake reload page
    this.layout = null;
    this.apiService
      .saveLayoutById(this.originalLayoutId, layout)
      .subscribe(layout => {
        this.snackbar.open('Saved layout', null, { duration: 2000 });
        this.router.routeReuseStrategy.shouldReuseRoute = () => false;
        this.router.onSameUrlNavigation = 'reload';
        this.router.navigate(['/group', layout.layoutId]);
      });
  }

  deleteRow(widgets: Widget[], indexToRemove: number, regionIndex: number): void {
    widgets.splice(indexToRemove, 1);
    this.refreshTable(widgets, regionIndex);
  }

  editRow(widget: Widget, region: Region) {
    this.selectedRowService.row.next({ widget, region });
    const dialogRef = this.dialog.open(WidgetEditorDialogComponent, {
      autoFocus: false,
      restoreFocus: false,
      width: '100%'
    });

    dialogRef.afterClosed().subscribe((editedWidget: Widget) => {
      if (editedWidget) {
        Object.assign(widget, editedWidget);
      }
    });
  }

  drop(event: CdkDragDrop<Widget[]>, regionIndex: number, playlist: Playlist): void {
    if (event.container === event.previousContainer) {
      moveItemInArray(event.container.data, event.previousIndex, event.currentIndex);
    } else {
      const containerId = event.previousContainer.id;
      let widget: Widget;

      switch (containerId) {
        case this.mediaLibraryId:
          widget = this.mediaLibrary.createWidgetForMediaByIndex(event.previousIndex);
          break;
        case this.moduleListId:
          // Get copy of the data otherwise widget will be the object from module-list and override the default value
          widget = { ...event.item.data };
          break;
      }

      widget.playlistId = playlist.playlistId;
      event.container.data.splice(event.currentIndex, 0, widget);
    }

    this.refreshTable(event.container.data, regionIndex);
  }

  getWidgetName(widget: Widget): string {
    const widgetOptions = widget.widgetOptions;
    for (const option of widgetOptions) {
      if (option.option === 'name' && option.value) {
        return option.value;
      }
    }

    return widget.customType || widget.type;
  }

  getDate(dateTimeStamp: number): Date | null {
    if (dateTimeStamp > 0 && dateTimeStamp < MAX_INTEGER) {
      return new Date(dateTimeStamp * 1000);
    }

    return null;
  }

  saveWidget(widget: Widget) {
    const value = this.selectedRowService.row.value.widget;
    Object.assign(value, widget);
  }

  private refreshTable(widgets: Widget[], regionIndex: number) {
    this.layout.regions[regionIndex].regionPlaylist.widgets = [...widgets];
  }
}
