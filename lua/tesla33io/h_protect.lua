local function get_current_buffer_filename()
	local bufnr = vim.api.nvim_get_current_buf()
    local full_path = vim.api.nvim_buf_get_name(bufnr)
    return vim.fn.fnamemodify(full_path, ":t")
end

local function get_file_extension(filename)
    return filename:match("^.+(%..+)$")
end

local function is_header_file(filename)
    local extension = get_file_extension(filename)
    if extension then
        local header_extensions = {".h", ".hpp", ".hxx"} -- Add more if necessary
        for _, ext in ipairs(header_extensions) do
            if extension == ext then
                return true
            end
        end
    end
    return false
end

local function generate_include_guard()
	local filename = get_current_buffer_filename()
    if is_header_file(filename) then
		local include_guard = string.upper(filename:gsub("[^%w]", "_"))
        local ifndef_line = "#ifndef " .. include_guard
        local define_line = "# define " .. include_guard
        local endif_line = "#endif /* " .. include_guard .. " */"

        -- Open the current buffer in read-write mode
        local bufnr = vim.api.nvim_get_current_buf()
		
		-- Get the cursor position (line and column)
        local line, _ = unpack(vim.api.nvim_win_get_cursor(0))

        -- Insert include guard lines at the beginning of the buffer
        vim.api.nvim_buf_set_lines(bufnr, line, line, false, { ifndef_line, define_line, "", endif_line })
    else
        print("Are you lost? It's not a header file! (-(-_-(-_(-_(-_-)_-)-_-)_-)_-)-)")
    end
end

return {
    generate_include_guard = generate_include_guard
}
