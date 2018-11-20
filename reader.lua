print("Input command: ")
text = io.read()
if text=="mkfile" then
	print("What would you like to name your file?")
	name = io.read()
	print("What type of file should this be?")
	filetype = io.read()
	print("What shall be the content of this file?")
	content = io.read()
	file = name..filetype
	print("Name of file is "..file.."  with the content of  "..content.."\n Is this correct? (y/n)")
	answer = io.read()
	if answer == "y" then
		print("creating file...")
		io.open (file, "w")
		io.output(file)
		io.write(content)
	end
elseif text=="apfile" then
	print("What file would you like to append?")
	file = io.read()
	print("What would you like to append this file with?")
	content = io.read()
	io.open(file, "a")
	io.output(file)
	io.write(content)
else
	print(" => Could not find command")
	text = "quit"
end
