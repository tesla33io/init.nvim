-- Function to generate include protection for a C header file and write it to the file
local function generateAndWriteIncludeProtection(filename)
    -- Convert filename to uppercase and replace '.' with '_'
    local includeGuard = string.upper(string.gsub(filename, "%.", "_"))
    
    -- Replace non-alphanumeric characters with underscores
    includeGuard = string.gsub(includeGuard, "%W", "_")

    -- Generate include protection
    local includeProtection = string.format("#ifndef %s\n#define %s\n\n", includeGuard, includeGuard)

    -- Add endif statement
    includeProtection = includeProtection .. string.format("#endif /* %s */\n", includeGuard)

    -- Open the file in write mode, overwrite existing content
    local file = io.open(filename, "w")

    if file then
        -- Write the include protection to the file
        file:write(includeProtection)

        -- Close the file
        file:close()

        print("Include protection written to file:", filename)
    else
        print("Error: Unable to open file for writing:", filename)
    end
end

-- Example usage
-- Replace "example_header_file.h" with the actual filename when calling the function
-- generateAndWriteIncludeProtection("example_header_file.h")

