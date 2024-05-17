-- This file  needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
	theme = "tokyonight",

	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },

	telescope = { style = "borderless" }, -- borderless / bordered

	------------------------------- nvchad_ui modules -----------------------------
	statusline = {
	  theme = "default", -- default/vscode/vscode_colored/minimal
	  -- default/round/block/arrow separators work only for default statusline theme
	  -- round and block will work for minimal theme only
	  separator_style = "default",
	  order = nil,
	  modules = nil,
	},

	nvdash = {
		load_on_startup = true,
	
		header = {
			"     ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄     ",
			"    █                        █    ",
			"    █     ▄▄▄▄▄▄▄▄▄▄▄▄▄▄     █    ",
			"    █    █              █    █    ",
			"    █    █   █   █  █   █    █    ",
			"    █    █       █      █    █    ",
			"    █    █      ▄█      █    █    ",
			"    █    █    ▄    ▄    █    █    ",
			"    █    █    █▄▄▄▄█    █    █    ",
			"    █    █              █    █    ",
			"    █    █▄▄▄▄▄▄▄▄▄▄▄▄▄▄█    █    ",
			"    █                        █    ",
			"    █            ▄▄▄▄▄▄▄▄▄▄  █    ",
			"    █   ▄                    █    ",
			"    █                        █    ",
			"     █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█     ",
			"     █                      █     ",
			"     █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█     ",
		},
	
		buttons = {
		  { "  Find File", "Spc f f", "Telescope find_files" },
		  { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
		  { "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
		  { "  Bookmarks", "Spc m a", "Telescope marks" },
		  { "  Themes", "Spc t h", "Telescope themes" },
		  { "  Mappings", "Spc c h", "NvCheatsheet" },
		},
	},
}

return M
