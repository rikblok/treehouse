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
    "breadcrumb": "Academic anecdotes \u003e Old courses",
    "content": "",
    "description": "Electricity, Light and Radiation (Summer 2003)\nIntroduction to optics, electricity and magnetism, electric circuits, radioactivity, including biological applications.",
    "tags": [],
    "title": "UBC PHYS 102 (2003)",
    "uri": "/~rikblok/teaching/past/phys102/index.html"
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
    "breadcrumb": "Academic anecdotes \u003e Old courses",
    "content": "",
    "description": "Elements of Physics (Winter 2000)\nThermometry, thermal properties of matter, heat, oscillations, waves, sound, wave optics; geometrical optics, elementary electricity and magnetism, simple DC and AC circuits.",
    "tags": [],
    "title": "UBC PHYS 153 (2000)",
    "uri": "/~rikblok/teaching/past/phys153/index.html"
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
    "content": "I am a theoretical statistical physicist by training and a complexologist by nature. The common thread throughout my research is the search for common features of complex, irreducible systems.",
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
