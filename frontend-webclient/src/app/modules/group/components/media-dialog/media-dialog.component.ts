import { Component, Inject, OnInit } from '@angular/core';
import { MatDialogRef, MAT_DIALOG_DATA } from '@angular/material/dialog';
import { DomSanitizer, SafeUrl } from '@angular/platform-browser';
import { ApiService } from 'src/app/core/services/api.service';
import { Media } from 'src/app/shared/models/media.model';

@Component({
  selector: 'app-media-dialog',
  templateUrl: './media-dialog.component.html',
  styleUrls: ['./media-dialog.component.scss']
})
export class MediaDialogComponent implements OnInit {

  dataUrl: SafeUrl;
  objectUrl: string;

  constructor(
    private dialogRef: MatDialogRef<MediaDialogComponent>,
    @Inject(MAT_DIALOG_DATA) public media: Media,
    private apiService: ApiService,
    private domSanitizer: DomSanitizer
  ) { }

  ngOnInit(): void {
    this.apiService
      .downloadMedia(this.media.mediaId)
      .subscribe(blob => {
        this.objectUrl = URL.createObjectURL(blob);
        this.dataUrl = this.domSanitizer.bypassSecurityTrustUrl(this.objectUrl);
      });
  }

  downloadMedia(): void {
    const anchor = document.createElement('a');
    anchor.download = this.media.fileName;
    anchor.href = this.objectUrl;
    anchor.click();
  }

  deleteMedia(): void {
    this.apiService.deleteMedia(this.media.mediaId).subscribe(() => this.dialogRef.close(this.media.mediaId));
  }
}
