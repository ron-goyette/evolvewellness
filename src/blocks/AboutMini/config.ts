import type { Block } from 'payload'

import { lexicalEditor } from '@payloadcms/richtext-lexical'
import { sharedLexicalFeatures } from '@/utilities/lexicalFeatures'

import { link } from '@/fields/link' // Adjust path if needed

const AboutMini: Block = {
  slug: 'aboutMini', // Unique identifier
  interfaceName: 'AboutMini', // For TypeScript types
  labels: {
    singular: 'About Mini',
    plural: 'About Minis',
  },
  fields: [
    {
      name: 'media',
      type: 'upload',
      relationTo: 'media',
      label: 'Media Item - Profile Picture',
      required: true,
    },
    {
      name: 'imageStyle',
      type: 'select',
      defaultValue: 'round',
      options: [
        {
          label: 'Round',
          value: 'round',
        },
        {
          label: 'Square',
          value: 'rounded',
        },
      ],
      label: 'Image Shape',
      required: true,
    },
    {
      name: 'imagePosition',
      type: 'select',
      defaultValue: 'left',
      options: [
        {
          label: 'Left',
          value: 'left',
        },
        {
          label: 'Right',
          value: 'right',
        },
      ],
      label: 'Image Position',
      required: true,
    },
    {
      name: 'header',
      type: 'text',
      label: 'Header',
      required: false,
      defaultValue: '',
    },
    {
      name: 'richText',
      type: 'richText',
      editor: lexicalEditor({
        features: sharedLexicalFeatures,
      }),
      label: 'Rich Text Content',
      required: true,
    },
    link({
      overrides: {
        label: 'Button',
      },
    }),
  ],
}

export default AboutMini
