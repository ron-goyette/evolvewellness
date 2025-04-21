import type { Block } from 'payload'

export const VideoBlock: Block = {
  slug: 'videoBlock',
  labels: {
    singular: 'Video',
    plural: 'Videos',
  },
  fields: [
    {
      name: 'url',
      label: 'Video URL',
      type: 'text',
      required: true,
      admin: {
        placeholder: 'Paste a YouTube or Vimeo URL',
      },
    },
    {
      name: 'caption',
      label: 'Caption',
      type: 'text',
      required: false,
      admin: {
        placeholder: 'Optional caption for the video',
      },
    },
  ],
}

export default VideoBlock
