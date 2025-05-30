+++
date = '2018-01-06T16:34:42-08:00'
title = "Aquaworld Radiation Balance (2018)"
type = "section"
weight = -20180106
summary = """This simple radiation balance model shows the greenhouse effect that an atmosphere can have in warming a planet.  By trapping some of the radiation emitted by the planet the atmosphere can cause the surface to become warmer than it otherwise would be."""
bibFile = "bib-zotero-better-cson.json"
+++

An [Insight Maker] model by Rik Blok.

This simple radiation balance model shows the greenhouse effect that an atmosphere can have in warming a planet.  By trapping some of the radiation emitted by the planet the atmosphere can cause the surface to become warmer than it otherwise would be. 

<p align="center"><iframe title="" src="https://insightmaker.com/insight/3HqOIKV2uqUXE20h9hisdP/embed?topBar=0&sideBar=0&zoom=1" style="width:800px; height:600px"></iframe></p>

## 1 How it works

Welcome to the Aquaworld radiation balance model.  I want to show some of the factors that determine the temperature of a planet, including incoming/emitted radiation and the greenhouse effect.  Let's say the planet is like earth except it's completely covered in water.  (Earth's surface is about 2/3rds water so it's not a terrible assumption.)

Incoming solar radiation reaches the planet.[^1]  Most of the incoming radiation energy is absorbed by the planet's surface but some is reflected back out into space.  Let's take the Surface Albedo ("reflectivity") to be 0.3, the same as Earth.[^2]  The retained solar energy causes the surface to warm.  In this case, we just consider the top 100 meters of our aquaworld.[^3]

[^1]: At the mean distance of Earth from the sun the intensity is 1367 Watts per square meter {{< cite "hartmannGlobal1994" >}}.  

[^2]: The Surface Albedo is a parameter in this model.  You might explore the effect of changing its value.

[^3]: It is known that on Earth the top 100 meters of the oceans mix much quicker than the layers below {{< cite "hartmannGlobal1994" >}}.  This Mixing Height is another parameter in this model.  You can find it in the Settings.

Notice the surface temperature (shown in degrees Celsius) quickly climbs from its starting value (of absolute zero, which isn't very realistic anyway).  If the surface continued to absorb incoming solar radiation and nothing else happened the planet's temperature would keep increasing without bound.

But as the planet warms it starts to emit its own (infrared) radiation that slows the rate of warming.

If we wait longer we see that the planet reaches a steady-state temperature where the incoming and emitted radiation are balanced.

<!-- Hover your mouse over the curve to see the steady-state surface temperature.  It's pretty cold, about -20C!  (For comparison, Earth's average global temperature is about +14C.) -->

What effect does the atmosphere have?  The atmosphere is mostly transparent to solar radiation, since it is mostly in the visible wavelengths.  But it absorbs some infrared radiation, such as the radiation from the surface.  I call the fraction absorbed the "Greenhouse Effect".

As we saw for the surface, as the atmosphere absorbs energy it warms up.  The warming atmosphere emits its own radiation, like a black body.  This time, the radiation is emitted both upwards -- escaping out into space -- and back down to the surface, warming it further.  The greenhouse effect makes the atmosphere acts like a blanket, trapping some of the heat emitted by the surface and heating it up.

<!-- Let's consider the limit where the atmosphere absorbs all of the emitted surface radiation.  As you can see, this causes the surface to warm to +30C, warmer than Earth (+14C)! -->

Notice also that the atmosphere, like your blanket in a cold room, is colder than what's underneath.

Now it's your turn.  Can you adjust the strength of the greenhouse effect (the slider on the right) to make the surface temperature match Earth's (+14C)?  

If so, what is the resultant atmosphere temperature predicted by the model?  How well does it compare with actual observations of temperatures near the top of the atmosphere?

Other things to try: Change the model parameters (in Settings).  Can you represent Mars, Venus, or other planets in the solar system?  How?  Or why not?


### 1.1 Parameters

This model is deliberately simple, with just a couple parameters that are designed to be varied:

