#set document(
  title: "Spivak Calculus Notes",
  author: "Luis Victoria",
)

#import "@preview/ctheorems:1.1.3": *
#show: thmrules.with(qed-symbol: $square$)

#let theorem = thmbox("theorem", "Theorem", fill: rgb("#eeffee"))
#let corollary = thmplain(
  "corollary",
  "Corollary",
  base: "theorem",
  titlefmt: strong
)
#let definition = thmbox("definition", "Definition", inset: (x: 1.2em, top: 1em))

#let example = thmplain("example", "Example").with(numbering: none)
#let proof = thmproof("proof", "Proof")

#set page("us-letter")

= Spivak Calculus Notes
by Luis Victoria

#set heading(numbering: "1.")
#show outline.entry.where(
  level: 1
): it => {
  v(12pt, weak: true)
  strong(it)
}

#outline(indent: auto)

#pagebreak()

= Basic Properties of Numbers
#set enum(numbering: "1.i)")
1. (Associative law for addition) If $a$, $b$, and $c$ are any numbers, then
$ a + (b + c) = (a + b) + c $

2. (Existence of an additive identity) If $a$ is any number, then
$ a + 0 = 0 + a = a $

3. (Existence of additive inverses) For every number $a$, there is a number $-a$ such that
$ a + (-a) = (-a) + a = 0 $

4. (Commutative law for addition) If $a$ and $b$ are any numbers, then
$ a + b = b + a $

5. (Associative law for multiplication) If $a$, $b$, and $c$ are any numbers, then
$ a dot (b dot c) = (a dot b) dot c $

6. (Existence of a multiplicative identity) If $a$ is any number, then
$ a dot 1 = 1 dot a = a $
$ "Moreover;" 1 != 0 $

7. (Existence of multiplicative inverses) For every number $a != 0$, there is a number $a^(-1)$ such that
$ a dot a^(-1) = a^(-1) dot a = 1 $

8. (Commutative law for multiplication) If $a$ and $b$ are any numbers, then
$ a dot b = b dot a $

9. (Distributive law) If $a$, $b$, and $c$ are any numbers, then
$ a dot (b+c) = a dot b + a dot c $

10. (Trichotomy law) For every number $a$, one and only one of the following holds:
  + $a = 0$
  + $a in RR^+$
  + $-a in RR^+$

11. (Closure under addition) If $a, b in RR^+$, then $a+b in RR^+$

12. (Closure under multiplication) If $a, b in RR^+$, then $a dot b in RR^+$

#theorem[For all numbers $a$ and $b$, we have
$ |a + b | <= |a| + |b| $]

#pagebreak()

= Cool Discoveries
== Catalan Numbers

Consider the expression $a + b + c + d$, there are five different ways of ordering parenthesis together:

$ (a + b) + (c + d) $
$ ((a + b) + c) + d $
$ (a + (b + c)) + d $
$ a + ((b + c) + d) $
$ a + (b + (c + d)) $

We can use the *Catalan Numbers Formula* to find the total number of possible orderings of parenthesis:

$ C_n = 1/(n+1) binom(2n, n) = ((2n)!)/((n+1)!n!) = sum_(i=0)^(n-1) C_i C_(n-1-i) $

Where $C_n$ refers to the number of different possible orderings and $n$ refers to the number of variables

#align(center)[Sequence: $1, 2, 5, 14, 42, 132, 429, 1430, 4862, 16796, 58786, 208012, 742900, 2674440, 9694845, ...$]
