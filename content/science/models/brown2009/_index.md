+++
date = '2017-10-06T16:34:42-08:00'
title = "A Trojan horse approach to medical intervention strategies (2017)"
type = "section"
weight = -20171006
summary = """I recently read an interesting review paper that explores the possibility of fighting a bacterial infection with Darwinian medicine through the introduction of a "cheater" strain of bacteria into a wild population.  I extended the analytic model in the paper to an agent-based model with explicit spatial structure."""
bibFile = "bib-zotero-better-cson.json"
+++

A [NetLogo] {{< cite "wilenskyNetLogo1999" >}} model by Rik Blok.

I recently read an interesting review paper {{< cite "brownSocial2009" >}} that explores the possibility of fighting a bacterial infection with [Darwinian medicine](https://en.wikipedia.org/wiki/Evolutionary%20medicine) through the introduction of a "cheater" strain of bacteria into a wild population.  I extended the analytic model in the paper to an agent-based model with explicit spatial structure. 


<p align="center"><iframe title="" src="https://netlogoweb.org/web?https://raw.githubusercontent.com/rikblok/NetLogo-models/master/brown2009-web.nlogo" style="width:769px; height:990px"></iframe></p>


This agent-based model represents a bacterial infection as described in {{< cite "brownSocial2009" >}}.  It is assumed the wild type ($W$) produces a public good ($F$) which benefits all.  To combat the infection the population is innoculated with a "cheater" strain ($C$).  The cheater strain has one or more of the following traits:

  * It consumes but does not produce the public good ($F$),
  * It produces a toxin ($T$) that harms all,
  * It produces a bacteriocinogen ($B$) it is immune to but harms the wild type.


## 1 How it works

The simulation approximates a Poisson process for each of the above events.  The best known technique would be the Gillespie algorithm {{< cite "gibsonEfficient2000" >}} but it isn't well suited to NetLogo's strengths.  Instead, time proceeds in steps with multiple events occurring in each timestep.

The step size is adaptive, chosen to achieve a desired error tolerance, compared with the Gillespie algorithm.  When the error tolerance is near zero the likelihood of each event is small and we may expect just a few events to occur per timestep.  Then we're accurately -- but inefficiently -- mimicking the Gillespie algorithm.  As the tolerance increases we have more simultaneous events, lowering accuracy but increasing performance.


> [!TIP]
>  - For a long run you may want to increase the speed slider (reduces frame rate) ![faster.gif](faster.gif) and/or increase __err-tolerance__ (reduces __accuracy__).
>  - The default parameters often give interesting cyclical patterns[^1].  [Table 1](#table-1) has parameter values that can be used to compare against {{< cite "brownSocial2009" >}}.

[^1]: The simulation's default parameters violate the [Quasi-steady-state approximation](#quasi-steady-state-approximation) so the equations in {{< cite "brownSocial2009" >}} are not applicable.


## 2 Theory

This simulation incorporates three ideas from Section 2 of {{< cite "brownSocial2009" >}}:
  * (a) A cheat that does not produce exoproducts (public goods),
  * (b) Trojan horse cheats, and 
  * (d) Bacteriocinogen cheat invasion.

Instead of approximating spatial structure with the relatedness factor $r$ in 2(c) "Trojan horse cheat in a spatially structured host" I just explicitly put the bacteria in space -- they diffuse in a two-dimensional continuum with periodic boundaries.

## 3 Numeric model 

Combining (a), (b), and (d) gives the following dynamical equations for the rate of change of the wild ($W$) and cheat ($C$) strain densities:

{{< equation number="1" >}}
\begin{equation}
\begin{array}{rcrccccl}
  \frac{dW}{dt} 
  & = & W ( & \overbrace{1}^{\text{growth}} & \overbrace{- N}^{\text{competition}} & \overbrace{- x}^{\text{costs}} & \overbrace{+ b W / N}^{\text{public good}} & \overbrace{- a C / N}^{\text{toxication}} & \overbrace{- e C / N}^{\text{bacteriocide}} ) \cr
  \frac{dC}{dt} 
  & = & C ( & 1 & - N & - q & + b W / N & - a C / N )
\end{array}
\end{equation}
{{< /equation >}}

where
  * $N = W + C$ is the total bacterial density,
  * $x$ is the cost of producing the public good,
  * $q$ is the direct growth cost of the cheat (if any),
  * $b$ is the benefit of the public good,
  * $a$ is the strength of the antibacterial toxin, and
  * $e$ is the efficacy of the bacteriocinogen.

These two equations combine Eqs. (2.1)-(2.5) from {{< cite "brownSocial2009" >}} -- the effects can be explored separately in the simulation by moving sliders of other parameters to zero.  The numeric dynamics are displayed as faint curves in the "dynamics" and "phase" graphs.  They are included to validate and compare with the agent-based model.

<div id="table-1">
{{% tab title="Table 1" %}}

|  Figure  |  $W(0)$,<br /> initial-W-density  |  $C(0)$,<br /> initial-C-density  |  $x$,<br /> x-wild-cost  |  $q$,<br />q-cheater-cost  |  $b$,<br />b-shared-benefit  |  $a$,<br />a-toxin-production  |  $e$,<br />e-bacteriocinogen  |  well-mixed,<br />$r=0$  |
|:------:|:----:|:------:|:----:|:-----:|:----:|:-----:|:----:|:-----:|
|  4(a)  | 1.1  | 0.001  | 0.1  | 0     | 0.2  | 0     | 0    |  Yes  |
|  4(b)  | 1.1  | 0.001  | 0.1  | 0     | 0.2  | 0     | 0    |  No   |
|  4(c)  | 1.1  | 0.001  | 0.1  | 0.01  | 0.2  | 0.5   | 0    |  Yes  |
|  4(d)  | 1.1  | 0.001  | 0.1  | 0.01  | 0.2  | 0.5   | 0    |  No   |
|  4(e)  | 1.1  | 0.001  | 0.1  | 0.01  | 0.2  | -0.3  | 0    |  Yes  |
|  4(f)  | 1.1  | 0.001  | 0.1  | 0.01  | 0.2  | -0.3  | 0    |  No   |
|  5(a)  | 1.1  | 0.001  | 0.1  | 0.15  | 0.2  | 0     | 0.5  |  Yes  |
|  5(b)  | 1.1  | 0.13   | 0.1  | 0.15  | 0.2  | 0     | 0.5  |  Yes  |
|  5(c)  | 1.1  | 0.001  | 0.1  | 0.05  | 0.2  | 0     | 0.5  |  Yes  |
|  5(d)  | 1.1  | 0.13   | 0.1  | 0.05  | 0.2  | 0     | 0.5  |  Yes  |

Table 1: Parameter values used in the figures of Brown, West, et al. (2009), for comparison.  The well-mixed cases usually agree with my model dynamics, except for stochastic noise due to demographics (eg. extinction of one type).

{{% /tab %}}
</div>


## 4 Agent-based model 

The numeric model can be derived as a non-spatial limiting case of an agent-based model.  In this model we explicitly represent each individual "agent" in the system instead of treating them as identical and just tracking aggregate population densities.  A convenient approach is to borrow [reaction kinetics](https://en.wikipedia.org/wiki/Chemical_kinetics) from physical chemistry to describe allowed interactions in our model.  

To capture the numeric model we require five types/species[^2]:
  * $W$ is a wild-type bacterium,
  * $C$ is a cheat bacterium,
  * $F$ is a parcel of food,
  * $T$ is a parcel of toxin, and
  * $B$ is a parcel of bacteriocinogen.

[^2]: Note the overlapping notation: the symbols for individual agents are re-used to represent the densities of said types.  Hopefully, the context (eg. density in a rate equation) is sufficient to prevent confusion.

We simply allow these agents to interact stochastically at given rates according to the following reactions:

{{< equation number="2" >}}
\begin{equation}
\begin{array}{rclrcll}
  N & \xrightarrow{1} & 2 N & & & & \text{(growth)} \cr
  W + N & \xrightarrow{1} & N, & C + N & \xrightarrow{1} & N & \text{(competition)} \cr
  W & \xrightarrow{x} & \emptyset, & C & \xrightarrow{q} & \emptyset & \text{(costs)} \cr
  W & \xrightarrow{b} & W + F, & N + F & \xrightarrow{\beta} & 2 N & \text{(public good)} \cr
  C & \xrightarrow{a} & C + T, & N + T & \xrightarrow{\delta} & \emptyset & \text{(toxication)} \cr
  C & \xrightarrow{e} & C + B, & C + B & \xrightarrow{\gamma} & C & \text{(bacteriocide)} \cr
    & & & W + B & \xrightarrow{\gamma} & \emptyset
\end{array}
\end{equation}
{{< /equation >}}

where $\emptyset$ indicates an absence of products and $N$ is shorthand for either $W$ or $C$.

A moment's review should satisfy the reader that these reactions are reasonable prescriptions.  For example, $W \xrightarrow{b} W + F$ indicates that each wild-type bacterium produces a food parcel at an average rate of $b$ per unit time.  A bacterium that encounters a food parcel consumes it at rate $\beta$ and benefits by reproducing, $N + F \xrightarrow{\beta} 2 N$.

In the agent-based approach we model these processes explicitly and track all of the agents as they are produced, changed, or removed from the system.  To connect with the numeric model we apply the [law of mass action](https://en.wikipedia.org/wiki/Law_of_mass_action) to compute the dynamics of a large, well-mixed population following the above reactions:

{{< equation number="3" >}}
\begin{equation}
\begin{array}{rcrccccl}
  \frac{dW}{dt} 
  & = & W ( & \overbrace{1}^{\text{growth}} & \overbrace{- N}^{\text{competition}} & \overbrace{- x}^{\text{costs}} & \overbrace{+ \beta F}^{\text{public good}} & \overbrace{- \delta T}^{\text{toxication}} & \overbrace{- \gamma B}^{\text{bacteriocide}} ) \cr
  \frac{dC}{dt} & = & C ( & 1 & - N & - q & + \beta F & - \delta T ) \cr
  \frac{dF}{dt} & = &     &   &     &     & b W - \beta F N \cr
  \frac{dT}{dt} & = &     &   &     &     &           & a C - \delta T N \cr
  \frac{dB}{dt} & = &     &   &     &     &           &              & e C - \gamma B N.
\end{array}
\end{equation}
{{< /equation >}}


## 5 Quasi-steady-state approximation 

Eq. ([3](#eq-3)) looks much more complicated than Eq. ([1](#eq-1)) we're trying to relate it to.  But we can reduce the system if we assume that the densities $F$, $T$, and $B$ are //fast// variables -- that they respond quickly to perturbations and quickly converge to equilibrium.  If we assume that they converge so quickly that the slow variables ($W$ and $C$) don't change appreciably while the fast ones equilibrate then we can approximate the fast variables as always being in equilibrium -- the [[wp>Michaelis%E2%80%93Menten_kinetics#Quasi-steady-state_approximation | quasi-steady-state approximation]] (QSSA):

\[
\begin{array}{rcl}
  F & = & b W / \beta N \cr
  C & = & a C / \delta N \cr
  B & = & e C / \gamma N.
\end{array}
\]

Then Eq. ([3](#eq-3)) reduces to exactly Eq. ([1](#eq-1)) and the agent-based model in Eq. ([2](#eq-2)) is an extension of {{< cite "brownSocial2009" >}} to finite populations.  Unfortunately, finding the conditions to satisfy QSSA is not trivial {{< cite "segelQuasiSteadyState1989" >}}.  Nevertheless, it should be satisfied if all of the rate constants $\beta$, $\delta$, and $\gamma$ are large.  In the simulation I set them all to the same large constant so we may expect differences between the agent-based and numeric models result from other causes, such as spatial structure.


## 6 Spatial structure 

Brown et al. {{< cite "-brownSocial2009" >}} create a structured population in Section 2(c) through preferential interactions of the bacteria with kin, mimicking spatial segregation.  Implementing it as an agent-based model  in [NetLogo] allows me to explicitly include space: agents move continuously in a two-dimensional plane with periodic boundary conditions.  Reactions are localized to patches on a square grid.  In the limit of large population size and infinitesimal patch size mass action swamps stochastic effects and the model should become equivalent to a [reaction-diffusion system](https://en.wikipedia.org/wiki/Reaction%E2%80%93diffusion_system).

I arbitrarily chose to allow only the bacteria (wild and cheater types) to move.  Byproducts (food, toxin, & bacteriocinogen) are stationary after being created.  Some other options would be to allow the byproducts to move (for example, as if they were diffusing via [Brownian motion](https://en.wikipedia.org/wiki/Brownian_motion)) or for both bacteria and byproducts to move (possibly at different rates).

Unlike other events, which are treated as probabilistic [stochastic processes](https://en.wikipedia.org/wiki/Stochastic_process), every moving agent moves in every time increment according to a [random walk](https://en.wikipedia.org/wiki/Random_walk), with a jump size is governed by the diffusion constant.  The effects of spatial structure can be minimized by mixing((Enable the __well-mixed__ switch to rapidly stir the system.)).  Only bacteria move so there may still be some spatial effects from the stationary byproducts but the dynamics should be more similar to the numeric ([mean field](https://en.wikipedia.org/wiki/Mean-field_theory)) approximation.


## 7 References

{{< bibliography cited >}}


[NetLogo]: http://ccl.northwestern.edu/netlogo/


## 8 Footnotes