* **Greenhouse Effect**<br />The fraction of surface radiation absorbed by the atmosphere​.  The absorbed radiation heats up the atmosphere causing it to radiate out (back down to the planet and out into space).  Surface radiation that isn't absorbed continues out to space.

* **Surface Albedo**<br />The fraction of incoming solar radiation that is reflected back out to space.  Radiation that isn't reflected is absorbed by the surface.<br />"The average albedo of [Earth](https://en.wikipedia.org/wiki/Earth) is about 0.3." -- from [Wikipedia](https://en.wikipedia.org/wiki/Albedo#Terrestrial_albedo)

Besides those variables, there are a few other constants to be found in the "Settings", chosen to make *Aquaworld* similar to Earth:

* **Distance from sun**, $d$<br />"The average distance between the Earth and the Sun is 149.60 million kilometers" -- [Wikipedia](https://en.wikipedia.org/wiki/Earth%27s_orbit)

* **Mixing Height**<br />"The primary heat source for the ocean is solar radiation entering through the top surface.  Almost all of the solar energy flux into the ocean is absorbed in the top 100 m." -- {{< cite "hartmannGlobal1994" >}}.

* **Radius of planet**, $r$<br />"A globally-average value [of Earth's radius] is usually considered to be 6,371 kilometres". -- from [Wikipedia](https://en.wikipedia.org/wiki/Earth_radius)

* **Mass of atmosphere**<br />"[Earth's] atmosphere has a mass of about 5.15×10<sup>18</sup> kg," -- from [Wikipedia](https://en.wikipedia.org/wiki/Atmosphere_of_Earth)

You can change these parameters to, for example, compare Aquaworld to other planets.


## 2 Theory

The [sun's total radiation](https://en.wikipedia.org/wiki/Solar_constant#The_Sun.27s_total_radiation) output is $I_0 = 3.86×10^{26}$ Watts.  That radiation spreads out radially so the density falls off with distance from the sun as the [surface area of a sphere](https://en.wikipedia.org/wiki/Sphere#Surface_area).  A planet at a distance $d$ from the sun will receive $I_0 / (4 \pi d^2)$ radiation per unit area with the sun directly overhead.

Only the sunny side of the planet receives the insolation.  We'll assume our planet is roughly spherical but it turns out not to matter for determining the amount of energy it receives – the important factor is the size of the planet's "shadow" or cross section.  If the planet has radius $r$ (so, cross-sectional "shadow" area $\pi r^2$) then the total incoming solar radiation is 

\[
I(d,r) = I_0 \frac{\pi r^2}{4 \pi d^2} = I_0 \frac{r^2}{4 d^2}.
\]

For example, Earth receives incoming solar radiation

\[
I_{\text{Earth}} = I(149.60×10^6 \text{ km}, 6371 \text{ km}) = (3.86×10^{26} \text{ W}) \frac{(6371 \text{ km})^2}{4 (149.60×10^6 \text{ km})^2} = 1.75×10^{17} \text{ W}.
\]

----

This [system dynamics](https://en.wikipedia.org/wiki/System_dynamics) model tracks energy stored in various [stocks, and flows](https://en.wikipedia.org/wiki/Stock_and_flow) between them.  

For most settings, the surface energy (a stock) equilibrates at some level, regardless of starting energy.  To demonstrate that, we start with 0 Joules stored and see how radiation flow balances out after some time.

<!-- mostly based on HartmannGlobal1994 Fig. 2.3. -->

### 2.1 Assumptions

This model makes several important assumptions:

* Energy generated in Aquaworld's interior has a negligible influence on its energy budget.  In Section 2.1, Hartmann {{< cite "-hartmannGlobal1994" >}} states this is a valid assumption for Earth.
* The atmosphere is treated as a single, well-mixed layer.  More detailed models split the atmosphere into two or more layers.  Here is an [example](https://biocycle.atmos.colostate.edu/shiny/2layer/) with a 2-layer atmosphere.


* Convective heat transfer is ignored.  Here is an [example](https://biocycle.atmos.colostate.edu/shiny/2layer/) that incorporates convection of heat from the surface to the atmosphere.


## 3 References

{{< bibliography cited >}}



## 4 Footnotes

[Insight Maker]: https://insightmaker.com/
