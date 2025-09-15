
function add_file(table,filepath)
   local path = dtw.newPath(filepath)
   local extension = path.get_extension()
   print("Joining file: " .. filepath, " with extension: " .. extension)
   table[#table + 1] = { path = path, extension = extension }
end

local entries_size = argv.get_flag_size({ "entries" })
if entries_size == 0 then
    print("No entries provided. Use --entries to specify files or directories.")
    return
end

local content = {}
for i = 1,entries_size do
    local entry = argv.get_flag_arg_by_index({ "entries" }, i)

    if dtw.isfile(entry) then
        add_file(content, entry)
    end
    if dtw.isdir(entry) then
        local files = dtw.list_files_recursively(entry)
        for j = 1,#files do
            add_file(content, files[j])
        end
    end
end 