-- open a pdf file and print it's contents
--
-- Make rules for parsing the files.
--

require("zlib")

FILE_NAME = arg[1]

function read_file(name)
	return io.open(name, "r")
end

function parse_line(line)
	assert(type(line) == "string")
end

function parse_file(f)
	if f ~= nil then
		for line in f:lines() do
			parse_line(line)
		end
	else
		print("Check the file name")
	end
end

local f = read_file(FILE_NAME)
parse_file(f)
