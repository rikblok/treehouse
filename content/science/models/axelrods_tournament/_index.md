+++
date = '2018-11-07T16:34:42-08:00'
title = "Axelrod's tournament (2018)"
type = "section"
weight = -20181107
summary = """In the early 1980s Robert Axelrod invited colleagues to submit strategies to a series of round-robin tournaments to see which strategies would do well playing an iterated Prisoner's Dilemma.  This NetLogo model allows you to try Axelrod's tournaments yourself by creating some strategies and testing them in an iterated Prisoner's Dilemma."""
bibFile = "bib-zotero-better-cson.json"
+++

A [NetLogo] {{< cite "wilenskyNetLogo1999" >}} model by Rik Blok.

In the early 1980s [Robert Axelrod](https://en.wikipedia.org/wiki/Robert%20Axelrod) invited colleagues to submit strategies to a series of round-robin tournaments {{< cite "axelrodEvolution1981" >}} to see which strategies would do well playing an [iterated Prisoner's Dilemma](https://en.wikipedia.org/wiki/Prisoner%2527s_dilemma#The_iterated_prisoner.27s_dilemma).  This [NetLogo] model allows you to try [Axelrod's tournaments](https://en.wikipedia.org/wiki/The_Evolution_of_Cooperation#Axelrod.27s_tournaments) yourself by creating some strategies and testing them in an iterated Prisoner's Dilemma.


<p align="center"><iframe title="" src="http://netlogoweb.org/web?https://raw.githubusercontent.com/rikblok/NetLogo-models/master/axelrod-tournament.nlogo" style="width:762px; height:804px"></iframe></p>


How can cooperation arise and persist when there is a temptation to "defect" from cooperation for personal gain? [Cooperation](https://en.wikipedia.org/wiki/Cooperation) is a well-studied problem in economics, social sciences, and evolution.

Let's construct a simple scenario to highlight the problem.  Consider an interaction between two individuals where each player can, at a cost $c>0$ to themselves, confer a benefit $b>c$ to the other player:

* If I cooperate I pay a cost $c$ and
* If you cooperate I receive a benefit $b$.

If you and I are playing this [Prisoner's Dilemma](https://en.wikipedia.org/wiki/Prisoner%27s_dilemma) game what should we choose?  Clearly it would be best for both of us if we could **cooperate** so we each earn a net amount of $b-c>0$.  But it would be even better for me if I didn't pay the cost $c$.  If we both try to gain the highest payoff by avoiding the cost then we will get nothing (because nobody generated the benefit).  Cooperation is undermined because _no matter what you choose_, _I_ always feel the temptation to **defect** and avoid paying the cost -- it is difficult for cooperation to arise and persist in this game.

Repetition was proposed as a solution to this dilemma: perhaps if the players repeated the interaction many times, the prospect of reciprocal cooperation in the future would encourage players to cooperate now.

In each round a player can choose to **cooperate** or **defect** but their choice may depend on many details, such as what they and/or the other player did in the past.  For example, I would like to receive the benefit $b$ from you in every round.  If I received it in the prior round I might repeat the same choice (don't make any changes if things are going well, or "win-stay") but if I didn't I might choose the other option (switch if things are going poorly, or "lose-switch").  This well-known strategy is called Pavlov, or [win-stay, lose-switch](https://en.wikipedia.org/wiki/Win%E2%80%93stay,_lose%E2%80%93switch).  If both players use the Pavlov strategy and cooperate in the first round, they will continue to cooperate for all rounds, doing much better than strategies that mutually fall for the temptation to defect.  (But Pavlov is not guaranteed to perform well when playing against these strategies.)

In the early 1980s [Robert Axelrod](https://en.wikipedia.org/wiki/Robert_Axelrod) invited colleagues to submit strategies to a series of round-robin tournaments {{< cite "axelrodEvolution1981" >}} to see which strategies would do well playing an [iterated Prisoner's Dilemma](https://en.wikipedia.org/wiki/Prisoner%27s_dilemma#The_iterated_prisoner.27s_dilemma).  This [NetLogo] model allows you to try [Axelrod's tournaments](https://en.wikipedia.org/wiki/The_Evolution_of_Cooperation#Axelrod.27s_tournaments) yourself by creating some strategies and testing them in an iterated Prisoner's Dilemma.


## 1 How it works


### 1.1 go

The [go] button starts a [round-robin tournament](https://en.wikipedia.org/wiki/Round-robin_tournament) where all strategies are paired with each other to play the Prisoner's Dilemma for a specified number of rounds.  The average score for each player is shown beside their name.  At the end of the tournament all players' average scores are shown in the output window.


### 1.2 Memory-one strategies

In Axelrod's tournament game theorists were invited to submit any strategies that could be encoded as computer programs.  The programs had as input the entire history of the interaction so far and would respond with a choice to **cooperate** or **defect** in the next round {{< cite "axelrodMore1980" >}}.  That's far beyond the scope of this simulation.

Instead, each strategy consists of a set of five numbers, representing the probability of cooperating in the next round given what occured only in the previous round:

* **C_on_1st** = probability that I **cooperate** in the first round.
* **C_after_CC** = probability that I **cooperate** after _we both cooperated_ in the previous round.
* **C_after_CD** = probability that I **cooperate** after _I cooperated_ and _you defected_ in the previous round.
* **C_after_DC** = probability that I **cooperate** after _I defected_ and _you cooperated_ in the previous round.
* **C_after_DD** = probability that I **cooperate** after _we both defected_ in the previous round.

Even though this severely limits the available strategies, it is still possible to create some well-known strategies:

* AllC = (100%, 100%, 100%, 100%, 100%).  Always cooperates.
* AllD = ( 0%, 0%, 0%, 0%, 0%).  Always defects.
* [Tit-for-tat](https://en.wikipedia.org/wiki/Tit_for_tat#In_game_theory) = (100%, 100%, 0%, 100%, 0%).  Cooperates on first round.  After that, repeats other player's last choice.
* [Pavlov](https://en.wikipedia.org/wiki/Win%E2%80%93stay,_lose%E2%80%93switch) = (100%, 100%, 0%, 0%, 100%).  Cooperates on first round.  After that, repeats last move if received _b_, otherwise switches.
* [Grim](https://en.wikipedia.org/wiki/Grim_trigger) = (100%, 100%, 0%, 0%, 0%).  Cooperates on first round.  After that, keeps cooperating until anybody defects.  Then defects for rest of game.

Click [presets] to explore other interesting strategies.


### 1.3 evolve

The [evolve] button allows the user to explore how the population of strategies evolves over many tournaments.  Between each tournament a new generation of strategies is created by sampling the current generation.  The probability of each strategy reproducing into the next generation is proportional to how much better its score is than the lowest-scoring player in the population.  The lowest-scoring player therefore has zero probability of reproducing.


## 2 How to use it

### 2.1 Adding players

To run a tournament you first need to add some players (also called strategies).  You can add your own by choosing slider values and (optionally) giving the strategy a name, then clicking the [add-players] button.  (You can add duplicates of a strategy by adjusting the [how-many] slider before clicking [add-players].)

Alternatively, you can click the [random-players] button to add one (or [how-many]) randomly-chosen strategies.

You can also click the [presets] button at the bottom to add a bunch of pre-defined strategies.  Most of these were submitted by students in the UBC course [ISCI 344 Game Theory](/~rikblok/teaching/past/isci344/index.html).


### 2.2 Running a tournament

#### 2.2.1 go

Once you've got a pool of players you can run a round-robin tournament between them by clicking the [go] button.  Choose the following parameters:

* **number-of-rounds**: The number of repetitions (rounds) of the game played between each pair of players.
* **cost-to-self**: The cost each player pays for choosing to cooperate.
* **benefit-to-other**: The benefit received if the other player chooses to cooperate.  When the benefit is more than the cost there is an incentive to choose mutual cooperation, but a temptation to defect -- a Prisoner's Dilemma.
* **play-self**: Toggle on to have each player also play against themselves in the tournament.  They are actually playing against a mirror image -- their opponent makes exactly the same choices as they do (even duplicating any errors).
* **errors**: The chance of making an implementation error with any choice.  With implementation errors players perceive the conditions (eg. what happened in the last round) correctly and determine their response correctly according to their strategy, but they accidentally select the option opposite to what they intended.  Set this to zero for perfect fidelity (players always successfully make the choice they intended).  **errors** also sets the mutation rate under [evolve] (see the next section).

At the end of the tournament all the player scores and level of cooperation (fraction of times they cooperated) are shown.


#### 2.2.2 inspect-players

You can view the score and other details of any of the players.  Press the [inspect-players] button to enable this functionality.  Then hover over any player to see their attributes including their name, strategy (five percentages), average frequency of cooperation, and average score so far.

Inspecting a player also populates the "Players:" view (name and strategy sliders) so you can easily remove this player or add more of the same.  (Hint: You can stop [inspect-players] so that the current player remains in the view by clicking on the player.)


#### 2.2.3 evolve

In addition to running the tournament once and seeing the scores, it is possible to run it repeatedly, and select for the highest scoring strategies.  Each generation, the players are selected to form the next generation with likelihood [proportional to their fitness](https://en.wikipedia.org/wiki/Fitness_proportionate_selection) where
> _my-fitness = my-average-score - lowest average-score_

so that the minimum probability of selection is never negative.  The lowest scoring strategies will have zero fitness and be removed from the population.

The population size is conserved across generations.  Since lower-fitness strategies are less likely to be copied into the next generation this evolutionary process selects for higher fitness strategies.

As strategies are copied into the next generation, replication errors (_mutations_) are possible.  The [errors] slider gives the likelihood that a child will have a mutation from its parent.  If a mutation occurs, one of the five probabilities is replaced with a random value.


### 2.3 Removing players

You can remove players at any time by entering their name in the [Name] box and clicking [remove-name].  Note that this removes _all_ players with that name.

You can also remove the player with the lowest average score with the [remove-worst] button.


## 3 Things to notice


### 3.1 Errors

Notice that it is possible to introduce _implementation errors_ into the game: a strategy may intend to **cooperate** or **defect** but erroneously choose the other option.  The error rate (per choice) is given by the **errors** slider.

The **errors** slider also allows reproduction errors, or mutations.  In this case the value gives the mutation rate per child.  If a mutation occurs one of the five variables representing the strategy is replaced with a random value.


### 3.2 Fixed number of rounds

Axelrod set up his tournament so each game between two players had an uncertain duration {{< cite "axelrodMore1980" >}}.  That prevented strategies from being conditioned on how many rounds remained.  (It's always best to **defect** in the last round.  But if I know that, I should also **defect** in the second-to-last round...)  That's not an issue in this simulation because memory-one strategies aren't sophisticated enough to condition their response on the number of remaining rounds.  So this tournament allows a certain, fixed number of rounds.


### 3.3 Fitness landscape

You may be surprised to see the average score (or _fitness_) drop as the population evolves.  Evolution is often thought of as climbing a [fitness landscape](https://en.wikipedia.org/wiki/Fitness_landscape).  That makes sense when the fitness is unchanging.  But in this model the fitness of each strategy depends strictly on the other strategies in the population.  As the population composition changes the fitness of the population may decline.  Nevertheless, the most successful within that population will tend to reproduce more frequently.  Counterintuitively, in this way it is possible for the system to evolve to low fitness.  It is akin to climbing a hill that collapses as it is being climbed.


## 4 Things to try

What do you expect to happen if the error rate is set to 50%?  (Hint: For each of the five memory-one conditions, what is the probability any player will choose erroneously?)  Check if you're right!


## 5 References

{{< bibliography cited >}}


[NetLogo]: http://ccl.northwestern.edu/netlogo/

