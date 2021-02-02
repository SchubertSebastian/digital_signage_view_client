import { CdkDragEnter, CdkDragExit, CdkDropList } from '@angular/cdk/drag-drop';
import { Directive, EventEmitter, HostListener, Input, Output } from '@angular/core';
import { DndCopyService } from 'src/app/core/services/dnd-copy.service';

@Directive({
  selector: '[appDndCopySource]'
})
export class DndCopySourceDirective {

  constructor(
    private cdkDropList: CdkDropList,
    dndCopyService: DndCopyService
  ) {
    dndCopyService.dropped.subscribe(dropList => {
      if (this.cdkDropList === dropList) {
        this.clearTemp();
      }
    });
  }

  // To alter this data you have to use methods that changes the array itself
  // Something like: "this.data = this.data.filter()" won't work because
  // you are changing the reference
  @Input('cdkDropListData') data: ({ temp: boolean } & any)[];

  @Output() appDndCopySourceData = new EventEmitter<({ temp: boolean } & any)[]>();

  @HostListener('cdkDropListExited', ['$event'])
  onSourceListExited(event: CdkDragExit<any>) {
    const item = event.item.data;
    const index = event.container.data.indexOf(item);
    this.data.splice(index + 1, 0, { ...item, temp: true });
    this.appDndCopySourceData.emit(this.data);
  }

  @HostListener('cdkDropListEntered', ['$event'])
  onSourceListEntered(_event: CdkDragEnter<any>) {
    this.clearTemp();
  }

  private clearTemp() {
    for (let i = 0; i < this.data.length; i++) {
      const { temp } = this.data[i];
      if (temp) {
        // This should work because only 1 temp is in the array
        // If multiple temps are in the array the index would be invalid because
        // it shifted and you probably have to decrement "i"
        this.data.splice(i, 1);
        this.appDndCopySourceData.emit(this.data);
        break;
      }
    }
  }
}
