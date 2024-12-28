+++
date = '1997-12-27T23:05:16-08:00'
linkTitle = 'The Pythagoran theorem'
title = 'Proof of the Pythagoran theorem'
type = "section"
weight = 30
summary = "I've been puzzling over a proof for this for years, and it finally dawned on me. (Eureka!) It's all in how you draw it..."
+++


{{% notice style="tip" title="Pythagorean theorem" icon="fa-solid fa-lightbulb" %}}
In a right triangle the square of the hypotenuse is equal to the sum of the squares of the sides containing the right angle. 
{{% /notice %}}

I've been puzzling over a proof for this for years, and it finally dawned on me. (Eureka!) It's all in how you draw it...


## Proof #1

![https://docs.google.com/drawings/d/e/2PACX-1vRy7LCnp9BiaXX6iNwFM36CUb_8rxybJppPkCT8NK60fyrj0gRlry6KXHVWNKdIXYEq0-MOYrxQbpxX/pub?w=378&h=381](https://docs.google.com/drawings/d/e/2PACX-1vRy7LCnp9BiaXX6iNwFM36CUb_8rxybJppPkCT8NK60fyrj0gRlry6KXHVWNKdIXYEq0-MOYrxQbpxX/pub?w=378&h=381)

Given the triangle formed by $a$, $b$ (choosing $b\geq a$) and $c$, we can construct a square with total area $c^2$. As shown, we can fit four triangles, each with area $a b/2$, into the large square, leaving an inner square with area $(b-a)^2$. Thus, the total area of the large square is

$$
\begin{array}{rl}
  c^2 & = 4 (a b/2) + (b-a)^2 \\
      & = 2 a b + a^2 + b^2 - 2 a b \\
      & = a^2 + b^2 .
\end{array}
$$

Hence, the Pythagorean theorem.


## Proof #2

![https://docs.google.com/drawings/d/e/2PACX-1vRIlckqYK8M0Qg22Ufgi2bv5LLNiSgroSoGceoIu9hapHHvhzgCSn-i5MdOKd2eIPzbm2tXXfAbdF0U/pub?w=302&h=132](https://docs.google.com/drawings/d/e/2PACX-1vRIlckqYK8M0Qg22Ufgi2bv5LLNiSgroSoGceoIu9hapHHvhzgCSn-i5MdOKd2eIPzbm2tXXfAbdF0U/pub?w=302&h=132)

I found another proof, which [Jim Loy](http://web.archive.org/web/20020929144339/http://www.jimloy.com/) told me is due to Legendre. It relies on recognizing that you can subdivide a triangle forming two sub-triangles *similar* to each other and the original. (I won't prove this.) Then, from the figure above, and from the properties of similar triangles

$$
  \frac{a}{e} = \frac{c}{a} \text{ thus } a^2 = c e
$$

and

$$
  \frac{b}{f} = \frac{c}{b} \text{ thus } b^2 = c f.
$$

Adding the two results together gives

$$
\begin{array}{rl}
  a^2 + b^2 & = c e + c f \\
            & = c (e+f) \\
            & = c^2 .
\end{array}
$$

Hence, the Pythagorean theorem. 

 --- Rik Blok, 1997
