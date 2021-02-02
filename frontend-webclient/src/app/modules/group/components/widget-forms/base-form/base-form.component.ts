import { Component, Input } from '@angular/core';
import { FormGroup } from '@angular/forms';
import { Widget } from 'src/app/shared/models/widget.model';

@Component({
  selector: 'app-base-form',
  templateUrl: './base-form.component.html',
  styleUrls: ['./base-form.component.scss']
})
export class BaseFormComponent {

  @Input() widget: Widget;
  @Input() formGroup: FormGroup;

  constructor() { }
}
