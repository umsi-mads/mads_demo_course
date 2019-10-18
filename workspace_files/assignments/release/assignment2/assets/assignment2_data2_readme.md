### Assignment Topic: Data analysis of a laboratory experiment on first-price auction

### Background:
We upload data files from a laboratory experiment conducted at the University of Michigan.

There are ten experimental sessions, with eight subjects per session. In this context, subjects are tasked with completing auction and lottery (Holt-Laury 2002) tasks in two orders.

   - In five of the ten sessions, subjects first complete a lottery task, followed by 30 rounds of auctions.
   - In the other five sessions, subjects first complete 30 rounds of auctions, followed by a lottery task.

At the end of each session, subjects complete a demographics survey.

### Data:

The data has the following variables:
   - treatment: the treatment received by the subject
   - session: the session in which the data was collected in the experiment
   - period: the period in the session (multiple periods per session)
   - subject: unique identifier for each subject
   - disttype: distribution type, high or low
   - highdist: if the subjects' values are from the high distribution type
   - lowdist: if the subjects' values are from the low distribution type
   - group: group number
   - v: value of the subjects' object
   - b: how much the subjects bid for the object
   - highbid: the highest bid in the group
   - lowbid: the lowest bid in the group
   - buy: whether subjects win the auction
   - buy_yes: if subjects win the auction
   - buy_no: if subjects do not win the auction
   - profit: profit for the period
   - cumprof: accumulated profit from the first period
   - timeb: time the bid is submitted
   - new: new data indicator
   - lottery_profit: profit from the Holt-Laury lottery
   - choice1-10: choosing lottery A results in a value of 1 choosing lottery B results in a value of 2
   - error: if subjects do not follow the pattern that they switch from lottery A to B and continue to choose B
   - ra: risk-attitude
   - ra_adj: censored risk-attitude
   - ra1-5: if ra_adj=4, ra1=1 ... if ra_adj=8, ra5=1
   - pclab: PC lab number
   - gender: gender
   - male: male
   - female: female
   - ethnic: ethnicity
   - white, asian, african, hispanic, native, other: 1 if category applies
   - age: age
   - siblings: number of siblings
   - personality: optimistic, pessimistic, or neither
   - optim, pessim, neither: 1 if applies
   - emotions: emotions
   - anger, anxiety, confusion, contentment, fatigue, happiness, irritation, moodswings, withdrawal: 1 if applies
   - major: major field type
   - sdmajor: self-declared major
   - major1: math or statistics major
   - major2: science or engineering major
   - major3: economics or business major
   - major4: other soc. science major
   - major5: humanities or other major
