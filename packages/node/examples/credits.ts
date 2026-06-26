import { AILabClient } from '../src/index';

async function main() {
  const apiKey = process.env.AILAB_API_KEY;
  if (!apiKey) throw new Error('Missing AILAB_API_KEY');
  const client = new AILabClient({ apiKey });
  const credits = await client.common.commonQueryCredits({});
  console.log('credits:', credits);
}

main().catch((err) => {
  console.error(err);
  process.exit(1);
});
