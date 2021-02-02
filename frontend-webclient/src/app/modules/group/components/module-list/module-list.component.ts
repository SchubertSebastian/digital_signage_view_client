import { Component, Input } from '@angular/core';
import { CdkDropList } from '@angular/cdk/drag-drop';
import { ModuleOption, moduleOptionList } from 'src/app/configs/module-list.config'
import { Widget } from 'src/app/shared/models/widget.model';

@Component({
  selector: 'app-module-list',
  templateUrl: './module-list.component.html',
  styleUrls: ['./module-list.component.scss']
})
export class ModuleListComponent {

  @Input() connectedTo: (CdkDropList | string)[] | CdkDropList | string;
  // TODO: Make id static
  @Input() id: string;
  moduleOptions: ModuleOption[];
  moduleOptionValues: Widget[];

  constructor() {
    this.moduleOptions = moduleOptionList;
    this.moduleOptionValues = this.moduleOptions.map(option => option.defaultWidgetValue);
  }

  getOption(defaultWidget: Widget & { temp: boolean }): ModuleOption {
    return this.moduleOptions.find(option => {
      if (defaultWidget.customType) {
        return defaultWidget.customType === option.defaultWidgetValue.customType;
      }

      return defaultWidget.type === option.defaultWidgetValue.type;
    });
  }
}
