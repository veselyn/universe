local schemastore = require("schemastore")

return {
	settings = {
		json = {
			schemas = schemastore.json.schemas(),
		},
	},
}
