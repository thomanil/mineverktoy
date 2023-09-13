import { defineConfig } from 'astro/config';
import mdx from '@astrojs/mdx';

import sitemap from '@astrojs/sitemap';

// https://astro.build/config
export default defineConfig({
	site: 'https://mineverktoy.com',
	//site: 'https://thomanil.github.io',
	//base: '/mineverktoy', // Only have this in if no custom domain in place
	integrations: [mdx(), sitemap()],
});
