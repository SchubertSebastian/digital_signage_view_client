import { Component, OnInit, Input, ViewChild, ElementRef } from '@angular/core';
import { MatTableDataSource } from '@angular/material/table';
import { Media } from 'src/app/shared/models/media.model';
import { MEDIA_LIBRARY_ID, TEXT_WITH_IMAGE_DROPZONE_ID, MAX_INTEGER, MEDIA_DEFAULT_DURATION } from 'src/app/configs/constants.config';
import { CdkDropList } from '@angular/cdk/drag-drop';
import { ActivatedRoute, Router, RoutesRecognized } from '@angular/router';
import { Widget } from 'src/app/shared/models/widget.model';
import { ApiService } from 'src/app/core/services/api.service';
import { forkJoin, Observable, ObservableInput, of } from 'rxjs';
import { HttpResponse } from '@angular/common/http';
import { catchError } from 'rxjs/operators';
import { MatDialog } from '@angular/material/dialog';
import { MediaDialogComponent } from '../media-dialog/media-dialog.component';
import { MatSnackBar } from '@angular/material/snack-bar';

@Component({
  selector: 'app-media-library',
  templateUrl: './media-library.component.html',
  styleUrls: ['./media-library.component.scss']
})
export class MediaLibraryComponent implements OnInit {

  @Input() connectedTo: (CdkDropList | string)[];
  @Input() mediaLibraryId: string;
  mediaDataSource: MatTableDataSource<Media>;
  @ViewChild('fileInput') fileInput: ElementRef<HTMLInputElement>;

  constructor(
    private dialog: MatDialog,
    private snackBar: MatSnackBar,
    private apiService: ApiService
  ) { }

  ngOnInit(): void {
    this.apiService.getAllMedia().subscribe(media => this.mediaDataSource = new MatTableDataSource<Media>(media));
  }

  filterMedia(filter: string): void {
    this.mediaDataSource.filter = filter.trim().toLowerCase();
  }

  async uploadFile(event: FileList): Promise<void> {
    const observableBatch: Observable<HttpResponse<Media> | string>[] = [];

    for (let i = 0; i < event.length; i++) {
      const file: File = event[i];

      observableBatch.push(this.apiService.uploadMedia(file).pipe(
        catchError(_ => of(event[i].name))
      ));
    }

    const media: Media[] = [];
    const failedMedia: string[] = [];

    const responses: (HttpResponse<Media> | string)[] = await forkJoin<ObservableInput<HttpResponse<Media>>[]>(observableBatch).toPromise();
    responses.forEach(response => {
      if (response instanceof HttpResponse) {
        media.push(response.body);
      } else {
        failedMedia.push(response);
      }
    });

    const data = this.mediaDataSource.data;
    data.push(...media);
    this.mediaDataSource.data = data;

    if (failedMedia.length > 0) {
      this.snackBar.open(`Failed to upload these images: ${failedMedia.map(name => `'${name}'`).join(', ')}`, `close`, { duration: 4000 });
    }
    // Reset file input value
    this.fileInput.nativeElement.value = null;
  }

  createWidgetForMediaByIndex(index: number): Widget {
    const media = this.mediaDataSource.data[index];

    return {
      widgetId: -1,
      playlistId: -1,
      fromDt: 0,
      type: media.mediaType,
      duration: MEDIA_DEFAULT_DURATION,
      toDt: MAX_INTEGER,
      mediaIds: [media.mediaId.toString()],
      widgetOptions: [
        { option: 'useDuration', value: '1' },
        { option: 'duration', value: '' + MEDIA_DEFAULT_DURATION },
        { option: 'name', value: media.name }
      ],
      valid: true
    }
  }

  openMediaDialog(media: Media): void {
    const dialogRef = this.dialog.open(MediaDialogComponent, { data: media, autoFocus: false });

    dialogRef.afterClosed().subscribe(result => {
      // The deleted mediaId will be returned
      if (result) {
        this.mediaDataSource.data = this.mediaDataSource.data.filter(media => media.mediaId != result);
      }
    });
  }

  handleNewMediaList(media: Media[]) {
    this.mediaDataSource.data = media;
  }
}
