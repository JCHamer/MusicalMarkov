#nextNote = raw_input('>')
#notes = nextNote
#nextNote = raw_input('>')
#
#while nextNote != 'q':
#	notes += nextNote
#	nextNote = raw_input('>')
#
#print(notes)

#Values taken from Yankee Doodle
notes = "gccdecedgccdecbgccdefedcbgabccabagabcgagfegabagabcagcbdcc"
durs = "888888888888884888888888888848168888416884416888888888848"

pitches = "abcdefg"
pitchDict = {'a' : 1, 'b' : 2, 'c' : 3, 'd' : 4, 'e' : 5, 'f' : 6, 'g' : 7}
total = 0

for prevPitch in pitches:
	for currPitch in pitches:
		occur = notes.count(prevPitch + currPitch)
		total += occur
		print("A(%i,%i) = %i/xx; %%%s %s" % (pitchDict[currPitch], pitchDict[prevPitch], occur, str(prevPitch), str(currPitch)))

print(total)
