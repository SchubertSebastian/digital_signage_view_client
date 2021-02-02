import { Component, Inject, OnInit } from '@angular/core';
import { FormBuilder, Validators } from '@angular/forms';
import { Widget } from 'src/app/shared/models/widget.model';
import { MEDIA_ID_WILDCARD_REGEX, TEXT_WITH_IMAGE_DROPZONE_ID } from 'src/app/configs/constants.config';
import { CdkDragDrop } from '@angular/cdk/drag-drop';
import { Media } from 'src/app/shared/models/media.model';
import { MatDialog } from '@angular/material/dialog';
import { EmbeddedPreviewDialogComponent } from '../../embedded-preview-dialog/embedded-preview-dialog.component';
import { WidgetForm } from '../widget-form';
import { ApiService } from 'src/app/core/services/api.service';
import { Utils } from 'src/app/configs/utils';

@Component({
  selector: 'app-text-with-image-form',
  templateUrl: './text-with-image-form.component.html',
  styleUrls: ['./text-with-image-form.component.scss']
})
export class TextWithImageFormComponent extends WidgetForm implements OnInit {

  dropzoneId = TEXT_WITH_IMAGE_DROPZONE_ID;
  media: Media;
  config: any = {
    tabDisable: true,
    disableResizeEditor: true,
    toolbar: [
      ['misc', ['codeview', 'undo', 'redo']],
      ['font', ['bold', 'italic', 'underline', 'strikethrough']],
      ['color', ['color']],
      ['fontsize', ['fontname', 'fontsize']],
    ],
    fontSizes: ['12', '13', '14', '16', '18', '24', '30', '38', '50', '72', '88', '104']
  };

  constructor(
    private dialog: MatDialog,
    private apiService: ApiService,
    @Inject(FormBuilder) fb: FormBuilder
  ) {
    super(fb);
  }

  ngOnInit(): void {
    super.ngOnInit();

    const transparency = this.getOption('transparency');
    const embedStyle = this.getOption('embedStyle');
    const html = this.getOption('embedHtml');
    const parser = new DOMParser();
    const htmlDoc = parser.parseFromString(html, 'text/html');
    const text = htmlDoc.getElementById('text').innerHTML;
    const image = htmlDoc.querySelector('.image') as HTMLElement;

    // Trim id array: [1] -> 1
    const imageId = this.getImageIdWildcard(Utils.getBackgroundImageUrl(image.style));
    if (imageId) {
      this.apiService.getAllMedia().subscribe(media => {
        this.media = media.filter((singleMedia) => singleMedia.mediaId == +imageId)[0];
      });
    }

    const widgetOptions = this.getWidgetOptions();

    widgetOptions.addControl('text', this.fb.control(text, Validators.required));
    widgetOptions.addControl('imageId', this.fb.control(imageId, Validators.required));
    widgetOptions.addControl('transparency', this.fb.control(transparency));
    widgetOptions.addControl('embedStyle', this.fb.control(embedStyle));
  }

  getResult(): Widget {
    const result = this.getBaseResult();

    result.widgetOptions.push({
      option: 'embedHtml',
      value: this.formToHtml().body.innerHTML
    });

    return result as Widget;
  }

  drop(event: CdkDragDrop<Media>): void {
    const data = event.item.data;
    if (data.mediaType === 'image') {
      this.media = event.item.data;
      this.form.patchValue({
        widgetOptions: {
          imageId: this.media.mediaId
        }
      });
      console.log(this.form.value);
    }
  }

  openEmbeddedPreview(): void {
    this.dialog.open(EmbeddedPreviewDialogComponent, { data: { document: this.formToHtml() }, autoFocus: false })
  }

  private formToHtml(): Document {
    const { text, imageId } = this.form.value.widgetOptions;
    const html = this.widget.widgetOptions.find(option => option.option === 'embedHtml').value;
    const parser = new DOMParser();
    const htmlDoc = parser.parseFromString(html, 'text/html');

    htmlDoc.getElementById('text').innerHTML = text;
    (htmlDoc.querySelector('.image') as HTMLElement).style.backgroundImage = `url("[${imageId}]")`;

    return htmlDoc;
  }

  private getImageIdWildcard(src: string): string {
    const regex = MEDIA_ID_WILDCARD_REGEX;
    const result = src.match(regex);

    return result && result[1] ? result[1] : '';
  }
}
