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
    
### Projects
+ [Top SW projects written in Haskell](https://serokell.io/blog/top-software-written-in-haskell)

-   One major downside, however, is that reasoning about time and space
    usage becomes much more complicated!
    
+ [Why Haskell?](https://www.gtf.io/musings/why-haskell)    
+ [why it's worth learning - 2013](https://spin.atomicobject.com/2013/03/05/why-haskell/)
+ [why not worth using](https://metarabbit.wordpress.com/2017/05/02/i-tried-haskell-for-5-years-and-heres-how-it-was/)  see also [YN comments](https://news.ycombinator.com/item?id=14266462)
+ [A Dictionary of Single-Letter Variable Names](http://jackkelly.name/blog/archives/2024/10/12/a_dictionary_of_single-letter_variable_names/)
+ [audio-based programming languages](https://bzogrammer.substack.com/p/spoken-programming-languages)
+ [HLearn: A Machine Learning Library](https://izbicki.me/public/papers/tfp2013-hlearn-a-machine-learning-library-for-haskell.pdf)
+ [Deep Learning library](https://github.com/HuwCampbell/grenade)
+ [Haskell fan site](http://www-cs-students.stanford.edu/~blynn/haskell/)
+ [Haskell problems for a new decade](http://www.stephendiehl.com/posts/decade.html)
+ [Haskell in Production](https://serokell.io/blog/haskell-in-production-channable)
+ [Dex](https://github.com/google-research/dex-lang) - research language for array processing
+ [IHP live reloading](https://ihp.digitallyinduced.com/blog/2020-08-10-ihp-live-reloading.html)
+ [batteries-included haskell web framework](https://ihp.digitallyinduced.com/blog/c479f341-1374-496a-96d6-7af647005b21-ihp-1-0)
+ [Okapi](https://www.okapi.wiki/) - microweb framework

+ [Semi-dynamic UIs generator](https://github.com/pkamenarsky/concur-static)
+ [UK passport application](https://jameshaydon.github.io/passport/)

+ [Hackett](https://github.com/lexi-lambda/hackett)
+ [Programming R using Hackell](https://www.tweag.io/blog/2015-09-08-programming-r-at-native-speed-in-haskell/)
+ [Haskell links, frameworks, libraries and software](https://github.com/krispo/awesome-haskell)
+ [Pure functions and strong types](https://www.simplehaskell.org/)
+ [PL- Haskell](https://github.com/ed-o-saurus/PLHaskell) - "procedural language" extension of PostgreSQL allowing the execution of code in Haskell within SQL code.
+ [Packed Data support in Haskell](https://arthi-chaud.github.io/posts/packed/)
+ [Solving LinkedIn Queens with Haskell](https://imiron.io/post/linkedin-queens/)



This Java/C-like program: 
        int acc = 0;
        for ( int i = 0; i < lst.length; i++ ) {
           acc = acc + 3 * lst[i];
        }
    
Translates in haskell to:
    sum (map (3*) lst)
    

    
