+++
date = '2025-01-02T10:56:32-08:00'
draft = false
title = 'On the nature of the stock market: Simulations and experiments (2000)'
summary = '''PhD Thesis, UBC

In this dissertation, two simple models of stock exchange are developed and simulated numerically. The decentralized model captures key empirical market properties, including fat-tailed returns, short-term memory in returns, and long-range volatility correlations. Significantly, these features emerge only when parameters are tuned to span the critical point, suggesting markets may self-organize near criticality...'''
weight = -20000900
bibFile = "bib-zotero-better-cson.json"
+++
<!-- Must include "bib" in filename: https://labs.loupbrun.ca/hugo-cite/usage/ -->

## PhD Thesis, UBC

<!-- 
{{< cite "blokNature2000b" >}}
 
Idea: Can I specify bibFile here or below to prevent sornetteStock1996 from being filled in here?
Can happen when I edit blok01.md, at least when running hugo server locally.
[Rik, 2025-01-02]
 -->
{{< bibliography cited >}}


### Abstract

Over the last few years there has been a surge of activity within the physics community in the emerging field of Econophysics - the study of economic systems from a physicist's perspective. Physicists tend to take a different view than economists and other social scientists, being interested in such topics as phase transitions and fluctuations.

In this dissertation two simple models of stock exchange are developed and simulated numerically. The first is characterized by centralized trading with a market maker. Fluctuations are driven by a stochastic component in the agents' forecasts. As the scale of the fluctuations is varied a critical phase transition is discovered. Unfortunately, this model is unable to generate realistic market dynamics.

The second model discards the requirement of centralized trading. In this case the stochastic driving force is Gaussian-distributed “news events” which are public knowledge. Under variation of the control parameter the model exhibits two phase transitions: both a first- and a second-order (critical).

The decentralized model is able to capture many of the interesting properties observed in empirical markets such as fat tails in the distribution of returns, a brief memory in the return series, and long-range correlations in volatility. Significantly, these properties only emerge when the parameters are tuned such that the model spans the critical point. This suggests that real markets may operate at or near a critical point, but is unable to explain why this should be. This remains an interesting open question worth further investigation.

One of the main points of the thesis is that these empirical phenomena are not present in the stochastic driving force, but emerge endogenously from interactions between agents. Further, they emerge despite the simplicity of the modeled agents; suggesting complex market dynamics do not arise from the complexity of individual investors but simply from interactions between (even simple) investors.

Although the emphasis of this thesis is on the extent to which multi-agent models can produce complex dynamics, some attempt is also made to relate this work with empirical data. Firstly, the trading strategy applied by the agents in the second model is demonstrated to be adequate, if not optimal, and to have some surprising consequences.

Secondly, the claim put forth by Sornette et al. {{< cite "-sornetteStock1996" >}} that large financial crashes may be heralded by accelerating precursory oscillations is also tested. It is shown that there is weak evidence for the existence of log-periodic precursors but the signal is probably too indistinct to allow for reliable predictions.


### [{{% icon icon="fa-solid fa-download" %}} Download](../blok00b.pdf)

Individual sections
* [Front matter](../blok00b-front.pdf)
* [Chapter 1: Introduction](../blok00b-ch1.pdf)
* [Chapter 2: Centralized Stock Exchange Model](../blok00b-ch2.pdf)
* [Chapter 3: Decentralized Stock Exchange Model](../blok00b-ch3.pdf)
* [Chapter 4: Analysis and results: Phase space](../blok00b-ch4.pdf)
* [Chapter 5: Analysis and results: Empirical results](../blok00b-ch5.pdf)
* [Chapter 6: Experiments with a hypothetical portfolio](../blok00b-ch6.pdf)
* [Chapter 7: Concluding remarks](../blok00b-ch7.pdf)
* [Bibliography](../blok00b-bib.pdf)
* [Appendix A: Discounted least-squares curve fitting](../blok00b-apa.pdf)
* [Appendix B: Sampling discrete processes](../blok00b-apb.pdf)
* [Appendix C: Long-range memory: The Hurst exponent](../blok00b-apc.pdf)
