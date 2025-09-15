
function add_file(table,filepath)
   local path = dtw.newPath(filepath)
   local extension = path.get_extension()
   print("Joining file: " .. filepath, " with extension: " .. extension)
   local content = "- file:".. filepath .. "\n"
    content = content .. "~~~" .. extension .. "\n"

    content = content .. dtw.load_file(filepath)
     content = content .. "\n~~~\n"
    
    table[#table + 1] = content
end 

local entries_size = argv.get_flag_size({ "entries","e" })
if entries_size == 0 then
    print("No entries provided. Use --entries to specify files or directories.")
    return
end
local output_file = argv.get_flag_arg_by_index({ "output" ,"o"},1)
if not output_file then
    print("No output file specified. Use --output to specify the output file.")
    return
end
local content = {}
for i = 1,entries_size do
    local entry = argv.get_flag_arg_by_index({ "entries" }, i)

    if dtw.isfile(entry) then
        add_file(content, entry)
    end
    if dtw.isdir(entry) then
        local files = dtw.list_files_recursively(entry,true)
        for j = 1,#files do
            add_file(content, files[j])
        end
    end
end 


local final_content = table.concat(content, "\n\n")
dtw.write_file(output_file, final_content)