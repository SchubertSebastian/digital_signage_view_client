import { Component, Input, OnChanges, OnInit } from '@angular/core';
import { DomSanitizer, SafeUrl } from '@angular/platform-browser';
import { BehaviorSubject, Observable } from 'rxjs';
import { map, switchMap } from 'rxjs/operators';
import { ApiService } from 'src/app/core/services/api.service';

@Component({
  selector: 'app-api-media',
  templateUrl: './api-media.component.html',
  styleUrls: ['./api-media.component.scss']
})
export class ApiMediaComponent implements OnInit, OnChanges {

  @Input('media-id') private mediaId: number;
  private mediaIdSubject = new BehaviorSubject<number>(null);
  // Stream of data urls. Everytime a new input comes in (change media-id)
  // handle it with loadImage and store it in this subject
  dataUrlObserver = this.mediaIdSubject.pipe(switchMap(mediaId => this.loadImage(mediaId)))

  constructor(
    private apiService: ApiService,
    private domSanitizer: DomSanitizer
  ) { }

  ngOnInit(): void {
    this.mediaIdSubject.next(this.mediaId);
  }

  ngOnChanges(): void {
    this.mediaIdSubject.next(this.mediaId);
  }

  @Input() private src: string;

  loadImage(mediaId: number): Observable<SafeUrl> {
    return this.apiService
      .previewMedia(mediaId)
      .pipe(
        map(media => this.domSanitizer.bypassSecurityTrustUrl(URL.createObjectURL(media)))
      );
  }
}
