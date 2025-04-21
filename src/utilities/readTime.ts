import type { DefaultTypedEditorState } from '@payloadcms/richtext-lexical'

/**
 * Recursively extracts plain text from a Lexical rich text node.
 */
export function extractTextFromLexical(node: unknown): string {
  if (!node || typeof node !== 'object') return ''
  if ('type' in node && (node as { type?: string }).type === 'text') {
    return (node as { text?: string }).text || ''
  }
  if ('children' in node && Array.isArray((node as { children?: unknown[] }).children)) {
    return ((node as { children?: unknown[] }).children || []).map(extractTextFromLexical).join(' ')
  }
  return ''
}

/**
 * Calculates the approximate read time in minutes for a given text.
 * @param text The plain text to analyze.
 * @param wordsPerMinute Average reading speed (default: 225).
 */
export function calculateReadTime(text: string, wordsPerMinute = 225): number {
  const words = text.trim().split(/\s+/).length
  return Math.max(1, Math.round(words / wordsPerMinute))
}

/**
 * Given a Lexical editor state, returns the read time in minutes.
 */
export function getReadTimeFromLexical(
  lexicalState: DefaultTypedEditorState | undefined | null,
): number {
  if (!lexicalState || typeof lexicalState !== 'object' || !('root' in lexicalState)) return 1
  const text = extractTextFromLexical((lexicalState as { root?: unknown }).root)
  return calculateReadTime(text)
}
