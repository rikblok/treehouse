+++
date = '2020-02-29T16:34:42-08:00'
title = "Conway's Game of Life (2020)"
type = "section"
weight = -20200229
summary = "This NetLogo model implements Conway's Game of Life, a cellular automaton John Horton Conway designed to be difficult to anticipate the dynamics of starting patterns.  This implementation incorporates some ideas I focused on in my research: finite-size effects and asynchronous updating."
bibFile = "bib-zotero-better-cson.json"
+++

A [NetLogo] {{< cite "wilenskyNetLogo1999" >}} model by Rik Blok.

This [NetLogo] model implements [Conway's Game of Life](http://en.wikipedia.org/wiki/Conway%27s%20Game%20of%20Life), a [cellular automaton](http://en.wikipedia.org/wiki/cellular%20automata) [John Horton Conway](http://en.wikipedia.org/wiki/John%20Horton%20Conway) designed to be difficult to anticipate the dynamics of starting patterns.  This implementation incorporates some ideas I focused on in my research: finite-size effects {{< cite "blokEffect1997" >}} and asynchronous updating {{< cite "blokSynchronous1999" >}}.


<p align="center"><iframe title="" src="http://netlogoweb.org/web?https://raw.githubusercontent.com/rikblok/NetLogo-models/master/life-web.nlogo" style="width:769px; height:990px"></iframe></p>


## How it works

Each site on the square 2-dimensional lattice can be in one of two states (_alive_ or _dead_).  All sites are updated in parallel according to the following rules: 

  * Loneliness: An _alive_ site with less than two of its 8 nearest neighbours also _alive_ becomes _dead_;
  * Overcrowding: An _alive_ site with more than three _alive_ neighbours becomes _dead_; and
  * Birth: A _dead_ site with exactly three _alive_ neighbours becomes _alive_.

Otherwise, sites remain in the same state.

In this implementation, _alive_ sites are shown in bright yellow.  _Dead_ sites fade to black.

## How to use it

Choose **world-size** and **initial-density** of _alive_ sites and press **setup** to create a random starting configuration.  You may also press **draw** to draw your own starting configuration with the mouse.

Press **go** to repeatedly apply the rules and watch the configuration evolve.  Adjust the **speed slider** at the top as desired.  You may also **draw** while the simulation is going.

You may adjust the **synchronicity** of the simulation -- the fraction of sites that are updated on each iteration.  When **synchronicity**=100% we have Conway's original Game of Life.  As **synchronicity** is reduced some sites are skipped in each step, so the dynamics start to deviate from Conway's.  As **synchronicity** approaches 0% most sites are not updated in any one iteration, and the simulation approaches asynchrony -- almost the same as one site updating at a time.  Notice how the patterns differ as **synchronicity** varies.

To perturb a configuration -- by toggling one site -- press **bump**.  You may want to do this once the dynamics have settled to a stable (or simply repeating) pattern.  Some bumps will have little effect but occasionally they will cascade through the whole space, changing the entire system.  It is difficult to predict the size of the cascade.

## Things to notice

Since there are a fixed, finite number _N_ of sites there are only a finite number of possible configurations (2^_N_) and the configuration must necessarily repeat as it evolves.  In principle the period between repeating configurations could be anything up to 2^_N_ but in practice it is much shorter: typically 1 or 2.  A notable exception can occur when **synchronicity**=100% and a [glider](https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life#Examples_of_patterns) is present -- rarely a glider may travel around the entire length of the space and return to its original position.

## Things to try

### Draw

Try drawing your own starting configuration.  Set the **initial-density**=0% and press **setup** to set all sites to _dead_.  Press the **draw** button to activate drawing mode, then use the mouse to draw a shape, such as the [R-pentomino](https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life#Examples_of_patterns).

### Boundary conditions

This implementation defaults to _periodic_ boundary conditions: the left side can be thought of as wrapping around to touch the right and the top touches the bottom.  In the native version of NetLogo (not the applet) you can switch to _cold_ boundaries where any sites outside of the visible area are assumed to be _dead_ -- press **Settings...** at the top-right of the interface and toggle the **World wraps...** checkboxes.  Notice that periodic boundaries reduce edge effects {{< cite "blokEffect1997" >}}.

## References

{{< bibliography cited >}}


[NetLogo]: http://ccl.northwestern.edu/netlogo/


