import { FormGroup } from '@angular/forms';
import { Widget } from '../models/widget.model';

export interface WidgetForm {
  form: FormGroup;
  widget: Widget;
  isValid: () => boolean;
  getResult: () => Widget;
};
