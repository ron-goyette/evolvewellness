import type { Block } from 'payload'

import { lexicalEditor } from '@payloadcms/richtext-lexical'
import { sharedLexicalFeatures } from '@/utilities/lexicalFeatures'

const AboutMain: Block = {
  slug: 'aboutMain', // Unique identifier
  interfaceName: 'AboutMain', // For TypeScript types
  labels: {
    singular: 'About Main',
    plural: 'About Mains',
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
      name: 'name',
      type: 'text',
      label: 'Name',
      required: false,
    },
    {
      name: 'credentials',
      type: 'text',
      label: 'Credentials',
      required: false,
    },
    {
      name: 'detailedCredentials',
      type: 'array',
      label: 'Detailed Credentials',
      required: false,
      fields: [
        {
          name: 'state',
          type: 'text',
          label: 'State',
          required: false,
        },
        {
          name: 'licenseNumber',
          type: 'text',
          label: 'License Number',
          required: false,
        },
        {
          name: 'licenseName',
          type: 'text',
          label: 'License Name (e.g., LMFT)',
          required: false,
        },
        {
          name: 'issuingAuthority',
          type: 'text',
          label: 'Issuing Authority',
          required: false,
        },
        {
          name: 'education',
          type: 'text',
          label: 'Education',
          required: false,
        },
        {
          name: 'certification',
          type: 'text',
          label: 'Certification',
          required: false,
        },
        {
          name: 'description',
          type: 'textarea',
          label: 'Notes/Description',
          required: false,
        },
      ],
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
  ],
}

export default AboutMain
