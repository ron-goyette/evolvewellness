import type { GlobalConfig } from 'payload'

import { link } from '@/fields/link'
import { revalidateHeader } from './hooks/revalidateHeader'

export const Header: GlobalConfig = {
  slug: 'header',
  access: {
    read: () => true,
  },
  fields: [
    {
      name: 'navItems',
      type: 'array',
      fields: [
        link({
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
        {
          name: 'children',
          type: 'array',
          fields: [
            link({
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
          admin: {
            initCollapsed: true,
            components: {
              RowLabel: '@/Header/RowLabel#RowLabel',
            },
          },
        },
      ],
      maxRows: 8,
      admin: {
        initCollapsed: true,
        components: {
          RowLabel: '@/Header/RowLabel#RowLabel',
        },
      },
    },
  ],
  hooks: {
    afterChange: [revalidateHeader],
  },
}
