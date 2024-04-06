local function gost()
    if
        vim.bo.filetype == 'go'
        and vim.g['nvim_go#lint_issues_count'] ~= nil
    then
        return vim.g['nvim_go#lint_issues_count']
    else
        return ''
    end
end

local function cwd()
    local dir =  os.getenv("PWD")
    local base =  tostring(dir)
    return string.match(base, '[^/]+$')
end

local Statusline = function()
    return table.concat {
        "[",
        cwd(),
        "]/",
        "%f - Row:%5l Col:%5v  %M%R",   -- left side
        "%=",                               -- split from left to right side
        " ",                                -- right side
        gost()
  }
end

vim.opt.statusline = Statusline()
