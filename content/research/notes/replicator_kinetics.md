+++
date = '2025-02-04T11:30:01-08:00'
draft = false
title = 'Replicator Kinetics (2013)'
summary = 'Here I explore several possible systems of reactions that yield evolutionary dynamics consistent with the replicator equation.  They are also useful for studying finite, structured populations.'
weight = -20130712
bibFile = "bib-zotero-better-cson.json"
+++
<!-- Must include "bib" in filename: https://labs.loupbrun.ca/hugo-cite/usage/ -->

## Deriving the replicator equation from birth-death processes

<!-- 
{{< cite "blokReplicator2013" >}}
 -->
{{< bibliography cited >}}


Version 1
 --- Rik Blok, 2013-07-12
 
 
### Abstract

I've long felt that reaction kinetics, a formalism for describing agent-based models, would fit naturally with evolutionary game theory, but I've had trouble seeing the connections.  Here I explore several possible systems of reactions that yield evolutionary dynamics consistent with the replicator equation.  They are also useful for studying finite, structured populations.  Some of these approaches also exhibit plausible ecological dynamics in the absence of selection.


### 1 Introduction

Evolutionary game theory uses the [replicator equation](https://en.wikipedia.org/wiki/replicator%20equation) to formalize the dynamics of selected heritable traits in a population.  It is frequently used to predict the [evolutionarily stable state](https://en.wikipedia.org/wiki/evolutionarily%20stable%20state) of an infinite, well-mixed population.  Often it is interesting to study cases where the population is finite or not well-mixed, where the replicator equation isn't suitable.  Such a case is better suited to an [agent-based model](https://en.wikipedia.org/wiki/agent-based%20model) where each individual in a population is explicitly accounted.  

There are a variety of approaches to agent-based modeling but I am keen on [reaction kinetics](https://en.wikipedia.org/wiki/reaction%20kinetics) because it is simple to understand, easy to apply, and behaves predictably in the limit of a large, well-mixed population.  Also, the underlying mechanisms have clear interpretations if the reactions are [elementary](https://en.wikipedia.org/wiki/elementary%20reaction).  

It would be useful to have a reaction-kinetic framework for game theory and the replicator equation.  It could complement [other agent-based formalisms](https://en.wikipedia.org/wiki/Moran%20process) for studying finite, structured populations.  Below I will show a reaction kinetics approach to game theory that captures some important properties of the replicator equation.

I have three goals:

1. Selection should act in a [replicator equation](https://en.wikipedia.org/wiki/replicator%20equation)-like manner, with the same behaviour at least up to a time-rescaling,
1. In the absence of selection, the density should obey the [logistic equation](https://en.wikipedia.org/wiki/Logistic_function#Logistic_differential_equation), and
1. The reactions should be simple, preferably [elementary](https://en.wikipedia.org/wiki/elementary%20reaction).

In the following sections we will explore several ways to define birth-death reactions, analyzing them to see how well they meet the above goals.  

  * [Select births, ecological deaths](#2-select-births-ecological-deaths)
  * [Replacement](#3-replacement)
  * [Select deaths, ecological births](#4-select-deaths-ecological-births)
  * [Select births with a separate game](#5-select-births-with-a-separate-game)
  * [Select births into available "holes"](#6-select-births-into-available-holes)

I use the term "select" to indicate processes that select for traits (differential fitness) and "ecological" to mean processes that affect all individuals equally, independent of their type.

### 2 Select births, ecological deaths

Consider a population of heritable types where an individual of type \(i\), \(X_i\), acquires a *payoff* \(P_{ij}\) against \(X_j\) in pairwise interactions.  Further assume that an individual's birthrate is determined by its payoff.  Conversely, the deathrate depends only on the total population density, $n$:
\begin{eqnarray}
X_i + X_j & \xrightarrow{P_{ij}} & 2 X_i + X_j   & \text{(birth)} \cr
X_i       & \xrightarrow{\delta(n)} & \emptyset. & \text{(death)} 
\end{eqnarray}
The birth process performs evolutionary selection, while the death process is purely ecological (because it drives population density but not frequency of types, on average).  The deathrate could be any non-negative function (even $\delta(n)=0$ leaving only the birth process and a geometrically increasing population).


#### 2.1 Rate equations

These two processes can be applied to simulate a finite population, or analyzed in the limit of an infinite, well-mixed population.  Then we find the dynamics are very similar to the replicator equation and reproduce some important properties thereof.  The [Law of mass action](https://en.wikipedia.org/wiki/Law%20of%20mass%20action) allows to compute the rate equation for the density \(x_i=[X_i]\) of type \(i\):
\begin{equation}
  \frac{dx_i}{dt} = x_i \left( \sum_j P_{ij} x_j - \delta(n) \right)
\end{equation}
where the total population density is \(n\equiv \sum_k x_k\) and follows
\begin{equation}
  \frac{dn}{dt} = \sum_k \frac{dx_k}{dt} = \sum_{jk} P_{kj} x_j x_k - n \delta(n).
\end{equation}


#### 2.2 Fitness

Let $y_i=x_i/n$ be the frequency of type $i$.  We define its fitness

{{< equation number="2.1" >}}
\begin{equation}
  f_i\equiv \sum_j P_{ij} y_j
\end{equation}
{{< /equation >}}

as its per-capita average birthrate and the mean fitness

{{< equation number="2.2" >}}
\begin{equation}
  \bar{f} \equiv \sum_k f_k y_k
\end{equation}
{{< /equation >}}

is the overall population per-capita average birthrate.

Then the frequency of type $i$ obeys
{{< equation number="2.3" >}}
\begin{eqnarray}
  \frac{dy_i}{dt} & = & \frac{1}{n} \left[ \frac{dx_i}{dt} - y_i \frac{dn}{dt} \right] \cr
  & = & n \left[ y_i \left( \sum_j P_{ij} y_j - \frac{1}{n} \delta(n) \right) - y_i \left( \sum_{jk} P_{kj} y_j y_k - \frac{1}{n} \delta(n) \right) \right] \cr
  & = & n y_i (f_i - \bar{f}).
\end{eqnarray}
{{< /equation >}}

For comparison, the replicator equation is $dy_i/dt = y_i (f_i - \bar{f})$, differing only by a factor $n$.  So our "replicator kinetics" have exactly the same stability properties as the replicator equation, the only difference is that the rate of evolution varies with the population size.  In particular, the evolutionarily stable state is the same in both frameworks.


#### 2.3 Ecology

In terms of fitness $f$ the density rate equation becomes
\begin{equation}
  \frac{dn}{dt} = n \left(n \bar{f}  - \delta(n) \right)
\end{equation}
where $\bar{f}$ itself varies with the population structure.

In the special case where we neglect selection $P_{ij}\equiv r=\text{constant}$ for all $i,j$ so only ecology pertains, then $\bar{f}=r$ and the ecological dynamics become
\begin{equation}
  \frac{dn}{dt} = r n^2 \left(1 - \frac{n}{K} \right)
\end{equation}
where $K \equiv r n^2 / \delta(n)$.  If $\delta(n) \propto n^2$ then $K$ is a constant carrying capacity.  The dynamics are similar to logistic except the quadratic factor depresses the growth rate when the population is small, a [weak Allee effect](https://en.wikipedia.org/wiki/Allee_effect#Strong_vs._weak_Allee_effects).


#### 2.4 Bounded population

It is not mathematically required that the population be bounded but it may be desired for realism or computational considerations.  It would then be required that the deathrate grows faster than the birthrate with population size, so $\delta \succ n$.  This can be achieved with an elementary reaction such as
\[
  3 X \xrightarrow{\text{constant}} 2 X
\]
or equivalently $\delta(n) \propto n^2$, where $X$ represents an individual of any type.


### 3 Replacement

By coupling births and deaths into a replacement process we can also recover our modified replicator equation (Eq. [2.3](#eq-2-3)) from a single process:
\[
X_i + X_j + X_k \xrightarrow{P_{ij}} 2 X_i + X_j \; \text{ (replacement)} 
\]

\(X_k\) is simply a bystander who may be replaced by a child of \(X_i\), depending on its payoff against \(X_j\).  In this case the population size is fixed so we recover exactly the replicator equation, without a fluctuating rate depending on the population size as in Equation [2.3](#eq-2-3).

### 4 Select deaths, ecological births

We could also design a system with an ecological (non-selective) birth process and a selective death process (that depends on payoffs).  Let $\pi \geq \max_{i,j} P_{ij}$ be a constant.  Then 
\begin{eqnarray}
X_i & \xrightarrow{\beta(n)} & 2 X_i         & \text{(birth)} \cr
X_i + X_j & \xrightarrow{\pi - P_{ij}} & X_j & \text{(death)} 
\end{eqnarray}
where $\beta(n)$ is a birthrate that may depend on the population density but not its composition.  For a stable, finite population it requires that $\beta(n) \prec n$ grows slower than $n$, such as spontaneous birth, $\beta(n) =\text{constant}$.

In this system, a higher payoff reduces the death rate, increasing the survival time.

#### 4.1 Ecology

Let's consider again the dynamics without selection: $P_{ij} = \text{constant} < \pi$ for all $i,j$ so $\bar{f} = \text{constant}$.  Then we can define $K=\beta(n)/(\pi-\bar{f})$ and --- applying Equations [2.1](#eq-2-1), [2.2](#eq-2-2), and [2.3](#eq-2-3) to the rate equations --- we find
\begin{equation}
  \frac{dn}{dt} = \beta(n) n \left(1 - \frac{n}{K} \right).
\end{equation}
If we have a constant birthrate $\beta(n)\equiv r = \text{constant}$ then we exactly recover the logistic equation.


### 5 Select births with a separate game

Is it possible to formulate a system with logistic ecological behaviour but with selection acting on births instead of deaths?  It's tricky because evolutionary game theory requires pairwise interactions but the birth process must be first-order (spontaneous).  To achieve this we need to separate the "game" from the births: Let's introduce pairwise interactions that determine the birthrates of individuals as follows:
\begin{eqnarray}
  Z_{ik} + Z_{jl} & \xrightarrow{\gamma} & Z_{ij} + Z_{jl} & \text{(game)} \cr
  Z_{ij}          & \xrightarrow{P_{ij}} & 2 Z_{ij}        & \text{(birth)} \cr
  Z_{ij}          & \xrightarrow{\delta(n)} & \emptyset.   & \text{(death)} 
\end{eqnarray}
We use $Z$ to denote these individuals because they carry two pieces of information: their own type and the type of their last co-player in the game.  The density of type $i$ (regardless of last co-player) is now $x_i = \sum_j z_{ij}$ and $n = \sum_i x_i$.

In terms of the frequencies $w_{ij} \equiv z_{ij}/n$ and $y_i \equiv x_i/n = \sum_j w_{ij}$, after some work (see [Appendix](#8-appendix)) we find
\begin{equation}
  \frac{dy_i}{dt} = \sum_j P_{ij} w_{ij} - y_i \sum_{kl} P_{kl} w_{kl}.
\end{equation}

If we define the fitness of type $i$
{{< equation number="5.1">}}
\begin{equation}
  f_i\equiv \frac{1}{y_i} \sum_j P_{ij} w_{ij}
\end{equation}
{{< /equation >}}

as its per-capita average birthrate and the mean fitness
\begin{equation}
  \bar{f} \equiv \sum_i f_i y_i = \sum_{ij} P_{ij} w_{ij}
\end{equation}
then we find
{{< equation number="5.2">}}
\begin{eqnarray}
  \frac{dy_i}{dt} & = & y_i ( f_i - \bar{f}) \cr
  \frac{dn}{dt} & = & n (\bar{f} - \delta(n)).
\end{eqnarray}
{{< /equation >}}


#### 5.1 Ecology

Without selection, so  $P_{ij}\equiv r=\text{constant}$ for all $i,j$, we require $\delta(n)=r n/K$ to get the logistic equation

{{< equation number="5.3" >}}
\begin{equation}
  \frac{dn}{dt} = r n \left(1 - \frac{n}{K} \right).
\end{equation}
{{< /equation >}}

To achieve that each individual should compete with all others through a reaction like,
\begin{eqnarray}
  Z_{ik} + Z_{jl} & \xrightarrow{\delta} & Z_{jl}.   & \text{(competitive death)} 
\end{eqnarray}


### 6 Select births into available "holes"

The logistic equation derives from two simple reaction kinetic approaches: $N \rightleftharpoons 2 N$ or with explicit ecological "holes", $H$: $N+H\rightarrow 2 N, N\rightarrow H$.  Here the "holes" serve to limit the population without explicit competition; a successful birth won't occur without a hole for the offspring to occupy.  Since the total population of holes and individuals is conserved, the population is controlled.  The former approach is similar to [Select births, ecological deaths](#2-select-births-ecological-deaths), suggesting that we should also consider the latter.

\begin{eqnarray}
X_i + X_j + H & \xrightarrow{P_{ij}} & 2 X_i + X_j   & \text{(birth)} \cr
X_i       & \xrightarrow{\delta(n)} & H.     & \text{(death)} 
\end{eqnarray}

If the total population, including "holes" is conserved, $K\equiv \sum_l x_l + h$, then the rate equations for this reaction set can be written, substituting $h=K-\sum_l x_l$, as:
\begin{equation}
  \frac{dx_i}{dt} = x_i \left( \left(K - \sum_l x_l\right) \sum_j P_{ij} x_j - \delta(n) \right)
\end{equation}
where the total population density \(n\) follows
\begin{equation}
  \frac{dn}{dt} = \sum_k \frac{dx_k}{dt} = \left(K - \sum_l x_l\right) \sum_{jk} P_{kj} x_j x_k - n \delta(n).
\end{equation}

The rate equation for the frequency comes out more complicated than before but it's still "replicator-like" in the sense that the equilibria and stabilities are the same as the replicator equation:
\begin{equation}
  \frac{dy_i}{dt} = n y_i \left(f_i - \bar{f}\right) \left(K - n \sum_l y_l\right).
\end{equation}


#### 6.1 Discussion

In this section we went back to select births and ecological deaths but separated the "game" (assignment of birthrates) from the birth process.  With a slightly modified fitness function (Equation [5.1](#eq-5-1)) we were able to achieve all of our goals: (1) replicator equation-like frequency dynamics (Equation [5.2](#eq-5-2)), and (2) logistic ecological behaviour (Equation [5.3](#eq-5-3)), with (3) only elementary reactions.

### 7 Summary

We have looked at four different systems of elementary reactions that produce replicator equation-like dynamics (having the same stability properties, only different in the rate of approach).  Two of theses cases also have the pleasing property that they "fall back" to logistic population dynamics in the absence of selection.  A third is logistic with a weak Allee effect.  The last, [Replacement](#3-replacement), is less realistic in that the population size is fixed.

| System | Processes[^1] | Replicator-like? | Ecology[^2] |
|:------:|:-------------:|:----------------:|:-----------:|
| [Select births, ecological deaths](#2-select-births-ecological-deaths) | \begin{eqnarray*} X_i + X_j & \xrightarrow{P_{ij}} & 2 X_i + X_j & \text{(birth)} \cr X_i + 2 X & \xrightarrow{\delta} & 2 X. & \text{(death)} \end{eqnarray*} | Yes | Logistic with weak Allee effect |
| [Replacement](#3-replacement) | $$ X_i + X_j + X_k \xrightarrow{P_{ij}} 2 X_i + X_j $$| Yes | None (constant population size) |
| [Select deaths, ecological births](#4-select-deaths-ecological-births) | \begin{eqnarray*} X_i & \xrightarrow{\beta} & 2 X_i & \text{(birth)} \cr X_i + X_j & \xrightarrow{\pi - P_{ij}} & X_j & \text{(death)} \end{eqnarray*} | Yes |  Logistic |
| [Select births with a separate game](#5-select-births-with-a-separate-game) | \begin{eqnarray*}   Z_{ik} + Z_{jl} & \xrightarrow{\gamma} & Z_{ij} + Z_{jl} & \text{(game)} \cr Z_{ij} & \xrightarrow{P_{ij}} & 2 Z_{ij} & \text{(birth)} \cr Z_{ik} + Z_{jl} & \xrightarrow{\delta} & Z_{jl} & \text{(death)} \end{eqnarray*} | Yes  | Logistic |


[^1]: Reactions written in tems of preferred elementary reactions.  All rates parameters are constant, independent of population density or structure.
[^2]: In the absence of selective pressure, $P_{ij}=\text{constant}$.


Here are some ideas for future consideration:
  * Can this approach be extended to \(N\)-player games (eg. the public goods game)?
  * Is there a general "solution" for a finite population, eg. Fokker-Planck?


### 8 Appendix

#### 8.1 Derivation of rate equation for frequency of type in case of select births with a separate game

In terms of the frequencies $w_{ij} \equiv z_{ij}/n$ and $y_i \equiv x_i/n = \sum_j w_{ij}$
{{< equation number="8.1">}}
\begin{eqnarray}
  \frac{dz_{ij}}{dt} & = & \gamma \sum_{kl} ( z_{ik} z_{jl} - z_{ij} z_{kl} ) + P_{ij} z_{ij} - \delta(n) z_{ij} \cr
  & = & \gamma ( x_i x_j - z_{ij} n ) + (P_{ij} - \delta(n)) z_{ij}.
\end{eqnarray}
{{< /equation >}}

\begin{eqnarray}
  \frac{dw_{ij}}{dt} & = & \frac{1}{n} \left[ \frac{dz_{ij}}{dt} - w_{ij} \frac{dn}{dt} \right] \cr
  \frac{dx_i}{dt} & = & \sum_j \frac{dz_{ij}}{dt} \cr
    & = & \gamma (x_i n - n x_i) + \sum_j P_{ij} z_{ij} - \delta(n) x_i \cr
    & = & \sum_j P_{ij} z_{ij} - \delta(n) x_i. \cr
  \frac{dn}{dt} & = & \sum_i \frac{dx_i}{dt} \cr
    & = & n \left( \sum_{ij} P_{ij} w_{ij} - \delta(n) \right).
\end{eqnarray}
From Equation [8.1](#eq-8-1)
\begin{eqnarray}
  \frac{dz_{ij}}{dt} & = & \gamma n^2 ( y_i y_j - w_{ij} ) + n (P_{ij} - \delta(n)) w_{ij} \cr
  \frac{dw_{ij}}{dt} & = & \frac{1}{n} \left[ \frac{dz_{ij}}{dt} - w_{ij} \frac{dn}{dt} \right] \cr
                     & = & \gamma n (y_i y_j - w_{ij}) + (P_{ij} - \delta(n)) w_{ij} - w_{ij} \sum_{kl} P_{kl} w_{kl} + \delta(n) w_{ij} \cr
  \frac{dy_i}{dt}    & = & \sum_j P_{ij} w_{ij} - y_i \sum_{kl} P_{kl} w_{kl}.
\end{eqnarray}


### 9 References

{{< bibliography cited >}}

### 10 Footnotes