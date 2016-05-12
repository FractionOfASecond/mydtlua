dt = require "darktable"
-- dt.database.import("/home/denever/photos/Barcellona")

local function whole_mem_import(event, shortcut)
dt.print("Hello, I just received '"..event..
       "' with parameter '"..shortcut.."'")
end

local function on_import_base_style(event, image)
print("Event"..event)
print("Image"..image.filename)
end

dt.register_event("shortcut", whole_mem_import, "Import whole memory")
dt.register_event("post-import-image", on_import_base_style, "On image Import")
