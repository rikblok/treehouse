+++
date = '2017-10-06T16:34:42-08:00'
title = "Mandelbrot Set (2017)"
type = "section"
weight = -20171006
summary = """Explore the Mandelbrot set and some related fractals."""
bibFile = "bib-zotero-better-cson.json"
+++

A [NetLogo] {{< cite "wilenskyNetLogo1999" >}} model by Rik Blok.

Explore the [Mandelbrot Set](https://en.wikipedia.org/wiki/Mandelbrot_set) and these related fractals:

  * [Multibrot set](https://en.wikipedia.org/wiki/Multibrot_set)
  * [Mandelbar set](https://en.wikipedia.org/wiki/Tricorn_%28mathematics%29)
  * [Burning ship](https://en.wikipedia.org/wiki/Burning_Ship_fractal)


<p align="center"><iframe title="" src="https://netlogoweb.org/web?https://raw.githubusercontent.com/rikblok/NetLogo-models/master/mandelbrotset-web.nlogo" style="width:702px; height:706px"></iframe></p>


## 1 Demonstration

<iframe title="" src="https://www.youtube.com/embed/kgoaqCKEzNk" style="width:640px; height:480px"></iframe>

This movie was made by turning on the **record-png** switch and the **zoom-every** button, and setting the **jump-size** to 1%.  The sequence of [PNG images](https://en.wikipedia.org/wiki/Portable_Network_Graphics) were stitched together and set to [Rossini's William Tell Overture Finale](https://en.wikipedia.org/wiki/William_Tell_Overture) with Windows Live Movie Maker.


## 2 Mappings

Each fractal is defined by a [function](https://en.wikipedia.org/wiki/Function_%28mathematics%29) in the [complex plane](https://en.wikipedia.org/wiki/Complex_plane).  Starting with an initial value z=0, each point c in the plane is repeatedly iterated through the map, z &rarr; f(z,c).  The mapping function is characterized by an exponent, d (**d-multibrot-exp** slider in the simulation), as follows:

  * Mandelbrot: f(z,c) = z<sup>2</sup> + c (same as Multibrot with d=2)
  * Multibrot: f(z,c) = z<sup>d</sup> + c
  * Mandelbar: f(z,c) = [Conj](https://en.wikipedia.org/wiki/Complex_conjugate)(z)<sup>d</sup> + c
  * Burning ship: f(z,c) = (|[Re](https://en.wikipedia.org/wiki/Real_part)(z)| + [i](https://en.wikipedia.org/wiki/Imaginary_unit) |[Im](https://en.wikipedia.org/wiki/Imaginary_part)(z)|)<sup>d</sup> + c

A point c is excluded from the set if the value z diverges after repeated iteration.  In the simulation, excluded points are painted a color indicating how many iterations were required to decide they have diverged.  Black points indicate undecided candidates that may belong to the set.  


## 3 Other implementations and examples

This implementation of the Mandelbrot set is neither fast nor beautiful -- it's just a proof of concept and a demonstration of how to code in [NetLogo].  If you're interested in the Mandelbrot set or similar fractals, check out these excellent pages:

  * [Google's Julia Map](http://juliamap.googlelabs.com)
  * [Last Lights On](http://vimeo.com/12185093) - video of Mandelbrot zoom to 10<sup>228</sup>

## 4 References

{{< bibliography cited >}}


[NetLogo]: http://ccl.northwestern.edu/netlogo/

