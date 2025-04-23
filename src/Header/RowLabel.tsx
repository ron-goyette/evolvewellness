'use client'
import { Header } from '@/payload-types'
import { RowLabelProps, useRowLabel } from '@payloadcms/ui'

function getLabelPath(data: any): string {
  let label = data?.data?.link?.label || ''
  let parent = data?.parent
  while (parent) {
    const parentLabel = parent?.data?.link?.label
    if (parentLabel) {
      label = parentLabel + ' > ' + label
    }
    parent = parent.parent
  }
  return label
}

export const RowLabel: React.FC<RowLabelProps> = () => {
  const data = useRowLabel<any>()
  const labelPath = getLabelPath(data)
  return <div>{labelPath ? `Nav: ${labelPath}` : 'Nav item'}</div>
}
