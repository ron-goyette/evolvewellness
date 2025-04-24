import type { GlobalConfig } from 'payload'

import { link } from '@/fields/link'
import { revalidateFooter } from './hooks/revalidateFooter'

export const Footer: GlobalConfig = {
  slug: 'footer',
  access: {
    read: () => true,
  },
  fields: [
    {
      name: 'tagline',
      type: 'text',
      required: false,
      label: 'Tagline',
      admin: {
        description: 'The main tagline displayed in the footer.',
      },
    },
    {
      name: 'copyright',
      type: 'text',
      required: false,
      label: 'Copyright',
      admin: {
        description: 'Copyright text for the footer.',
      },
    },
    {
      name: 'navItems',
      type: 'array',
      fields: [
        link({
          appearances: false,
        }),
        {
          name: 'children',
          type: 'array',
          fields: [
            link({
              appearances: false,
            }),
            // Only one level of children allowed
          ],
          admin: {
            initCollapsed: true,
            components: {
              RowLabel: '@/Footer/RowLabel#RowLabel',
            },
          },
        },
      ],
      maxRows: 6,
      admin: {
        initCollapsed: true,
        components: {
          RowLabel: '@/Footer/RowLabel#RowLabel',
        },
      },
    },
    {
      name: 'socialLinks',
      type: 'array',
      label: 'Social Media Links',
      maxRows: 8,
      admin: {
        description: 'Add up to 8 social media profile links with icons.',
        initCollapsed: true,
      },
      fields: [
        {
          name: 'platform',
          type: 'text',
          label: 'Platform Name',
          required: true,
        },
        {
          name: 'url',
          type: 'text',
          label: 'Profile URL',
          required: true,
        },
        {
          name: 'icon',
          type: 'upload',
          relationTo: 'media',
          label: 'Platform Icon',
          required: true,
        },
      ],
    },
  ],
  hooks: {
    afterChange: [revalidateFooter],
  },
}
