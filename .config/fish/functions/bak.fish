function bak --description 'Creates a .bak copy'
	for file in $argv
cp $file $file.bak
end
end
