import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { DragAndDropFileDirective } from './directives/drag-and-drop-file.directive';
import { ApiMediaComponent } from './components/api-media/api-media.component';
import { TransformToFitParentDirective } from './directives/transform-to-fit.directive';
import { DndCopySourceDirective } from './directives/dnd-copy-source.directive';
import { DndCopyDestinationDirective } from './directives/dnd-copy-destination.directive';

@NgModule({
  declarations: [
    DragAndDropFileDirective,
    ApiMediaComponent,
    TransformToFitParentDirective,
    DndCopySourceDirective,
    DndCopyDestinationDirective
  ],
  exports: [
    DragAndDropFileDirective,
    ApiMediaComponent,
    TransformToFitParentDirective,
    DndCopySourceDirective,
    DndCopyDestinationDirective
  ],
  imports: [
    CommonModule
  ]
})
export class SharedModule { }
