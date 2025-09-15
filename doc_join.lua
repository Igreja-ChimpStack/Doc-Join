
function add_file(table,filepath)
   local path = dtw.newPath(filepath)
   local extension = path.get_extension()
   print("Joining file: " .. filepath, " with extension: " .. extension)
   table[#table + 1] = { path = path, extension = extension }
end

local entries_size = argv.get_flag_size({ "entries" })
local entries = argv.get_flag_arg_by_index({ "entries" }, index)
local content = {}
for i = 1,entries_size do
     if dtw.isfile(entries[i]) then
            add_file(content, entries[i])
     end
     if dtw.isdir(entries[i]) then
          local files = dtw.list_files_recursively(entries[i])
            for j = 1,#files do
                add_file(content, files[j])
            end
     end
end 