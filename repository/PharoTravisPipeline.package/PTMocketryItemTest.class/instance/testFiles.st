tests
testFiles
	| root file1 file2 |
	(root := FileSystem memory / 'memDir') ensureCreateDirectory.
	file1 := root / 'one.txt'.
	file2 := root / 'two.txt'.
	file1 ensureCreateFile.
	file2 ensureCreateFile.
	item stub directory willReturn: root.
	self
		assert: item files
		equals:
			{file1.
			file2}