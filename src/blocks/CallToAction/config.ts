import type { Block } from 'payload'
import { link } from '@/fields/link'

export const CallToAction: Block = {
  slug: 'cta',
  fields: [
    {
      name: 'richText',
      type: 'richText',
      required: true,
    },
    {
      name: 'links',
      type: 'array',
      fields: [
        link({
          // Optionally specify all appearances to be explicit
          appearances: [
            'default',
            'outline',
            'secondary',
            'ghost',
            'link',
            'destructive',
            'primary',
            'danger',
            'secondaryCustom',
          ],
        }),
      ],
    },
    {
      name: 'buttons',
      type: 'group',
      fields: [
        {
          name: 'contact',
          type: 'group',
          fields: [
            {
              name: 'show',
              type: 'checkbox',
              label: 'Show Contact Button',
            },
            {
              name: 'label',
              type: 'text',
              label: 'Contact Button Label',
            },
            {
              name: 'size',
              type: 'select',
              options: [
                { label: 'Default', value: 'default' },
                { label: 'Small', value: 'sm' },
                { label: 'Large', value: 'lg' },
              ],
              label: 'Contact Button Size',
            },
            {
              name: 'variant',
              type: 'select',
              options: [
                { label: 'Primary', value: 'primary' },
                { label: 'Secondary', value: 'secondary' },
                { label: 'Secondary Custom', value: 'secondaryCustom' },
                { label: 'Outline', value: 'outline' },
                { label: 'Ghost', value: 'ghost' },
              ],
              label: 'Contact Button Variant',
            },
          ],
        },
        // Optionally add schedule button config here if needed
      ],
    },
  ],
}
