## Amazon Elastic Transcoder
Amazon Elastic Transcoder lets you convert media files that you have stored in Amazon Simple Storage Service (Amazon S3) into media files in the formats required by consumer playback devices.

Elastic Transcoder has four components:
- Jobs: do the work of transcoding
- Pipelines: are queues that manage your transcoding jobs. One common configuration is to create two pipelines—one for standard-priority jobs, and one for high-priority jobs. Most jobs go into the standard-priority pipeline; you use the high-priority pipeline only when you need to transcode a file immediately.
- Presets: are templates that contain most of the settings for transcoding media files from one format to another. A preset is a template that contains the settings that you want Elastic Transcoder to apply during the transcoding process.
