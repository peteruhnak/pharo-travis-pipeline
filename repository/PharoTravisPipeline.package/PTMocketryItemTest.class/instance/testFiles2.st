tests
testFiles2
	| root file1 file2 |
	(root := FileSystem memory / 'memDir') ensureCreateDirectory.
	file1 := root / 'one.txt'.
	file2 := root / 'two.txt'.
	file1 ensureCreateDirectory.
	file2 ensureCreateFile.
	item stub directory willReturn: root.
	self assert: item files equals: {file2}