import type { Block } from 'payload'

import { lexicalEditor } from '@payloadcms/richtext-lexical'
import { sharedLexicalFeatures } from '@/utilities/lexicalFeatures'

import { link } from '@/fields/link' // Adjust path if needed

const Services: Block = {
  slug: 'services',
  interfaceName: 'ServicesBlock',
  labels: {
    singular: 'Services',
    plural: 'Services',
  },
  fields: [
    {
      name: 'heading',
      type: 'text',
      label: 'Heading',
      defaultValue: 'Services',
      required: true,
    },
    {
      name: 'backgroundImage',
      type: 'upload',
      relationTo: 'media',
      label: 'Background Image',
      required: false, // Optional, falls back to bg-gray-100
    },
    {
      name: 'services',
      type: 'array',
      label: 'Services',
      minRows: 1,
      maxRows: 3,
      fields: [
        {
          name: 'subheading',
          type: 'text',
          label: 'Subheading',
          required: true,
        },
        {
          name: 'description',
          type: 'richText',
          editor: lexicalEditor({
            features: sharedLexicalFeatures,
          }),
          label: 'Description',
          required: true,
        },
        link({
          overrides: {
            label: 'Link',
          },
        }),
      ],
    },
  ],
}

export default Services
