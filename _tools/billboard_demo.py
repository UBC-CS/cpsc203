# This is a copy of the solution for A_demo.py from the Class 5A workspace.

import pandas as pd
import billboard

# We will write some code to get the billboard 100 for last week using the billboard.py package

chart = billboard.ChartData('hot-100','2024-02-06')
# print(chart) # messy but complete!

song = chart[0]
print(song.title)

# didn't work! Why?
# Hint: look at what song is/was
for i in range(len(chart)):
    print(song.artist)

# Print out only the chart artists!
for song in chart:
    print(song.artist)
    
# Task: Create a list of dictionaries
#       with each dictionary being one song
#       The attributes we want are:
#       title, artist, peakPos, lastPost, weeks, rank, isNew

chart_songs = []

for song in chart:
    testdict = {}

    testdict['title'] = song.title
    testdict['artist'] = song.artist
    testdict['peakPos'] = song.peakPos
    testdict['lastPos'] = song.lastPos
    testdict['weeks'] = song.weeks
    testdict['rank'] = song.rank
    testdict['isNew'] = song.isNew
    
    chart_songs.append(testdict)
    
print(type(chart_songs),len(chart_songs)) # it works!
    
# Task: Convert list of dictionaries to a dataframe

df = pd.DataFrame(chart_songs)

print(type(df),len(df)) # Good! It's a dataframe!

print(df)

# filtering examples
# print only rows where weeks < 10

print(df[df['weeks']<10])

# Task: Export to CSV
df.to_csv('top100.csv')

# Remove the index column
df.to_csv('top100.csv', index=None)
