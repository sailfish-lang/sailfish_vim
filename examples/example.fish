/* 
   test
*/

# yo

// export definition
exp dec dictionary someDict <[ int : str ]> new {1 : "hello"}

dec list someList <[ flt ]> new [1.0]

fun foo
<- void
-> void
{
     display("Hello World!")
     return i + 10.0
}

start {
    foo = 10 == true and 2 or !4 % 7

    if |10 - 11 != 2| {} else { }
}
