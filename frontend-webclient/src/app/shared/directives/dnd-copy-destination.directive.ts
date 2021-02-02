import { CdkDragDrop } from '@angular/cdk/drag-drop';
import { Directive, HostListener } from '@angular/core';
import { DndCopyService } from 'src/app/core/services/dnd-copy.service';

@Directive({
  selector: '[appDndCopyDestination]'
})
export class DndCopyDestinationDirective {

  constructor(private dndCopyService: DndCopyService) { }

  @HostListener('cdkDropListDropped', ['$event'])
  onDestinationDropped(event: CdkDragDrop<any>) {
    this.dndCopyService.dropped.next(event.previousContainer);
  }
}
