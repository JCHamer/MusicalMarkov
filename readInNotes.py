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
durations = "4816"
durDict = {'4' : 1, '8' : 2, '1' : 3, '6' : 4}

totals = [0]*7
for prevPitch in pitches:
	for currPitch in pitches:
		occur = notes.count(prevPitch + currPitch)
		totals[pitchDict[prevPitch] - 1] += occur
		print("A(%i,%i) = %i/xx; %%%s %s" % (pitchDict[currPitch], pitchDict[prevPitch], occur, str(prevPitch), str(currPitch)))

for total in totals:
	print(total)

print

totals = [0]*4
for prevDur in durations:
	for currDur in durations:
		occur = durs.count(prevDur + currDur)
		totals[durDict[prevDur] - 1] += occur
		print("A(%i,%i) = %i/xx; %%%s %s" % (durDict[currDur], durDict[prevDur], occur, str(prevDur), str(currDur)))

for total in totals:
	print(total)

