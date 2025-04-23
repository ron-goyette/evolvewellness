'use client'
import { Header } from '@/payload-types'
import { RowLabelProps, useRowLabel } from '@payloadcms/ui'

export const RowLabel: React.FC<RowLabelProps> = () => {
  const data = useRowLabel<any>()
  const label = data?.data?.link?.label || 'Row'
  const pathArray = Array.isArray(data?.path) ? data.path : []
  const level = pathArray.filter((p: string) => p === 'children').length || 0
  const prefix = level === 0 ? 'Top-level' : `Level ${level}`
  return (
    <div>
      {prefix} Nav item{data.rowNumber !== undefined ? ` ${data.rowNumber + 1}` : ''}: {label}
    </div>
  )
}
