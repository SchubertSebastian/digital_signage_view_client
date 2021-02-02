import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { GroupComponent } from './pages/group/group.component';
import { GroupRoutingModule } from './group-routing.module';
import { MatButtonModule } from '@angular/material/button';
import { GroupDetailComponent } from './pages/group-detail/group-detail.component';
import { MatCardModule } from '@angular/material/card';
import { MatIconModule } from '@angular/material/icon';
import { DragDropModule } from '@angular/cdk/drag-drop';
import { MatTableModule } from '@angular/material/table';
import { MatDialogModule } from '@angular/material/dialog';
import { MatListModule } from '@angular/material/list';
import { TextFormComponent } from './components/widget-forms/text-form/text-form.component';
import { BaseFormComponent } from './components/widget-forms/base-form/base-form.component';
import { ReactiveFormsModule } from '@angular/forms';
import { MatFormFieldModule } from '@angular/material/form-field';
import { MatInputModule } from '@angular/material/input';
import { MatDatepickerModule } from '@angular/material/datepicker';
import { MatNativeDateModule } from '@angular/material/core';
import { MatSelectModule } from '@angular/material/select';
import { NgxSummernoteModule } from 'ngx-summernote';
import { SharedModule } from 'src/app/shared/shared.module';
import { MatRippleModule } from '@angular/material/core';
import { ModuleListComponent } from './components/module-list/module-list.component';
import { WidgetEditorComponent } from './components/widget-editor/widget-editor.component';
import { TextWithImageFormComponent } from './components/widget-forms/text-with-image-form/text-with-image-form.component';
import { MediaLibraryComponent } from './components/media-library/media-library.component';
import { MatSnackBarModule } from '@angular/material/snack-bar';
import { MediaDialogComponent } from './components/media-dialog/media-dialog.component';
import { MatChipsModule } from '@angular/material/chips';
import { EmbeddedPreviewDialogComponent } from './components/embedded-preview-dialog/embedded-preview-dialog.component';
import { DefaultFormComponent } from './components/widget-forms/default-form/default-form.component';
import { WidgetEditorDialogComponent } from './components/widget-editor-dialog/widget-editor-dialog.component';

@NgModule({
  declarations: [
    GroupComponent,
    GroupDetailComponent,
    TextFormComponent,
    BaseFormComponent,
    ModuleListComponent,
    WidgetEditorComponent,
    TextWithImageFormComponent,
    MediaLibraryComponent,
    MediaDialogComponent,
    EmbeddedPreviewDialogComponent,
    DefaultFormComponent,
    WidgetEditorDialogComponent
  ],
  imports: [
    CommonModule,
    GroupRoutingModule,
    MatButtonModule,
    MatCardModule,
    MatIconModule,
    DragDropModule,
    MatTableModule,
    MatDialogModule,
    MatListModule,
    ReactiveFormsModule,
    MatFormFieldModule,
    MatInputModule,
    MatDatepickerModule,
    MatNativeDateModule,
    MatSelectModule,
    NgxSummernoteModule,
    SharedModule,
    MatRippleModule,
    MatSnackBarModule,
    SharedModule,
    MatChipsModule
  ]
})
export class GroupModule { }
