// Migration for nested nav items in Header and Footer
// This migration ensures the database supports the new nested nav structure.
// It adds a 'children' column of type jsonb to header_nav_items and footer_nav_items if it does not exist.

module.exports = async function nestedNavItemsMigration({ payload }) {
  const db = payload.db && payload.db.pool ? payload.db.pool : null
  if (!db) {
    console.warn('No database pool found. Skipping SQL migration for nav item children.')
    return
  }

  // Helper to add column if it doesn't exist
  async function addJsonbColumnIfMissing(table, column) {
    // Check if column exists
    const checkRes = await db.query(
      `SELECT column_name FROM information_schema.columns WHERE table_name = $1 AND column_name = $2`,
      [table, column],
    )
    if (checkRes.rowCount === 0) {
      await db.query(
        `ALTER TABLE ${table} ADD COLUMN ${column} jsonb NOT NULL DEFAULT '[]'::jsonb;`,
      )
      console.log(`Added column '${column}' to table '${table}'.`)
    } else {
      console.log(`Column '${column}' already exists in table '${table}'.`)
    }
  }

  await addJsonbColumnIfMissing('header_nav_items', 'children')
  await addJsonbColumnIfMissing('footer_nav_items', 'children')
}
