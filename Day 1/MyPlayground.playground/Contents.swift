import UIKit

var str = "First day playground."

var number = 8_000_000

var multiLineWithBreak = """
First Line
Second Line
"""

var multiLineWithoutBreak = """
First Word \
Second Word
"""

let pi = 3.14 // Constant value
var bool = true

str = "Pi is \(pi)" // String interpolation

let value1 = "It can be any type." // Type Inference
let value2: String = "It must be a string" // Type Annotation (Explicit)

print(number)
print(multiLineWithBreak)
print(multiLineWithoutBreak)
print(type(of: pi))
print(type(of: bool))
print(str)



