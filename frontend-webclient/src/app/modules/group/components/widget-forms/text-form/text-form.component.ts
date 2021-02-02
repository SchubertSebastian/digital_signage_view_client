import { Component, Inject, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import { Widget } from 'src/app/shared/models/widget.model';
import { MAX_INTEGER } from 'src/app/configs/constants.config';
import { WidgetForm } from '../widget-form';

@Component({
  selector: 'app-text-form',
  templateUrl: './text-form.component.html',
  styleUrls: ['./text-form.component.scss']
})
export class TextFormComponent extends WidgetForm implements OnInit {

  form: FormGroup;
  widget: Widget;
  config: any = {
    tabDisable: true,
    disableResizeEditor: true,
    height: '320px',
    toolbar: [
      ['misc', ['codeview', 'undo', 'redo']],
      ['font', ['bold', 'italic', 'underline', 'strikethrough']],
      ['color', ['color']],
      ['fontsize', ['fontname', 'fontsize']],
    ],
    fontSizes: ['12', '13', '14', '16', '18', '24', '30', '38', '50', '72', '88', '104']
  }

  constructor(
    @Inject(FormBuilder) fb: FormBuilder
  ) {
    super(fb);
  }

  ngOnInit(): void {
    super.ngOnInit();
    const widgetOptions = this.getWidgetOptions();
    const text = this.getOption('text');
    widgetOptions.addControl('text', this.fb.control(text, Validators.required));
  }

  getResult(): Widget {
    const result = this.getBaseResult();

    const widgetOptions = this.getWidgetOptions();
    const text = widgetOptions.controls['text'].value;
    result.widgetOptions.push({ option: 'text', value: text });

    return result;
  }
}
