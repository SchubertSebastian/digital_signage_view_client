import { Component, Inject, OnInit } from '@angular/core';
import { FormBuilder } from '@angular/forms';
import { MAX_INTEGER } from 'src/app/configs/constants.config';
import { Widget } from 'src/app/shared/models/widget.model';
import { WidgetForm } from '../widget-form';

@Component({
  selector: 'app-default-form',
  templateUrl: './default-form.component.html',
  styleUrls: ['./default-form.component.scss']
})
export class DefaultFormComponent extends WidgetForm implements OnInit {

  widget: Widget;

  constructor(
    @Inject(FormBuilder) fb: FormBuilder
  ) {
    super(fb);
  }

  ngOnInit(): void {
    super.ngOnInit();
  }

  getResult(): Widget {
    return this.getBaseResult();
  }
}
