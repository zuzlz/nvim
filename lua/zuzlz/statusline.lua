local function cwd()
    local dir =  os.getenv("PWD")
    local base =  tostring(dir)
    return string.match(base, '[^/]+$')
end

local Statusline = function()
    return table.concat {
        "%{get(b:,'gitsigns_head','')}",
        " ",
        "%{get(b:,'gitsigns_status','')}",
        " ",
        "[",
        cwd(),
        "]/",
        "%f - Row:%5l Col:%5v  %M%R",   -- left side
        "%=",                               -- split from left to right side
        " ",                                -- right side
  }
end

vim.opt.statusline = Statusline()
