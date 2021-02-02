import { Component, Inject, OnInit } from '@angular/core';
import { AbstractControl, FormBuilder, FormGroup, ValidatorFn, Validators } from '@angular/forms';
import { CUSTOM_TYPE_REGEX, MAX_INTEGER } from 'src/app/configs/constants.config';
import { Widget } from 'src/app/shared/models/widget.model';

@Component({ template: '' })
export abstract class WidgetForm implements OnInit {

    form: FormGroup;
    widget: Widget;

    constructor(
        public fb: FormBuilder
    ) { }

    ngOnInit(): void {
        const fromDt = this.widget.fromDt === 0 ? null : new Date(this.widget.fromDt * 1000);
        const toDt = this.widget.toDt === MAX_INTEGER ? null : new Date(this.widget.toDt * 1000);
        const name = this.getOption('name');
        const duration = this.widget.duration;

        this.form = this.fb.group({
            type: [this.widget.type],
            fromDt: [fromDt],
            toDt: [toDt],
            widgetOptions: this.fb.group({
                name: [name, this.forbiddenNameValidator(CUSTOM_TYPE_REGEX)],
                useDuration: [1],
                duration: [duration, Validators.required]
            })
        });
    }

    isValid(): boolean {
        return this.form && this.form.valid;
    }

    abstract getResult(): Widget;

    private forbiddenNameValidator(nameRe: RegExp): ValidatorFn {
        return (control: AbstractControl): { [key: string]: any } | null => {
            const forbidden = nameRe.test(control.value);
            return forbidden ? { forbiddenName: { value: control.value } } : null;
        };
    }

    //////////////////////
    // Helper Functions //
    //////////////////////

    getOption(optionName: string): string {
        const option = this.widget.widgetOptions.find(widgetOption => widgetOption.option === optionName);
        return option ? option.value : '';
    }

    getWidgetOptions(): FormGroup {
        return this.form.controls['widgetOptions'] as FormGroup;
    }

    getBaseResult(): Widget {
        const value = this.form.value;

        const fromDt = value.fromDt == null ? 0 : value.fromDt / 1000;
        const toDt = value.toDt == null ? MAX_INTEGER : value.toDt / 1000;
        const type = value.type;
        const widgetOptions = Object.keys(value.widgetOptions).map(key => ({ option: key, value: value.widgetOptions[key] }));

        return { fromDt, toDt, type, widgetOptions } as Widget;
    }
}
