### saleforce (sandbox) command
project boilerplate

	npm install
	npm run build:meta
	npm run import:site
	npm run dev:watch
	npm run compile:assets

To modify site.xml, you need to run the next command:
send metada
[First Time in onboarding]

	npm run import:site
	npm run dev:watch


[npm for to code upload]

	npm run upload

### Lab - 11: Content Folders and Assets
Admin the contend by Business Manager. for example: title copyright or message informative

Step 5: Descompile library (library.xml)

	npm run decompile:assets

Step 6: Compile library

	npm run compile:assets

To imports data to sandbox: [esto no lo hace el phropet de VS]

	npm run import:site 

	npm run import:site:soft  # (soft version will exclude heavy files like catalog, prices, inventory).



