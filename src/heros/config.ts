import type { Field } from 'payload'

import { lexicalEditor } from '@payloadcms/richtext-lexical'
import { sharedLexicalFeatures } from '@/utilities/lexicalFeatures'

import { linkGroup } from '@/fields/linkGroup'

export const hero: Field = {
  name: 'hero',
  type: 'group',
  fields: [
    {
      name: 'type',
      type: 'select',
      defaultValue: 'evolve',
      label: 'Type',
      options: [
        {
          label: 'None',
          value: 'none',
        },
        {
          label: 'Evolve',
          value: 'evolve',
        },
        {
          label: 'High Impact',
          value: 'highImpact',
        },
        {
          label: 'Medium Impact',
          value: 'mediumImpact',
        },
        {
          label: 'Low Impact',
          value: 'lowImpact',
        },
      ],
      required: true,
    },
    {
      name: 'media',
      type: 'upload',
      admin: {
        condition: (_, { type } = {}) => ['evolve', 'highImpact', 'mediumImpact'].includes(type),
      },
      relationTo: 'media',
      required: true,
    },
    {
      name: 'richText',
      type: 'richText',
      editor: lexicalEditor({
        features: sharedLexicalFeatures,
      }),
      label: false,
    },
    {
      name: 'buttons',
      type: 'group',
      label: 'Action Buttons',
      fields: [
        {
          name: 'contact',
          type: 'group',
          label: 'Contact Button',
          fields: [
            {
              name: 'show',
              type: 'checkbox',
              label: 'Show Contact Button',
              defaultValue: false,
            },
            {
              name: 'label',
              type: 'text',
              label: 'Button Label',
              admin: {
                condition: (_, { show } = {}) => show,
              },
              defaultValue: 'Contact',
            },
            {
              name: 'size',
              type: 'select',
              label: 'Button Size',
              admin: {
                condition: (_, { show } = {}) => show,
              },
              defaultValue: 'default',
              options: [
                {
                  label: 'Small',
                  value: 'sm',
                },
                {
                  label: 'Default',
                  value: 'default',
                },
                {
                  label: 'Large',
                  value: 'lg',
                },
              ],
            },
            {
              name: 'variant',
              type: 'select',
              label: 'Button Style',
              admin: {
                condition: (_, { show } = {}) => show,
              },
              defaultValue: 'primary',
              options: [
                {
                  label: 'Primary',
                  value: 'primary',
                },
                {
                  label: 'Secondary',
                  value: 'secondary',
                },
                {
                  label: 'Secondary Custom',
                  value: 'secondaryCustom',
                },
                {
                  label: 'Outline',
                  value: 'outline',
                },
                {
                  label: 'Ghost',
                  value: 'ghost',
                },
              ],
            },
          ],
        },
        {
          name: 'schedule',
          type: 'group',
          label: 'Schedule Button',
          fields: [
            {
              name: 'show',
              type: 'checkbox',
              label: 'Show Schedule Button',
              defaultValue: false,
            },
            {
              name: 'label',
              type: 'text',
              label: 'Button Label',
              admin: {
                condition: (_, { show } = {}) => show,
              },
              defaultValue: 'Schedule Appointment',
            },
            {
              name: 'size',
              type: 'select',
              label: 'Button Size',
              admin: {
                condition: (_, { show } = {}) => show,
              },
              defaultValue: 'default',
              options: [
                {
                  label: 'Small',
                  value: 'sm',
                },
                {
                  label: 'Default',
                  value: 'default',
                },
                {
                  label: 'Large',
                  value: 'lg',
                },
              ],
            },
            {
              name: 'variant',
              type: 'select',
              label: 'Button Style',
              admin: {
                condition: (_, { show } = {}) => show,
              },
              defaultValue: 'primary',
              options: [
                {
                  label: 'Primary',
                  value: 'primary',
                },
                {
                  label: 'Secondary',
                  value: 'secondary',
                },
                {
                  label: 'Secondary Custom',
                  value: 'secondaryCustom',
                },
                {
                  label: 'Outline',
                  value: 'outline',
                },
                {
                  label: 'Ghost',
                  value: 'ghost',
                },
              ],
            },
          ],
        },
      ],
    },
    linkGroup({
      overrides: {
        maxRows: 2,
      },
    }),
  ],
  label: false,
}
