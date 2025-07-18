local M = {}

-- Get a list of open buffers and their names
local function get_buffers()
  local buffers = {}
  for _, bufnr in ipairs(vim.api.nvim_list_bufs()) do
    if vim.api.nvim_buf_is_loaded(bufnr) and vim.fn.buflisted(bufnr) == 1 then
      local name = vim.fn.bufname(bufnr)
      table.insert(buffers, { nr = bufnr, name = name })
    end
  end
  return buffers
end

-- Create the floating window and handle selection
function M.open_buffer_picker()
  local buffers = get_buffers()
  if #buffers == 0 then
    print("No buffers found")
    return
  end

  local lines = {}
  for _, b in ipairs(buffers) do
    table.insert(lines, string.format("[%d] %s", b.nr, b.name))
  end

  local buf = vim.api.nvim_create_buf(false, true)
  vim.api.nvim_buf_set_lines(buf, 0, -1, false, lines)

  -- Size and position
  local width = math.floor(vim.o.columns * 0.6)
  local height = #lines
  local row = math.floor((vim.o.lines - height) / 2)
  local col = math.floor((vim.o.columns - width) / 2)

  local win = vim.api.nvim_open_win(buf, true, {
    relative = "editor",
    width = width,
    height = height,
    row = row,
    col = col,
    style = "minimal",
    border = "rounded",
  })

  -- Map <Enter> to switch buffer
  vim.api.nvim_buf_set_keymap(buf, "n", "<CR>", "", {
    noremap = true,
    callback = function()
      local line = vim.api.nvim_get_current_line()
      local nr = tonumber(string.match(line, "%[(%d+)%]"))
      if nr then
        vim.cmd("b " .. nr)
        vim.api.nvim_win_close(win, true)
      end
    end,
  })

  vim.api.nvim_buf_set_keymap(buf, "n", "q", "", {
    noremap = true,
    callback = function()
      vim.api.nvim_win_close(win, true)
    end,
  })
end

-- Map the function to a command
vim.api.nvim_create_user_command("BufferPicker", M.open_buffer_picker, {})

return M

