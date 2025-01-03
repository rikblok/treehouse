var relearn_searchindex = [
  {
    "breadcrumb": "Academic anecdotes \u003e Old courses",
    "content": "Game Theory in Economics and Evolution (Fall 2016) Exploration of human and animal interactions: integrating evolutionary and economic perspectives to investigate individual and social behaviour.\nIntroduction We’re taking our first steps towards flipping the classroom! Here you can find video lectures and notes that replace in-class lectures.\n01 The Ultimatum Game 02 Extensive and normal form games 03 Dominance and Pareto optimality 04 Symmetric and zero-sum games 05 Sotto vs. Blotto and mixed Nash equilibria 06 Deriving mixed Nash equilibria 07 Deriving Expected Utility Theory 08 Evolutionary Game Theory 09 An asymmetric evolutionary game 10 Multiplayer games 11 Public goods with punishment 12 Repeated games Lecture notes Here’s the whole collection of lecture notes for the videos:\n01 The Ultimatum Game.pdf 02 Extensive and normal form games.pdf 03 Dominance and Pareto Optimality.pdf 04 Symmetric and zero-sum games.pdf 05 Sotto vs. Blotto and mixed Nash equilibria.pdf 06 Deriving mixed Nash equilibria.pdf 07 Deriving Expected Utility Theory.pdf 08 Evolutionary Game Theory.pdf 09 An asymmetric evolutionary game.pdf 10 Multiplayer games.pdf 11 Public goods with punishment.pdf 12 Repeated games.pdf",
    "description": "Game Theory in Economics and Evolution (Fall 2016))\nExploration of human and animal interactions: integrating evolutionary and economic perspectives to investigate individual and social behaviour.",
    "tags": [],
    "title": "UBC ISCI 344 (2016)",
    "uri": "/~rikblok/teaching/past/isci344/index.html"
  },
  {
    "breadcrumb": "Mathematical musings",
    "content": "Remember Euler’s number, $e=2.71828$… ? One of the Bernoulli boys showed that it’s the limit of $(1 + 1/n)^n$ as $n$ goes to infinity. But if $n$ goes to infinity then we should be able to add an arbitrary constant $c$ to the denominator without changing the result. So, more generally,\n$$e = \\lim_{n\\rightarrow \\infty} \\left(1+\\frac{1}{n+c}\\right)^n.$$The question that came to my mind then is, what is the “best” constant to choose? It turns out you can show it’s $c=-1/2$. In other words, the limit of $(1+1/(n-1/2))^n$ converges to $e$ faster than Bernoulli’s formula (or any other $c$). In fact, it’s 99% accurate for $n=3$ (versus $n=50$ for Bernoulli).\nDerivation Here’s how I figured it out. Let’s call the $n$-th number in the sequence $E_n$:\n$$E_n = \\left(1+\\frac{1}{n+c}\\right)^n.$$Ideally, we want $E_n=e$ for all $n$. But then $c$ is no longer a constant. In fact, we can isolate $c$ in the above equation (with $E_n=e$) to find out how $c$ would depend on $n$:\n$$c(n) = \\left( e^{1/n} - 1 \\right)^{-1} - n.$$Now we want to know if $c$ converges to a constant as $n\\rightarrow\\infty$. But that’s tricky. It becomes much simpler if we take $u=1/n$ and look at what happens as $u\\rightarrow 0$.\n$$c(u) = \\left( e^u - 1 \\right)^{-1} - \\frac{1}{u}.$$Then we can expand $c$ as a Taylor series around $u=0$ (effectively, a Taylor expansion around $n=\\infty$, which is pretty cool!) to get\n$$c(u) \\approx -\\frac{1}{2} + \\frac{u}{12} + \\cdots$$So the best choice as a constant for large $n$ is $c=-1/2$ which gives a sequence\n$$E_n^{(1)} = \\left(1+\\frac{1}{n - 1/2}\\right)^n = \\left(\\frac{2 n + 1}{2 n - 1}\\right)^n.$$Higher order terms Including higher order terms in the approximation allows to find sequences that converge even faster! For example, the next order approximation would be $c(n) = -1/2 + 1/(12 n)$, which would give a sequence\n$$E_n^{(2)} = \\left( \\frac{12 n^2 + 6 n + 1}{12 n^2 - 6 n + 1} \\right)^n.$$It’s not as pretty an expression but it converges very quickly! It’s already more than 99.8% accurate for $n=1$! (For $n=1$ the result simplifies to the fraction $E_1^{(2)}=19/7\\approx 2.714$.)\nSummary I found replacing $c=0$ in the sequence $\\left(1+\\frac{1}{n+c}\\right)^n$ with $c=-1/2$ makes it converge to Euler’s number much faster as $n\\rightarrow \\infty$. Does it matter? Probably not. But I sure had a fun afternoon! :-)\n— Rik Blok, 2014",
    "description": "I found a sequence that converges to Euler’s constant faster than Bernoulli’s formula.",
    "tags": [],
    "title": "Euler's constant: An improved sequence (2014)",
    "uri": "/~rikblok/math/eulers_constant/index.html"
  },
  {
    "breadcrumb": "Academic anecdotes \u003e Old courses",
    "content": "",
    "description": "Models in Science (Fall 2009)\nMeaning, nature, use, strengths and limitations of models as investigative tools in all scientific disciplines. Detailed investigation of selected model systems from different scientific disciplines.",
    "tags": [],
    "title": "UBC ISCI 422 (2009)",
    "uri": "/~rikblok/teaching/past/isci422/index.html"
  },
  {
    "breadcrumb": "Research ramblings \u003e My research \u003e Published",
    "content": "Multimodal pattern formation in phenotype distributions of sexual populations Doebeli, \rBlok, \rLeimar \u0026 Dieckmann\r(2007)\rDoebeli, \rM., \rBlok, \rH., \rLeimar, \rO. \u0026 Dieckmann, \rU.\r \r(2007).\r Multimodal pattern formation in phenotype distributions of sexual populations.\rProceedings of the Royal Society B: Biological Sciences, 274(1608). 347–357.\rhttps://doi.org/10.1098/rspb.2006.3725\rAbstract During bouts of evolutionary diversification, such as adaptive radiations, the emerging species cluster around different locations in phenotype space. How such multimodal patterns in phenotype space can emerge from a single ancestral species is a fundamental question in biology. Frequency-dependent competition is one potential mechanism for such pattern formation, as has previously been shown in models based on the theory of adaptive dynamics. Here, we demonstrate that also in models similar to those used in quantitative genetics, phenotype distributions can split into multiple modes under the force of frequency-dependent competition. In sexual populations, this requires assortative mating, and we show that the multimodal splitting of initially unimodal distributions occurs over a range of assortment parameters. In addition, assortative mating can be favoured evolutionarily even if it incurs costs, because it provides a means of alleviating the effects of frequency dependence. Our results reveal that models at both ends of the spectrum between essentially monomorphic (adaptive dynamics) and fully polymorphic (quantitative genetics) yield similar results. This underscores that frequency-dependent selection is a strong agent of pattern formation in phenotype distributions, potentially resulting in adaptive speciation.\nDownload",
    "description": "Multimodal pattern formation in phenotype distributions of sexual populations",
    "tags": [],
    "title": "Doebeli, Blok, Leimar \u0026 Dieckmann (2007)",
    "uri": "/~rikblok/research/rik/published/doebeli07/index.html"
  },
  {
    "breadcrumb": "Research ramblings \u003e My research \u003e Published",
    "content": "A tale of two cycles - distinguishing quasi-cycles and limit cycles in finite predator-prey populations Pineda-Krch, \rBlok, \rDieckmann \u0026 Doebeli\r(2007)\rPineda-Krch, \rM., \rBlok, \rH., \rDieckmann, \rU. \u0026 Doebeli, \rM.\r \r(2007).\r A tale of two cycles - distinguishing quasi-cycles and limit cycles in finite predator-prey populations.\rOikos, 116(1). 53–64.\rhttps://doi.org/10.1111/j.2006.0030-1299.14940.x\rAbstract Periodic predator-prey dynamics in constant environments are usually taken as indicative of deterministic limit cycles. It is known, however, that demographic stochasticity in finite populations can also give rise to regular population cycles, even when the corresponding deterministic models predict a stable equilibrium. Specifically, such quasi-cycles are expected in stochastic versions of deterministic models exhibiting equilibrium dynamics with weakly damped oscillations. The existence of quasi-cycles substantially expands the scope for natural patterns of periodic population oscillations caused by ecological interactions, thereby complicating the conclusive interpretation of such patterns. Here we show how to distinguish between quasi-cycles and noisy limit cycles based on observing changing population sizes in predator-prey populations. We start by confirming that both types of cycle can occur in the individual-based version of a widely used class of deterministic predator-prey model. We then show that it is feasible and straightforward to accurately distinguish between the two types of cycle through the combined analysis of autocorrelations and marginal distributions of population sizes. Finally, by confronting these results with real ecological time series, we demonstrate that by using our methods even short and imperfect time series allow quasi-cycles and limit cycles to be distinguished reliably.\nDownload",
    "description": "A tale of two cycles - distinguishing quasi-cycles and limit cycles in finite predator-prey populations",
    "tags": [],
    "title": "Pineda-Krch, Blok, Dieckmann \u0026 Doebeli (2007)",
    "uri": "/~rikblok/research/rik/published/pinedakrch07/index.html"
  },
  {
    "breadcrumb": "Research ramblings \u003e My research \u003e Published",
    "content": "Scale-free extinction dynamics in spatially structured host–parasitoid systems Killingback, \rBlok \u0026 Doebeli\r(2006)\rKillingback, \rT., \rBlok, \rH. \u0026 Doebeli, \rM.\r \r(2006).\r Scale-free extinction dynamics in spatially structured host–parasitoid systems.\rJournal of Theoretical Biology, 241(4). 745–750.\rhttps://doi.org/10.1016/j.jtbi.2006.01.010\rAbstract Much of the work on extinction events has focused on external perturbations of ecosystems, such as climatic change, or anthropogenic factors. Extinction, however, can also be driven by endogenous factors, such as the ecological interactions between species in an ecosystem. Here we show that endogenously driven extinction events can have a scale-free distribution in simple spatially structured host-parasitoid systems. Due to the properties of this distribution there may be many such simple ecosystems that, although not strictly permanent, persist for arbitrarily long periods of time. We identify a critical phase transition in the parameter space of the host-parasitoid systems, and explain how this is related to the scale-free nature of the extinction process. Based on these results, we conjecture that scale-free extinction processes and critical phase transitions of the type we have found may be a characteristic feature of many spatially structured, multi-species ecosystems in nature. The necessary ingredient appears to be competition between species where the locally inferior type disperses faster in space. If this condition is satisfied then the eventual outcome depends subtly on the strength of local superiority of one species versus the dispersal rate of the other.\nDownload",
    "description": "Scale-free extinction dynamics in spatially structured host–parasitoid systems",
    "tags": [],
    "title": "Killingback, Blok \u0026 Doebeli (2006)",
    "uri": "/~rikblok/research/rik/published/killingback06/index.html"
  },
  {
    "breadcrumb": "Academic anecdotes \u003e Old courses",
    "content": "",
    "description": "Electricity, Light and Radiation (Summer 2003)\nIntroduction to optics, electricity and magnetism, electric circuits, radioactivity, including biological applications.",
    "tags": [],
    "title": "UBC PHYS 102 (2003)",
    "uri": "/~rikblok/teaching/past/phys102/index.html"
  },
  {
    "breadcrumb": "Research ramblings \u003e My research \u003e Presented",
    "content": "Self-affine timeseries analysis. Guest lecture for U.B.C. Physics 510: Stochastic Processes in Physics Blok\r(2003)\rBlok, \rH.\r \r(2003).\r \rSelf-affine timeseries analysis.\rAbstract A brief introduction to Lévy flight and fractional Brownian motion from the experimentalist’s perspective. Simple tools to analyze these timeseries, the Zipf plot and dispersional analysis, are presented. As a demonstration, these tools are applied to financial and meteorological data to determine the Lévy and Hurst exponents.\nDownload",
    "description": "Self-affine timeseries analysis. Guest lecture for U.B.C. Physics 510: Stochastic Processes in Physics",
    "tags": [],
    "title": "Blok (2003)",
    "uri": "/~rikblok/research/rik/presented/blok03/index.html"
  },
  {
    "breadcrumb": "Research ramblings \u003e My research \u003e Presented",
    "content": "Rock, paper and scissors in space: A demonstration of R2DToo. Blok\r(2002)\rBlok, \rH.\r \r(2002).\r \rRock, paper and scissors in space: A demonstration of R2DToo.\rAbstract Presentation given at the Dec. 2, 2002 SOWD Lab Meeting. A demonstration of how the simulation tool R2DToo can be used to solve real problems.\nDownload",
    "description": "Rock, paper and scissors in space: A demonstration of R2DToo.",
    "tags": [],
    "title": "Blok (2002)",
    "uri": "/~rikblok/research/rik/presented/blok02b/index.html"
  },
  {
    "breadcrumb": "Research ramblings \u003e My research \u003e Presented",
    "content": "Statistical properties of financial timeseries Blok\r(2002)\rBlok, \rH.\r \r(2002).\r \rStatistical properties of financial timeseries.\rAbstract A brief introduction to Lévy flight and fractional Brownian motion from the experimentalist’s perspective. Simple tools to analyze these timeseries, the Zipf plot and dispersional analysis, are presented. As a demonstration, these tools are applied to intraday foreign exchange data to determine the Lévy and Hurst exponents.\nDownload",
    "description": "Statistical properties of financial timeseries",
    "tags": [],
    "title": "Blok (2002)",
    "uri": "/~rikblok/research/rik/presented/blok02/index.html"
  },
  {
    "breadcrumb": "Mathematical musings",
    "content": "My wife and I live in a twenty eight unit condominium which shares the cost of natural gas. Each unit has its own gas fireplace which we find is sufficient to heat our unit all year long, without resorting to electric baseboard heaters. This makes for an interesting problem in game theory: at what price level can we expect the residents to switch from heating with gas to heating with electricity?\nThe problem is only interesting when the cost of heating with gas is on the same order as electric heat. If one source is much cheaper than the other then it is the rational choice. As I write this the cost of gas is roughly (if I did the math right!) 3/4 the cost of electricity (measured in dollars per unit of energy). This neglects some issues such as efficiency of turning the energy into heat, etc. but at least it gives us a ballpark figure. Clearly, the problem is relevant.\nI’m going to demonstrate two solutions to the problem. The first ignores game theory and gives a trivial, intuitive result. The second, using game theory, gives a more likely–and drastically worse–result.\nSolution 1: Self-consistency First, some definitions:\n$T$ total heating cost over some fixed period (eg. one year), $N$ number of units in condo (eg. $N=28$), $E$ total units of energy used to heat home, $f$ ratio of gas price rate to electricity rate (eg. $f=3/4$), $r_e$ cost per unit energy for electricity, $r_g$ cost per unit energy for gas ($r_g=f r_e$), and $g$ fraction of heat generated by gas, for a single resident (between zero and one). Ok, to state it mathematically, we want to find the fraction $g$ which minimizes the total cost $T$ each resident spends. For this first solution, we assume each resident is going to do the same thing because they all want to minimize $T$.\nSo each resident’s cost for electric heat is $(1-g) E r_e$ and the total cost of gas for the entire building is $N g E r_g$, which is split uniformly between the $N$ condos. So the total cost to each condo is\n$$ T = (1-g) E r_e + g E r_g = E r_e [1+(f-1)g]. $$So what would each resident choose for $g$ in order to minimize $T$? Simple: if $f\u003c1$ then choose $g=1$ and if $f\u003e1$ then choose $g=0$. This just means the rational way to heat your home is with whichever source is cheaper. That seems obvious doesn’t it?\nSolution 2: Game theoretic If you agree with the first solution this one might surprise you. Again, we need a few definitions. Instead of everybody applying the same behaviour $g$, lets consider what I should do as a resident versus what everybody else is doing:\n$g_\\text{me}$ the fraction $g$ for me, as a resident, or $g_\\text{other}$ the fraction $g$ averaged over all other residents. Now there are three costs: my electricity, $(1-g_\\text{me}) E r_e$, my gas, $g_\\text{me} E r_g$, and everybody else’s gas, $(N-1) g_\\text{other} E r_g$. As before, these last two terms are shared by all $N$ residents so my total cost is\n$$ \\begin{array}{rl} T \u0026 = (1-g_\\text{me}) E r_e + [g_\\text{me} E r_g + (N-1) g_\\text{other} E r_g]/N \\\\ \u0026 = E r_e [1+(N-1) g_\\text{other} f / N + (f/N - 1) g_\\text{me}]. \\end{array} $$Notice that I only have control over my own actions, $g_\\text{me}$. I can’t hope to influence other people’s behaviour so $g_\\text{other}$ is effectively constant, independent of what I do. So, to minimize T all I can do is try to minimize the very last term $(f/N - 1) g_\\text{me}$. This is achieved with $g_\\text{me}=1$ when $f\u003cN$ and $g_\\text{me}=0$ when $f\u003eN$.\nTragedy of the commons Compare these two solutions: the first says I should use gas only if it is cheaper than electricity, but the second says I should keep using it until it is $N$ times more expensive than electricity! ($N=28$ in my building.)\nIf that’s the optimal behaviour for me, then the same should hold for every resident in the building. So, when $1\u003cf\u003cN$ we are all going to be paying more for heating than we need to! Strange but true. This dilemma is known as the tragedy of the commons. It happens because nobody can improve their situation by changing their behaviour unless everyone else changes, too.\nFortunately, there are ways to get around this kind of dilemma. What you have to do is change the rules of the game. For example, if the price of gas got too high we could have an emergency strata meeting to vote on the option of shutting off the gas to the entire building. (Other, less totalitarian solutions are probably also available…)\n— Rik Blok, 2002",
    "description": "My wife and I live in a twenty eight unit condominium which shares the cost of natural gas.  At what price level can we expect the residents to switch from heating with gas to heating with electricity?",
    "tags": [],
    "title": "Shared Gas: A 'Tragedy' of the Commons (2002)",
    "uri": "/~rikblok/math/shared_gas/index.html"
  },
  {
    "breadcrumb": "Research ramblings \u003e My research \u003e Presented",
    "content": "Can memes drive genes? Blok\r(2001)\rBlok, \rH.\r \r(2001).\r \rCan memes drive genes?.\rAbstract Assuming culture is transmitted horizontally (via imitation) a model was constructed to determine the conditions under which culture can dominate genetic evolution (“get off the leash” according to Blackmore (\rCitation: 2000 Blackmore, \rS. \r(2000).\r \rThe meme machine.\r \rOxford University Press.\r)\r). Two requirements were found: (1) culture must compete with genes (required only for the effect to be empirically testable); and (2) Interactions between individuals must be confined to small groups or neighbourhoods. The model was tested via analysis and simulation.\nIn this talk I will present the model, analysis, and simulation results. Feedback is appreciated.\nDownload",
    "description": "Can memes drive genes?",
    "tags": [],
    "title": "Blok (2001)",
    "uri": "/~rikblok/research/rik/presented/blok01/index.html"
  },
  {
    "breadcrumb": "Research ramblings \u003e My research \u003e Presented",
    "content": "On the nature of the stock market: Simulations and experiments. Final PhD oral defense Blok\r(2000)\rBlok, \rH.\r \r(2000).\r \rOn the nature of the stock market: Simulations and experiments (Departmental defense).\rDownload",
    "description": "On the nature of the stock market: Simulations and experiments. Final PhD oral defense",
    "tags": [],
    "title": "Blok (2000)",
    "uri": "/~rikblok/research/rik/presented/blok00c/index.html"
  },
  {
    "breadcrumb": "Research ramblings \u003e My research \u003e Published",
    "content": "On the nature of the stock market: Simulations and experiments Blok\r(2000)\rBlok, \rH.\r \r(2000).\r \rOn the nature of the stock market: Simulations and experiments\r. \rUniversity of British Columbia\r Retrieved from \rhttp://hdl.handle.net/2429/11108\rAbstract Over the last few years there has been a surge of activity within the physics community in the emerging field of Econophysics - the study of economic systems from a physicist’s perspective. Physicists tend to take a different view than economists and other social scientists, being interested in such topics as phase transitions and fluctuations.\nIn this dissertation two simple models of stock exchange are developed and simulated numerically. The first is characterized by centralized trading with a market maker. Fluctuations are driven by a stochastic component in the agents’ forecasts. As the scale of the fluctuations is varied a critical phase transition is discovered. Unfortunately, this model is unable to generate realistic market dynamics.\nThe second model discards the requirement of centralized trading. In this case the stochastic driving force is Gaussian-distributed “news events” which are public knowledge. Under variation of the control parameter the model exhibits two phase transitions: both a first- and a second-order (critical).\nThe decentralized model is able to capture many of the interesting properties observed in empirical markets such as fat tails in the distribution of returns, a brief memory in the return series, and long-range correlations in volatility. Significantly, these properties only emerge when the parameters are tuned such that the model spans the critical point. This suggests that real markets may operate at or near a critical point, but is unable to explain why this should be. This remains an interesting open question worth further investigation.\nOne of the main points of the thesis is that these empirical phenomena are not present in the stochastic driving force, but emerge endogenously from interactions between agents. Further, they emerge despite the simplicity of the modeled agents; suggesting complex market dynamics do not arise from the complexity of individual investors but simply from interactions between (even simple) investors.\nAlthough the emphasis of this thesis is on the extent to which multi-agent models can produce complex dynamics, some attempt is also made to relate this work with empirical data. Firstly, the trading strategy applied by the agents in the second model is demonstrated to be adequate, if not optimal, and to have some surprising consequences.\nSecondly, the claim put forth by Sornette et al. (\rCitation: 1996 Sornette, \rD., \rJohansen, \rA. \u0026 Bouchaud, \rJ.\r \r(1996).\r Stock Market Crashes, Precursors and Replicas.\rJournal de Physique I, 6(1). 9.\rhttps://doi.org/10.1051/jp1:1996135\r)\rthat large financial crashes may be heralded by accelerating precursory oscillations is also tested. It is shown that there is weak evidence for the existence of log-periodic precursors but the signal is probably too indistinct to allow for reliable predictions.\nDownload Individual sections\nFront matter Chapter 1: Introduction Chapter 2: Centralized Stock Exchange Model Chapter 3: Decentralized Stock Exchange Model Chapter 4: Analysis and results: Phase space Chapter 5: Analysis and results: Empirical results Chapter 6: Experiments with a hypothetical portfolio Chapter 7: Concluding remarks Bibliography Appendix A: Discounted least-squares curve fitting Appendix B: Sampling discrete processes Appendix C: Long-range memory: The Hurst exponent",
    "description": "On the nature of the stock market: Simulations and experiments",
    "tags": [],
    "title": "Blok (2000)",
    "uri": "/~rikblok/research/rik/published/blok00b/index.html"
  },
  {
    "breadcrumb": "Academic anecdotes \u003e Old courses",
    "content": "",
    "description": "Elements of Physics (Winter 2000)\nThermometry, thermal properties of matter, heat, oscillations, waves, sound, wave optics; geometrical optics, elementary electricity and magnetism, simple DC and AC circuits.",
    "tags": [],
    "title": "UBC PHYS 153 (2000)",
    "uri": "/~rikblok/teaching/past/phys153/index.html"
  },
  {
    "breadcrumb": "Research ramblings \u003e My research \u003e Presented",
    "content": "On the nature of the stock market: Simulations and experiments. Departmental PhD oral defense Blok\r(2000)\rBlok, \rH.\r \r(2000).\r \rOn the nature of the stock market: Simulations and experiments (Final defense).\rDownload",
    "description": "On the nature of the stock market: Simulations and experiments. Departmental PhD oral defense",
    "tags": [],
    "title": "Blok (2000)",
    "uri": "/~rikblok/research/rik/presented/blok00/index.html"
  },
  {
    "breadcrumb": "Research ramblings \u003e My research \u003e Published",
    "content": "Synchronous versus asynchronous updating in the “game of Life” Blok \u0026 Bergersen\r(1999)\rBlok, \rH. \u0026 Bergersen, \rB.\r \r(1999).\r Synchronous versus asynchronous updating in the “game of Life”.\rPhysical Review E, 59(4). 3876–3879.\rhttps://doi.org/10.1103/PhysRevE.59.3876\rAbstract The rules for the “game of Life” are modified to allow for only a random fraction of sites to be updated in each time step. Under variation of this fraction from the parallel updating limit down to the Poisson limit, a critical phase transition is observed that explains why the game of Life appears to obey self-organized criticality. The critical exponents are calculated and the static exponents appear to belong to the directed percolation universality class in 2+1 dimensions. The dynamic exponents, however, are nonuniversal, as seen in other systems with multiple absorbing states.\nDownload",
    "description": "Synchronous versus asynchronous updating in the “game of Life”",
    "tags": [],
    "title": "Blok \u0026 Bergersen (1999)",
    "uri": "/~rikblok/research/rik/published/blok99/index.html"
  },
  {
    "breadcrumb": "Research ramblings \u003e My research \u003e Presented",
    "content": "Modelling intentionality: The gambler. Presentation for UBC Phys 510 Blok\r(1998)\rBlok, \rH.\r \r(1998).\r \rModelling Intentionality: The Gambler.\rDownload",
    "description": "Modelling intentionality: The gambler. Presentation for UBC Phys 510",
    "tags": [],
    "title": "Blok (1998)",
    "uri": "/~rikblok/research/rik/presented/blok98/index.html"
  },
  {
    "breadcrumb": "Research ramblings \u003e My research \u003e Presented",
    "content": "Extra! Extra! Critical update on ‘Life’. Presentation for Peter Wall Inst. Adv. Science, Crisis Points Group, UBC Blok\r(1998)\rBlok, \rH.\r \r(1998).\r \rExtra! Extra! Critical Update on Life.\rDownload",
    "description": "Extra! Extra! Critical update on ‘Life’. Presentation for Peter Wall Inst. Adv. Science, Crisis Points Group, UBC",
    "tags": [],
    "title": "Blok (1998)",
    "uri": "/~rikblok/research/rik/presented/blok98b/index.html"
  },
  {
    "breadcrumb": "Research ramblings \u003e My research \u003e Published",
    "content": "Effect of boundary conditions on scaling in the “game of Life” Blok \u0026 Bergersen\r(1997)\rBlok, \rH. \u0026 Bergersen, \rB.\r \r(1997).\r Effect of boundary conditions on scaling in the “game of Life”.\rPhysical Review E, 55(5). 6249–6252.\rhttps://doi.org/10.1103/PhysRevE.55.6249\rAbstract The debate as to whether the “game of Life” is self-organized critical remains unresolved. We present evidence that boundary conditions play an important role in the scaling behaviour, resulting in apparently contradictory results. We develop an analytic form for the scaling function and demonstrate that periodic boundaries force saturation, while open boundaries exhibit no such transitions on similar scales. We also consider the removal of boundaries altogether.\nDownload",
    "description": "Effect of boundary conditions on scaling in the “game of Life”",
    "tags": [],
    "title": "Blok \u0026 Bergersen (1997)",
    "uri": "/~rikblok/research/rik/published/blok97/index.html"
  },
  {
    "breadcrumb": "Mathematical musings",
    "content": "Pythagorean theorem\rIn a right triangle the square of the hypotenuse is equal to the sum of the squares of the sides containing the right angle.\nI’ve been puzzling over a proof for this for years, and it finally dawned on me. (Eureka!) It’s all in how you draw it…\nProof #1 Given the triangle formed by $a$, $b$ (choosing $b\\geq a$) and $c$, we can construct a square with total area $c^2$. As shown, we can fit four triangles, each with area $a b/2$, into the large square, leaving an inner square with area $(b-a)^2$. Thus, the total area of the large square is\n$$ \\begin{array}{rl} c^2 \u0026 = 4 (a b/2) + (b-a)^2 \\\\ \u0026 = 2 a b + a^2 + b^2 - 2 a b \\\\ \u0026 = a^2 + b^2 . \\end{array} $$Hence, the Pythagorean theorem.\nProof #2 I found another proof, which Jim Loy told me is due to Legendre. It relies on recognizing that you can subdivide a triangle forming two sub-triangles similar to each other and the original. (I won’t prove this.) Then, from the figure above, and from the properties of similar triangles\n$$ \\frac{a}{e} = \\frac{c}{a} \\text{ thus } a^2 = c e $$and\n$$ \\frac{b}{f} = \\frac{c}{b} \\text{ thus } b^2 = c f. $$Adding the two results together gives\n$$ \\begin{array}{rl} a^2 + b^2 \u0026 = c e + c f \\\\ \u0026 = c (e+f) \\\\ \u0026 = c^2 . \\end{array} $$Hence, the Pythagorean theorem.\n— Rik Blok, 1997",
    "description": "I’ve been puzzling over a proof for this for years, and it finally dawned on me. (Eureka!) It’s all in how you draw it…",
    "tags": [],
    "title": "Proof of the Pythagoran theorem (1997)",
    "uri": "/~rikblok/math/pythagoras/index.html"
  },
  {
    "breadcrumb": "Research ramblings \u003e My research",
    "content": "My peer-reviewed and published articles.\nDoebeli, Blok, Leimar \u0026 Dieckmann (2007)Multimodal pattern formation in phenotype distributions of sexual populations\nPineda-Krch, Blok, Dieckmann \u0026 Doebeli (2007)A tale of two cycles - distinguishing quasi-cycles and limit cycles in finite predator-prey populations\nKillingback, Blok \u0026 Doebeli (2006)Scale-free extinction dynamics in spatially structured host–parasitoid systems\nBlok (2000)On the nature of the stock market: Simulations and experiments\nBlok \u0026 Bergersen (1999)Synchronous versus asynchronous updating in the “game of Life”\nBlok \u0026 Bergersen (1997)Effect of boundary conditions on scaling in the “game of Life”",
    "description": "My peer-reviewed and published articles",
    "tags": [],
    "title": "Published",
    "uri": "/~rikblok/research/rik/published/index.html"
  },
  {
    "breadcrumb": "",
    "content": "Contact me below if you’d like to talk to me outside of class. Also, here’s some course material for current and past courses I have been involved in.\nContact RikWant to book an appointment or reach me? Check out my office hours and contact information here.\nWorkloadView my historical workload, automatically generated from the emails waiting in my inbox.\nRecent coursesHere are some recent courses I’ve taught.\nUBC CPSC 110Computation, Programs, and Programming\nFundamental program and computation structures. Introductory programming skills. Computation as a tool for information processing, simulation and modelling, and interacting with the world.\nUBC CPSC 107Systematic Program Design\nFundamental computation and program structures. Continuing systematic program design from CPSC 103.\nUBC ISCI 320Research Development Project\nRetreat to develop skills in writing scientific research proposals. Emphasis on formulating and testing hypotheses to explain observations.\nOld coursesHere are some courses I’ve taught in the past.\nUBC ISCI 344 (2016)Game Theory in Economics and Evolution (Fall 2016))\nExploration of human and animal interactions: integrating evolutionary and economic perspectives to investigate individual and social behaviour.\nUBC ISCI 422 (2009)Models in Science (Fall 2009)\nMeaning, nature, use, strengths and limitations of models as investigative tools in all scientific disciplines. Detailed investigation of selected model systems from different scientific disciplines.\nUBC PHYS 102 (2003)Electricity, Light and Radiation (Summer 2003)\nIntroduction to optics, electricity and magnetism, electric circuits, radioactivity, including biological applications.\nUBC PHYS 153 (2000)Elements of Physics (Winter 2000)\nThermometry, thermal properties of matter, heat, oscillations, waves, sound, wave optics; geometrical optics, elementary electricity and magnetism, simple DC and AC circuits.",
    "description": "My contact information and material from some of my courses.  Look here if you want to book an appointment.",
    "tags": [],
    "title": "Academic anecdotes",
    "uri": "/~rikblok/teaching/index.html"
  },
  {
    "breadcrumb": "Academic anecdotes",
    "content": "Want to book an appointment or reach me? Check out my office hours and contact information here.\nOffice hours Choose an available time slot to book an online Zoom appointment:\nE-mail rik.blok@ubc.ca Go ahead, fire off an email if you have a question or want to meet outside of my regular office hours (above). It may take me a while to get back to you, depending on my workload.\nPhone 604-736-6343 Feel free to phone me at home anytime. Leave a message if I’m not around.\nSnail mail Rik Blok, Sessional Lecturer Computer Science, UBC 201 - 2366 Main Mall Vancouver, BC, Canada V6T 1Z4 I don’t check my mailbox regularly so please let me know if you’ve mailed me something.",
    "description": "Want to book an appointment or reach me?  Check out my office hours and contact information here.",
    "tags": [],
    "title": "Contact Rik",
    "uri": "/~rikblok/teaching/contact/index.html"
  },
  {
    "breadcrumb": "Research ramblings \u003e My research",
    "content": "Work I’ve presented for feedback at seminars, lab meetings, and guest lectures.\nBlok (2003)Self-affine timeseries analysis. Guest lecture for U.B.C. Physics 510: Stochastic Processes in Physics\nBlok (2002)Rock, paper and scissors in space: A demonstration of R2DToo.\nBlok (2002)Statistical properties of financial timeseries\nBlok (2001)Can memes drive genes?\nBlok (2000)On the nature of the stock market: Simulations and experiments. Final PhD oral defense\nBlok (2000)On the nature of the stock market: Simulations and experiments. Departmental PhD oral defense\nBlok (1998)Modelling intentionality: The gambler. Presentation for UBC Phys 510\nBlok (1998)Extra! Extra! Critical update on ‘Life’. Presentation for Peter Wall Inst. Adv. Science, Crisis Points Group, UBC",
    "description": "Work I’ve presented for feedback at seminars, lab meetings, and guest lectures",
    "tags": [],
    "title": "Presented",
    "uri": "/~rikblok/research/rik/presented/index.html"
  },
  {
    "breadcrumb": "",
    "content": "I spend a lot of time around computers, both at work and play. Yes, I’m a card-carrying geek 😉 Here’s what I’ve picked up over the years.",
    "description": "I spend a lot of time around computers, both at work and play. Yes, I’m a card-carrying geek 😉  Here’s what I’ve picked up over the years.",
    "tags": [],
    "title": "Computational capers",
    "uri": "/~rikblok/compute/index.html"
  },
  {
    "breadcrumb": "Academic anecdotes",
    "content": "You reached out to me and now you’re wondering, “That ahle! Why hasn’t Rik got back to me?” If I’m busy I just may not have had a chance yet. So check out my current workload for yourself. Automatically generated from the number of emails waiting in my inbox.\n​\r1 week\r2 months\r1 year\r10 years\rall time\rChart shows daily maximum workload.\nChart shows daily maximum workload.\nChart shows weekly maximum workload.\nChart shows 3-month maximum workload.\nChart shows 3-month maximum workload.\nUnder light workloads expect a response within a few days. I should be able to get back to you within a week under moderate workloads. But when my workload is heavy it could take a few weeks. Also check my schedule: I may be in a meeting or out of town.",
    "description": "View my historical workload, automatically generated from the emails waiting in my inbox.",
    "tags": [],
    "title": "Workload",
    "uri": "/~rikblok/teaching/workload/index.html"
  },
  {
    "breadcrumb": "",
    "content": "Some interesting (to me!) mathematical puzzles and problems I’ve come across.\nEuler's constant (2014)I found a sequence that converges to Euler’s constant faster than Bernoulli’s formula.\nShared gas (2002)My wife and I live in a twenty eight unit condominium which shares the cost of natural gas. At what price level can we expect the residents to switch from heating with gas to heating with electricity?\nThe Pythagorean theorem (1997)I’ve been puzzling over a proof for this for years, and it finally dawned on me. (Eureka!) It’s all in how you draw it…",
    "description": "Some interesting (to me!) mathematical puzzles and problems I’ve come across.",
    "tags": [],
    "title": "Mathematical musings",
    "uri": "/~rikblok/math/index.html"
  },
  {
    "breadcrumb": "Academic anecdotes",
    "content": "Here are some recent courses I’ve taught.\nUBC CPSC 110Computation, Programs, and Programming\nFundamental program and computation structures. Introductory programming skills. Computation as a tool for information processing, simulation and modelling, and interacting with the world.\nUBC CPSC 107Systematic Program Design\nFundamental computation and program structures. Continuing systematic program design from CPSC 103.\nUBC ISCI 320Research Development Project\nRetreat to develop skills in writing scientific research proposals. Emphasis on formulating and testing hypotheses to explain observations.",
    "description": "Here are some recent courses I’ve taught.",
    "tags": [],
    "title": "Recent courses",
    "uri": "/~rikblok/teaching/current/index.html"
  },
  {
    "breadcrumb": "",
    "content": "I am a theoretical statistical physicist by training and a complexologist by nature. The common thread throughout my research is the search for common features of complex, irreducible systems.\nTraditionally, science approaches a problem by breaking it into parts and solving each part separately. In some cases, even when the individual pieces are well understood, the interactions between them will lead to surprising outcomes. Many important and diverse systems exhibit this irreducibility: earthquakes, ecosystems, stock markets, weather, computer networks, the immune system, the brain, forest fires, et cetera. Traditional scientific methods are ill-equipped to cope with these complex systems so my approach is to use novel tools such as nonequilibrium statistical physics theory and computer simulations to further our understanding.\nMy researchSee also my Google Scholar profile or my Zotero library.\nPublishedMy peer-reviewed and published articles\nPresentedWork I’ve presented for feedback at seminars, lab meetings, and guest lectures",
    "description": "I am a theoretical statistical physicist by training and a complexologist by nature. The common thread throughout my research is the search for common features of complex, irreducible systems.",
    "tags": [],
    "title": "Research ramblings",
    "uri": "/~rikblok/research/index.html"
  },
  {
    "breadcrumb": "Academic anecdotes",
    "content": "Here are some courses I’ve taught in the past. These pages are not maintained and may contain broken links.\nUBC ISCI 344 (2016)Game Theory in Economics and Evolution (Fall 2016))\nExploration of human and animal interactions: integrating evolutionary and economic perspectives to investigate individual and social behaviour.\nUBC ISCI 422 (2009)Models in Science (Fall 2009)\nMeaning, nature, use, strengths and limitations of models as investigative tools in all scientific disciplines. Detailed investigation of selected model systems from different scientific disciplines.\nUBC PHYS 102 (2003)Electricity, Light and Radiation (Summer 2003)\nIntroduction to optics, electricity and magnetism, electric circuits, radioactivity, including biological applications.\nUBC PHYS 153 (2000)Elements of Physics (Winter 2000)\nThermometry, thermal properties of matter, heat, oscillations, waves, sound, wave optics; geometrical optics, elementary electricity and magnetism, simple DC and AC circuits.",
    "description": "Here are some courses I’ve taught in the past.",
    "tags": [],
    "title": "Old courses",
    "uri": "/~rikblok/teaching/past/index.html"
  },
  {
    "breadcrumb": "",
    "content": "Science is both my work and my play. That doesn’t mean I’m particularly bright or hard-working, just that I’m curious. Because that’s the main ingredient for doing good science. (A healthy dose of skepticism helps, too.)",
    "description": "Science is both my work and my play. That doesn’t mean I’m particularly bright or hard-working, just that I’m curious. Because that’s the main ingredient for doing good science. (A healthy dose of skepticism helps, too.)",
    "tags": [],
    "title": "Scientific scribblings",
    "uri": "/~rikblok/science/index.html"
  },
  {
    "breadcrumb": "Research ramblings",
    "content": "See also my Google Scholar profile or my Zotero library.\nPublishedMy peer-reviewed and published articles\nDoebeli, Blok, Leimar \u0026 Dieckmann (2007)Multimodal pattern formation in phenotype distributions of sexual populations\nPineda-Krch, Blok, Dieckmann \u0026 Doebeli (2007)A tale of two cycles - distinguishing quasi-cycles and limit cycles in finite predator-prey populations\nKillingback, Blok \u0026 Doebeli (2006)Scale-free extinction dynamics in spatially structured host–parasitoid systems\nBlok (2000)On the nature of the stock market: Simulations and experiments\nBlok \u0026 Bergersen (1999)Synchronous versus asynchronous updating in the “game of Life”\nBlok \u0026 Bergersen (1997)Effect of boundary conditions on scaling in the “game of Life”\nPresentedWork I’ve presented for feedback at seminars, lab meetings, and guest lectures\nBlok (2003)Self-affine timeseries analysis. Guest lecture for U.B.C. Physics 510: Stochastic Processes in Physics\nBlok (2002)Rock, paper and scissors in space: A demonstration of R2DToo.\nBlok (2002)Statistical properties of financial timeseries\nBlok (2001)Can memes drive genes?\nBlok (2000)On the nature of the stock market: Simulations and experiments. Final PhD oral defense\nBlok (2000)On the nature of the stock market: Simulations and experiments. Departmental PhD oral defense\nBlok (1998)Modelling intentionality: The gambler. Presentation for UBC Phys 510\nBlok (1998)Extra! Extra! Critical update on ‘Life’. Presentation for Peter Wall Inst. Adv. Science, Crisis Points Group, UBC",
    "description": "See also my Google Scholar profile or my Zotero library.",
    "tags": [],
    "title": "My research",
    "uri": "/~rikblok/research/rik/index.html"
  },
  {
    "breadcrumb": "Academic anecdotes \u003e Recent courses",
    "content": "",
    "description": "Computation, Programs, and Programming\nFundamental program and computation structures. Introductory programming skills. Computation as a tool for information processing, simulation and modelling, and interacting with the world.",
    "tags": [],
    "title": "UBC CPSC 110",
    "uri": "/~rikblok/teaching/current/cpsc110/index.html"
  },
  {
    "breadcrumb": "Academic anecdotes \u003e Recent courses",
    "content": "",
    "description": "Systematic Program Design\nFundamental computation and program structures. Continuing systematic program design from CPSC 103.",
    "tags": [],
    "title": "UBC CPSC 107",
    "uri": "/~rikblok/teaching/current/cpsc107/index.html"
  },
  {
    "breadcrumb": "Academic anecdotes \u003e Recent courses",
    "content": "",
    "description": "Research Development Project\nRetreat to develop skills in writing scientific research proposals. Emphasis on formulating and testing hypotheses to explain observations.",
    "tags": [],
    "title": "UBC ISCI 320",
    "uri": "/~rikblok/teaching/current/isci320/index.html"
  },
  {
    "breadcrumb": "",
    "content": "",
    "description": "",
    "tags": [],
    "title": "Categories",
    "uri": "/~rikblok/categories/index.html"
  },
  {
    "breadcrumb": "",
    "content": "",
    "description": "",
    "tags": [],
    "title": "Tags",
    "uri": "/~rikblok/tags/index.html"
  }
]
