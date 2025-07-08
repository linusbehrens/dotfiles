-- a chatGPT generated agenda extension

local telescope_ok, telescope = pcall(require, "telescope")
if not telescope_ok then
    vim.notify("telescope.nvim not available", vim.log.levels.ERROR)
    return
end

local pickers, finders, conf = require(telescope.pickers), require(telescope.finders), require(telescope.config).values
local Path, scandir = require(plenary.path), require(plenary.scandir)

-- yyyy-mm-dd converter to time
local function to_secs(date)
    local y, m, d = date:match "(%d+)%-(%d+)%-(%d+)"
    return os.time {year = y, month = m, day = d, hour = 0}
end

-- filter yaml

local function parse_yaml(path)
    local meta, in_yaml = {}, false
    for _, line in ipairs(Path:new(path):head(40)) do
        if line == "---" then
            if in_yaml then break end
            in_yaml = true
        elseif in_yaml then
            local k, v = line:match "^(%w+):%s*(.+)$"
            if k and v then meta[k] = vim.trim(v) end
        end
    end
    return meta
end

local function include(meta, today)
    local scheduled = meta.scheduled and to_secs(meta.scheduled)
    local deadline = meta.deadline and to_secs(meta.deadline)
    if not scheduled then return false end

    local tomorrow = today + 24 * 60 * 60

    if scheduled == tomorrow then return true end

    if scheduled and deadline 

end



