### Assignment Topic: Data analysis of a laboratory experiment on trust

### Background:
We upload data files from laboratory experiments conducted at the University of Michigan.

Subjects are grouped in pairs, paired with one assigned the role of an investor and another a recipient.

    - The investor holds a set amount of money and can choose to give any fraction of that amount to the recipient – or none.

    - The amount given is multiplied by a set amount and the recipient can choose to give any fraction of the multiplied amount back to the investor – or none.

The data given was collected from an experiment involving the Trust Game and it contains decisions from the “investors” and “recipients.”

### Data:
The Trust Game data has the following variables:
   - Period: period which the game was held
   - group #: pair the player was in
   - player #: order or role the player had
   - player role: first if investor, second if recipient
   - decision type: INVEST if investor, RETURN if recipient
   - decision: amount invested or returned
   - payoff: if investor - amount kept + amount returned, if recipient - (3 * amount received) - amount returned
