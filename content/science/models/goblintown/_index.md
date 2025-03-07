+++
date = '2025-02-22T16:34:42-08:00'
title = "Escape from Goblin-town! (2025)"
type = "section"
weight = -20250222
summary = """This simulation is inspired by the Goblin-town chase scene in the film The Hobbit: An Unexpected Journey (2012)."""
bibFile = "bib-zotero-better-cson.json"
+++

A [NetLogo] {{< cite "wilenskyNetLogo1999" >}} model by Rik Blok.

This simulation is inspired by the Goblin-town chase scene in the film [The Hobbit: An Unexpected Journey (2012)](http://www.imdb.com/title/tt0903624/).


<p align="center"><iframe title="" src="https://netlogoweb.org/web?https://raw.githubusercontent.com/rikblok/NetLogo-models/master/goblin-town.nlogo" style="width:770px; height:1210px"></iframe></p>


<blockquote>
Still goblins go faster than dwarves, and these goblins knew the way better (they had made the paths themselves), and were madly angry; so that do what they could the dwarves heard the cries and howls getting closer and closer. Soon they could hear even the flap of the goblin feet, many many feet which seemed only just round the last corner. The blink of red torches could be seen behind them in the tunnel they were following; and they were getting deadly tired.

 --- [J.R.R. Tolkien, "The Hobbit"](https://books.google.ca/books?id=hFfhrCWiLSMC&pg=PA66&lpg=PA66&dq=Still+goblins+go+faster+than+dwarves,+and+these+goblins+knew+the+way+better&source=bl&ots=YDv8tHpycE&sig=3aDb3Th-DGYCjryA-J1CPXioa4I&hl=en&sa=X&ved=0ahUKEwjb18zHmpPOAhUH7oMKHaaKCHEQ6AEIJTAC#v=onepage&q&f=false)
</blockquote>

<p align="center">
<iframe title="" src="https://www.youtube.com/embed/IccbfvmsgTI" style="width:560px; height:315px"></iframe>
</p>

 The [NetLogo] model above simulates a set of platforms and bridges, shown from above. Dwarves (brown) are trying to get from the top-left corner, past the goblins (green), to the escape in the bottom-right corner. The goblins are trying to capture the dwarves before they escape. To see how it works, press setup and, after waiting a few seconds for the scene to be prepared, press go.

You'll see that the dwarves and goblins are both pretty silly – they just stumble around randomly. If a dwarf should happen to find the escape, it's just dumb luck.

Can you do better? You can edit the code in this simulation to try help the dwarves (or goblins). Click **NetLogo Code** at the bottom of the simulation and take a look at these procedures:

```lisp
to turn-dwarf
  ;;;;;; YOUR CODE GOES HERE!
  wiggle 30

end

;---------------------------------------------------------

to turn-goblin
  ;;;;;; YOUR CODE GOES HERE!
  wiggle 90

end
```

The command `wiggle` is a [procedure](https://ccl.northwestern.edu/netlogo/docs/tutorial3.html) I wrote. But it's not very useful -- it just makes the individual randomly turn left or right a bit. Have a look at the `face-…` procedures in the **NetLogo Code** above. Maybe some of those would be better? Go ahead and replace the command `wiggle` in the `turn-dwarf` or `turn-goblin` procedure, then click **Recompile Code** to try it out. Did your changes work the way you expected? (If not, see if you can figure out why not and try again 🙂) 

## Examples

[Listing 1](#list-1) shows some example `turn-dwarf` and `turn-goblin` procedures.  Notice that some `face-...` procedures only turn the individual if they're close enough to "hear" the target.  So these procedures can be called after other procedures to "override" the individual's behaviour.  For example, [Listing 1](#list-1) shows that dwarves will try to move towards the exit **except** if they hear goblins nearby; then they will try to avoid the goblins.

<div id="list-1">
{{< tabs >}}
{{% tab title="turn-dwarf" %}}
```lisp
;---------------------------------------------------------

to turn-dwarf
  ;;;;;; YOUR CODE GOES HERE!
  face-towards-escape          ; first face exit
  face-away-from-goblin-sounds ; but if hear goblins, turn away
end

;---------------------------------------------------------
```
Listing 1: Example `turn-dwarf` and `turn-goblin` procedures demonstrating how to use the `face-...` procedures.
{{% /tab %}}

{{% tab title="turn-goblin" %}}
```lisp
;---------------------------------------------------------

to turn-goblin
  ;;;;;; YOUR CODE GOES HERE!
  wiggle 90                 ; first turn up to 90 degrees left/right randomly
  face-towards-dwarf-sounds ; but if hear dwarves, turn towards
end

;---------------------------------------------------------
```
Listing 1: Example `turn-dwarf` and `turn-goblin` procedures demonstrating how to use the `face-...` procedures.
{{% /tab %}}
{{< /tabs >}}
</div>

## References

{{< bibliography cited >}}


[NetLogo]: http://ccl.northwestern.edu/netlogo/

