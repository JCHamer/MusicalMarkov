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

totals = [0]*49
for prevPrevPitch in pitches:
	for prevPitch in pitches:
		for currPitch in pitches:
			occur = notes.count(prevPrevPitch + prevPitch + currPitch)
			totals[(pitchDict[prevPrevPitch] - 1)*7 + (pitchDict[prevPitch] - 1)] += occur
			print("A(%i,%i,%i) = %i/%sx; %%%s %s %s" % (pitchDict[currPitch], pitchDict[prevPitch], pitchDict[prevPrevPitch], occur, str(pitchDict[prevPrevPitch]) + str(pitchDict[prevPitch]),  str(prevPrevPitch), str(prevPitch), str(currPitch)))


for num in range(7):
	for num2 in range(7):
		print("%i%i: %i" %(1 + num, 1 + num2, totals[num*7 + num2]))

print

totals = [0]*16
for prevPrevDur in durations:
	for prevDur in durations:
		for currDur in durations:
			occur = durs.count(prevPrevDur + prevDur + currDur)
			totals[(durDict[prevPrevDur] - 1)*4 + (durDict[prevDur] - 1)] += occur
			print("A(%i,%i,%i) = %i/%sx; %%%s %s %s" % (durDict[currDur], durDict[prevDur], durDict[prevPrevDur], occur, str(durDict[prevPrevDur]) + str(durDict[prevDur]),  str(prevPrevDur), str(prevDur), str(currDur)))

for num in range(4):
	for num2 in range(4):
		print("%i%i: %i" %(1 + num, 1 + num2, totals[num*4 + num2]))

