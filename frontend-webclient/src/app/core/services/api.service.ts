import { Injectable } from '@angular/core';
import { HttpClient, HttpResponse } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Layout } from 'src/app/shared/models/layout.model';
import { Media } from 'src/app/shared/models/media.model';
import { map } from 'rxjs/operators';

@Injectable({
  providedIn: 'root'
})
export class ApiService {

  constructor(private http: HttpClient) { }

  ////////////
  // Layout //
  ////////////

  getAllLayouts(): Observable<Layout[]> {
    return this.http.get<Layout[]>('/layout');
  }

  getLayoutById(layoutId: number): Observable<Layout> {
    return this.http.get<Layout>(`/layout/${layoutId}`).pipe(
      map((layout) => {
        for (const region of layout.regions) {
          for (const widget of region.regionPlaylist.widgets) {
            // Duration is not included in the widgetOptions but rather in widget itself (widget.duration)
            widget.widgetOptions.push({
              option: 'duration',
              value: '' + widget.duration
            }, {
              option: 'useDuration',
              value: '1'
            });
          }
        }

        return layout;
      })
    );
  }

  saveLayoutById(layoutId: number, layout: Layout): Observable<Layout> {
    return this.http.put<Layout>(`/layout/${layoutId}`, layout);
  }

  ///////////
  // Media //
  ///////////

  getAllMedia(): Observable<Media[]> {
    return this.http.get<Media[]>('/library');
  }

  downloadMedia(mediaId: number): Observable<Blob> {
    return this.http.get(`/library/download/${mediaId}`, { responseType: 'blob' });
  }

  previewMedia(mediaId: number): Observable<Blob> {
    return this.http.get(`/library/preview/${mediaId}`, { responseType: 'blob' });
  }

  uploadMedia(file: File): Observable<HttpResponse<Media>> {
    const formData = new FormData();
    formData.append('file', file);
    formData.append('filename', file.name);

    return this.http.post<Media>('/library', formData, { observe: 'response' });
  }

  deleteMedia(mediaId: number): Observable<void> {
    console.log(mediaId);
    return this.http.delete<void>(`/library/${mediaId}`);
  }
}
