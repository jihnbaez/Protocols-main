/*:
 ## Exercise - Adopt Protocols: CustomStringConvertible, Equatable, and Comparable
 
 Create a `Human` class with two properties: `name` of type `String`, and `age` of type `Int`. You'll need to create a memberwise initializer for the class. Initialize two `Human` instances.
 */
class human{
    let name: String
    let age: Int
    
    init(name: String, age: Int){
        self.name = name
        self.age = age
    }
    
    var description: String
    {
        return "Human(name: \(name), age: \(age)"
    }
    
    static func ==(lhs: human, rhs: human) ->Bool{
        return lhs.name == rhs.name && lhs.age == rhs.age
    }
    static func < (lhs: human, rhs: human) ->Bool{
        return n1.name < n2.name
    }
}

let n1 = human(name: "John", age: 18)
let n2 = human(name: "Savir", age: 17)

/*:
 Make the `Human` class adopt the `CustomStringConvertible`. Print both of your previously initialized `Human` objects.
 */
print(n1)
print(n2)

/*:
 Make the `Human` class adopt the `Equatable` protocol. Two instances of `Human` should be considered equal if their names and ages are identical to one another. Print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are equal to eachother (using `==`). Then print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are not equal to eachother (using `!=`).
 */
print(n1 == n2)

/*:
 Make the `Human` class adopt the `Comparable` protocol. Sorting should be based on age. Create another three instances of a `Human`, then create an array called `people` of type `[Human]` with all of the `Human` objects that you have initialized. Create a new array called `sortedPeople` of type `[Human]` that is the `people` array sorted by age.
 */



import Foundation
var humans:[human] = [n1, n2]
var sortedHuman = humans.sorted(by: <)
for h in sortedHuman{
    print(h)
}


//: page 1 of 2  |  [Next: App Exercise - Printable Workouts](@next)
