Collection-Each
===============

Adding ruby style each iterator to Cocoa/Cocoa touch Swift Array, Dictionary and Range classes, and `Int.times`

###Why?

Array/Dictionary and Ranges in ruby have an `each` method that accepts a block as a parameter and calls this block passing the value of the item at that index.

This method is missing in swift, By extending `Array`, `Dictionary` and `Range` classes we can implement this method.

By extending `Int` we can add `times` and `timeWithIndex`

###Usage

Array.each

	//Iterate and pass the item
    ["Apples", "Oranges", "Mangos"].each{ println("Item \($0)") }
    
Array.eachWithIndex

	//Iterate and pass the item and its index
    ["Apples", "Oranges", "Mangos"].eachWithIndex{ println("Item \($0) at Index \($1)") }

Dictionary.each

	//Iterate and pass the item
    ["key1":1, "Key2":2, "Key3":3].each{ println("Key \($0) at Value \($1)") }
    
Int.times

	3.times{ /* do something */ }
	
Int.times

	3.timesWithIndex{ println("Index \($0)") }
    
Range.each

	//Iterate and pass the index
	(1...10).each{ println("Index \($0)") }
	
###How to add?
Just add `Collection+Each.swift` to your project and the extensions will be enabled in all your `.swift` files