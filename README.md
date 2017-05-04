# Alg-H

To install:
https://www.haskell.org/platform/

Haskell is a *lazy, functional* programming language created in the late 1980s 

-   Functions are *first-class*, that is, functions are values which can
    be used in exactly the same ways as any other sort of value.

-   The meaning of Haskell programs is centered around *evaluating
    expressions* rather than *executing instructions*.

-   It is easy to define a new *control structure* just by defining a
    function.

-   It is possible to define and work with *infinite data structures*.

-   It enables a more compositional programming style (see *wholemeal
    programming* below).

-   One major downside, however, is that reasoning about time and space
    usage becomes much more complicated!
    
    
+ [why it's worth learning - 2013](https://spin.atomicobject.com/2013/03/05/why-haskell/)
+ [why not worth using](https://metarabbit.wordpress.com/2017/05/02/i-tried-haskell-for-5-years-and-heres-how-it-was/)  see also [YN comments](https://news.ycombinator.com/item?id=14266462)


This Java/C-like program: 
        int acc = 0;
        for ( int i = 0; i < lst.length; i++ ) {
           acc = acc + 3 * lst[i];
        }
    
Translates in haskell to:
    sum (map (3*) lst)
    

    
