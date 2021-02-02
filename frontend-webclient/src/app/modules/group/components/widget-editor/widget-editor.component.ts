import { Component, OnInit, Type, ComponentFactoryResolver, ViewChild, ViewContainerRef, Output, EventEmitter, AfterViewInit } from '@angular/core';
import { Widget } from 'src/app/shared/models/widget.model';
import { typeEditor } from 'src/app/configs/widget-editor.config';
import { SelectedRowService } from 'src/app/core/services/selected-row.service';
import { WidgetForm } from '../widget-forms/widget-form';

@Component({
  selector: 'app-widget-editor',
  templateUrl: './widget-editor.component.html',
  styleUrls: ['./widget-editor.component.scss']
})
export class WidgetEditorComponent implements OnInit, AfterViewInit {

  @ViewChild('dynamicHost', { read: ViewContainerRef, static: true }) private dynamicHost: ViewContainerRef;
  @Output() ready = new EventEmitter<void>();
  private widget: Widget;
  currentForm: WidgetForm;

  constructor(
    private componentFactoryResolver: ComponentFactoryResolver,
    private selectedRowService: SelectedRowService
  ) { }

  ngOnInit(): void {
    this.selectedRowService.row.subscribe(row => {
      if (row && row.widget) {
        this.widget = { ...row.widget };
        // TODO: Instead of defining widget-editor.config, just read the module list to save double configuration
        this.loadComponent(typeEditor[this.widget.customType || this.widget.type]);
      } else {
        this.widget = null;
        this.currentForm = null;
        this.dynamicHost.clear();
      }
    });
  }

  ngAfterViewInit(): void {
    setTimeout(() => this.ready.emit());
  }

  private loadComponent(component: Type<unknown>) {
    if (component == null) {
      component = typeEditor.default;
    }

    const componentFactory = this.componentFactoryResolver.resolveComponentFactory(component);
    this.dynamicHost.clear();
    this.currentForm = null;

    const componentRef = this.dynamicHost.createComponent<unknown>(componentFactory);
    this.currentForm = componentRef.instance as WidgetForm;
    this.currentForm.widget = this.widget;
  }
}
