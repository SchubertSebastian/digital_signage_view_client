import { Component, ViewChild } from '@angular/core';
import { MatDialogRef } from '@angular/material/dialog';
import { MatSnackBar } from '@angular/material/snack-bar';
import { MAX_INTEGER } from 'src/app/configs/constants.config';
import { WidgetEditorComponent } from '../widget-editor/widget-editor.component';

@Component({
  selector: 'app-widget-editor-dialog',
  templateUrl: './widget-editor-dialog.component.html',
  styleUrls: ['./widget-editor-dialog.component.scss']
})
export class WidgetEditorDialogComponent {

  @ViewChild('editor', { static: true }) private editor: WidgetEditorComponent;
  isValid: boolean;

  constructor(
    private dialogRef: MatDialogRef<WidgetEditorDialogComponent>,
    private snackBar: MatSnackBar
  ) { }

  initValueDetection(): void {
    const widgetForm = this.editor.currentForm;
    this.isValid = widgetForm.isValid();

    widgetForm.form.valueChanges.subscribe(() => {
      this.isValid = widgetForm.isValid();
    });
  }

  save(): void {
    const widget = this.editor.currentForm.getResult();

    if (!widget.fromDt) {
      widget.fromDt = 0;
    }
    if (!widget.toDt) {
      widget.toDt = MAX_INTEGER;
    }
    widget.duration = parseFloat(widget.widgetOptions.find(widgetOption => widgetOption.option == 'duration').value);

    this.snackBar.open('Saved', 'close', { duration: 2000 });
    this.dialogRef.close(widget);
  }
}
