export function mapParams<T extends Record<string, any>>(params: T, mapping: Record<string, string>): Record<string, any> {
  const out: Record<string, any> = {};
  for (const [key, value] of Object.entries(params || {})) {
    if (value === undefined || value === null) continue;
    const mapped = mapping[key] ?? key;
    out[mapped] = value;
  }
  return out;
}
