# designADatabase
CORE - In this project, my team was responsible for creating a database to maintain core identity information on all entries, however, the database also maintains the ability to build a core identity when information on a target is sparse. 

INPUT - The database will be able to handle data farmed from social media platforms like Fakebook, Twitter, Instagram, etc. 

OUTPUT - The database will also be able to handle a variety of products, services or opinions for which preferences can be tracked for each person in the database based on analyzing their data. 

# ERD
The preliminary design of my team's database.

[![erd.png](https://i.postimg.cc/rmFrjfTW/erd.png)](https://postimg.cc/Lqw56Bn6)

# Data Loading Script
Initial data used to test our design.

[![loadData.png](https://i.postimg.cc/VvJbQ5dk/loadData.png)](https://postimg.cc/fShbYzcG)

# Lookup Table Scripts
These tables allow database administrator to look up data based on specific topics of interest.

Gender:

[![genderLU.png](https://i.postimg.cc/FsJJTfMP/genderLU.png)](https://postimg.cc/PPTxxqrZ)

Mate Preference:

[![matepref-LU.png](https://i.postimg.cc/V66Jn59W/matepref-LU.png)](https://postimg.cc/rdByLVPD)

Political Affiliation and Intensity:

[![politics-LU.png](https://i.postimg.cc/cHbrmZXy/politics-LU.png)](https://postimg.cc/dkGssbb4)

Religious Affiliation and Intensity:

[![religious-LU.png](https://i.postimg.cc/kDrG0c0T/religious-LU.png)](https://postimg.cc/wRV9JhTN)

Social Issues and Intensity

[![socialissue-LU.png](https://i.postimg.cc/ryDJLp64/socialissue-LU.png)](https://postimg.cc/PNkZWT5f)

# Change Table & Change Trigger Scripts
A change table to track changes and a change trigger watching for changes.

Change Table:

[![change-Table.png](https://i.postimg.cc/pLHY8YmQ/change-Table.png)](https://postimg.cc/jLM7YfQC)

Change Trigger:

[![change-Trigger.png](https://i.postimg.cc/q7m89PjQ/change-Trigger.png)](https://postimg.cc/FfLdSBtJ)
