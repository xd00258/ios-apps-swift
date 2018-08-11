////: Playground - noun: a place where people can play
//
import UIKit
//
//var str = "Hello, playground"   //var can change values
//
//let otherStr = "lmao"   //lets cant change values
//
//
////Strings
//let name = "lmao"
//
//print("hi " + name)
//
//
////Integers
//let myInt = 123
//print("myInt has value \(myInt)")
//
//var age = "ayy"
//
//print("My name is \(age) and I am \(name) years old")
//
////Doubles and Floats
//var a:Double = 3.14159
//var b:Float = 3.1416
//var c = 3.14
//
//print(a/c)
//
//print(Double(myInt) + c)    //casting
//
////Boolean
//var gameOver = false
//var gameOverString = String(gameOver)
//
//var lol:Double = 5.76
//var lmao:Int = 8
//
//print("The product of 5.76 and 8 is: \(lol * Double(lmao))")


////Array
//var array = [35, 36, 5, 2]
//print(array[0])
//print(array.count)
//array.append(99)
//array.remove(at: 2)
//array.sort()
//print(array)
//
//var arr = [3.87, 7.1, 8.9]
//arr.remove(at:1)
//arr.append(arr[0] * arr[1])
//print(arr)
//
//let mixArray = ["Rob", 35, true] as [Any]
//let stringArray = [String]()
//var intArray = [Int]()  //empty
//intArray.append(1)
//print(intArray)
//
//
////Dictionary
//var dictionary = ["computer":"something to play maple story on", "coffee": "best drink ever"]
//print(dictionary["computer"]!)
//print(dictionary.count)
//dictionary["pen"] = "Old fashioned writing implement"
//dictionary.removeValue(forKey:"computer")
//print(dictionary)
//var gameCharacters = [String: Decimal]()
//gameCharacters["ghost"] = 12.3
//
//var menu = ["pizza":10.99, "ice cream":4.99, "salad":7.99]
//print("The total cost of my meal is: " + String(menu["pizza"]! + menu["salad"]!))


////if statements
//let age = 23
//
//if age > 18 {
//    print ("you can play!")
//}
//else {
//    print ("you're too young")
//}
//
//let name = "lol"
//if name == "lmao"{
//print("hi " + name)
//}
//else if name == "lol"{
//    print("Sorry, " + name + ", you're not lmao")
//}
//if name == "lmao" || name == "lol"{
//    print("ayy")
//}
//
//var username = "Victorique"
//var password = "asd"
//
//if username == "Victorique" && password == "asd" {
//    print("both correct")
//else if username == "Victorique" && password != "asd"{
//    print("password is incorrect")
//}
//else if username != "Victorique" && password == "asd"{
//print("username is incorrect")
//}
//else{
//    print("both inccorrect")
//}

////While loops
//var i = 1
//while i <= 20 {
//    print(i * 7)
//    i = i+1
//}
//
////for loops
//for x in 1 ... 3 {
//    print("hi \(x)")
//}
//var j = 0
//var arr = [7,23,98,1,0,763]
//while j < arr.count{
//    arr[j] = arr[j] + 1
//    j = j+1
//}
//print(arr)

//for loops
//let array = [8,5,8,1]
//for number in array{
//    print(number)
//}
//var arr = ["lmao","ayy","lol","yeye"]
//for word in arr{
//    print ("Hi " + word)
//}
//
//var numbers = [7,2,9,4,1]
//
//for (index, value) in numbers.enumerated() {
//    numbers[index] += 1
//}

//var a:[Double] = [8,7,19,28]
//for (index, value) in a.enumerated(){
//    a[index] = value / 2
//}
//print(a)

////classes and objects
//class Ghost{
//    
//    var isAlive = true
//    
//    var strength = 9
//    
//    func kill(){
//        isAlive = false
//    }
//    func isStrong() -> Bool {
//        if strength > 10{
//            return true
//        }
//        else{
//            return false
//        }
//    }
//}
//
//var ghost = Ghost()
//print(ghost.strength)
//ghost.strength = 99
//print (ghost.strength)
//print(ghost.isAlive)
//ghost.kill()
//print(ghost.isAlive)
//
//print (ghost.isStrong())

////OPTIONAL
//var number: Int?
//print (number)
//
//let userEnteredText = "3"
//
//let userEnteredInteger = Int(userEnteredText)
//
//if let catAge = userEnteredInteger{             //TESTS IF THERES A VALUE (NOT NULL)
//    print(catAge * 7)
//}
//else{
//    //show error message
//}

//
////PRIME
//var number = 4
//
//var isPrime = true
//
//var i = 2
//if number == 1 {
//    isPrime = false
//}
//while i < number {
//    
//    if number % i == 0 {
//        isPrime = false
//    }
//    i += 1
//}
//
//print (isPrime)



//
////String manipulations
//
//var str = "Hello"
//var newString = str + " lmao"
//
//for character in newString.characters {
//    print(character)
//}
//
//let newTypeString = NSString(string: newString)
//
//newTypeString.substring(to: 5)
//
//newTypeString.substring(from: 4)
//
//NSString(string: newTypeString.substring(from: 5)).substring(to: 3)         //combined both to get in between
//
//newTypeString.substring(with: NSRange(location: 5, length: 3))              //same as above
//
//if newTypeString.contains("lmao") {
//    print ("newTypeString contains lmao")
//}
//
//newTypeString.components(separatedBy: " ")                                  //tokenizer
//
//newTypeString.uppercased
//
//newTypeString.lowercased


