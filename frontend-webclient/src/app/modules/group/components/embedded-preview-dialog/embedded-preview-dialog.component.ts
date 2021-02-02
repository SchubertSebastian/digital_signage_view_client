import { Component, ElementRef, Inject, OnInit, Renderer2, ViewChild } from '@angular/core';
import { MAT_DIALOG_DATA } from '@angular/material/dialog';
import { forkJoin, Observable } from 'rxjs';
import { MEDIA_ID_WILDCARD_REGEX } from 'src/app/configs/constants.config';
import { ApiService } from 'src/app/core/services/api.service';
import { SelectedRowService } from 'src/app/core/services/selected-row.service';

@Component({
  selector: 'app-embedded-preview-dialog',
  templateUrl: './embedded-preview-dialog.component.html',
  styleUrls: ['./embedded-preview-dialog.component.scss']
})
export class EmbeddedPreviewDialogComponent implements OnInit {

  @ViewChild('wrapper', { static: true }) wrapper: ElementRef;

  constructor(
    @Inject(MAT_DIALOG_DATA) public data: { document: Document },
    private renderer: Renderer2,
    private apiService: ApiService,
    public selectedRowService: SelectedRowService
  ) { }

  async ngOnInit(): Promise<void> {
    const doc = this.data.document;
    const regex = MEDIA_ID_WILDCARD_REGEX;

    // First gather all request / observables
    const observableBatch: Observable<Blob>[] = [];
    const imagesAndContainer = doc.querySelectorAll('img, .image') as NodeList;
    for (let i = 0; i < imagesAndContainer.length; i++) {
      const image = imagesAndContainer[i] as HTMLImageElement | HTMLElement;
      // Find where the image src is. Either in the image tag or as background-image.
      // Retrieving the background-image style returns always: url("some-address")
      //                                   for older browsers: url('some-address')
      const src = image instanceof HTMLImageElement ? image.src : image.style.backgroundImage.slice(4, -1).replace(/['"]/g, "");
      const result = src.match(regex);

      if (result && result[1]) {
        const mediaId = result[1];
        observableBatch.push(this.apiService.downloadMedia(parseInt(mediaId)));
      }
    }

    // Then execute them all and await them as promise. This way the ngOnInit has to wait
    // and the browser won't make a request to [<number>] and get a 404.
    // example: <img src="[10]" />
    //          <div style="background-image: url('[10]')"></div>
    // This would return 404
    const blobs: Blob[] = await forkJoin(observableBatch).toPromise();
    // If the image does not have an id skip it. (I think the order is the same?)
    let skipped = 0;
    for (let i = 0; i < imagesAndContainer.length; i++) {
      const image = imagesAndContainer[i] as HTMLImageElement | HTMLElement;
      const src = image instanceof HTMLImageElement ? image.src : image.style.backgroundImage.slice(4, -1).replace(/['"]/g, "");
      const result = src.match(regex);

      if (result && result[1]) {
        const objectUrl = URL.createObjectURL(blobs[i - skipped]);
        if (image instanceof HTMLImageElement) {
          image.src = objectUrl;
        } else {
          image.style.backgroundImage = `url("${objectUrl}")`;
        }
      } else {
        skipped++;
      }
    }

    const children = doc.body.children;
    for (let i = 0; i < children.length; i++) {
      const child = children[i];
      this.renderer.appendChild(this.wrapper.nativeElement, child);
    }
  }
}
