//: Playground - noun: a place where people can play

import UIKit


//------------------------------------------------------Variables-----------------------------------------------------------

//var -> to declare a variable, is muttable number
var str = "Hello, playground"

var number = 100
number = 50
print(number)

//let -> to declare a constant, is immutable number
let letNumber = 200
print(letNumber + number)

//------------------------------------------------------Data Types----------------------------------------------------------

var a:String = "Hello World!"
var b:Int = 23
var c:Float = 1.3
var d:Double = 12.7678

a = a.uppercased()

print("\(String(b)) " + a)
print(Int(d))
print(Int(round(d)))

//------------------------------------------------------If Statements-------------------------------------------------------

var bro = 2
var sis = 5

if bro < 4 && sis == 5 {
    print("only if bro s less than 4")
}
else if bro > 10 || sis == 5 {
    print("only if bro is more than 10")
}
else {
    print("only if bro is between 4 until 10")
}

//------------------------------------------------------Switch Statements---------------------------------------------------

let someCharacter:Character = "c"

switch someCharacter {
    case "a":
        print("this is a")
    case "b":
        print("this is b")
    default:
        print("this is another")
}

//------------------------------------------------------Loop----------------------------------------------------------------

var name:String = "Ade Wija Nugraha"

for index in 1...5 {
    print("hello \(index)")
}

for char in name.characters{
    print(char)
}

var counter = 5
while counter < 10 {
    print("while")
    counter += 1
}

var count = 6;
repeat {
    print("repeat while")
    count -= 1
} while count > 0

//------------------------------------------------------Function-----------------------------------------------------------

func addTwoNumbers(){
    let a:Int = 1
    let b:Int = 2
    let c:Int = a + b
    print(c)
}
addTwoNumbers()

func subsractTwoNumbers() -> Int{
    let a:Int = 1
    let b:Int = 2
    let c:Int = a - b
    return c
}
let sub = subsractTwoNumbers()
print(sub)

func addTwoNumbersWithArg(using number1: Int, and number2: Int) -> Int{
    let a:Int = number1
    let b:Int = number2
    let c:Int = a + b
    return c
}
let sum = addTwoNumbersWithArg(using: 2, and: 3)
print(sum)

func timesTwoNumbersWithArg(_ number1: Int, _ number2: Int) -> Int{
    let a:Int = number1
    let b:Int = number2
    let c:Int = a * b
    return c
}
let times = timesTwoNumbersWithArg(2, 3)
print(times)

func makan(nama: String, porsi: Int, sudahMakan: Bool){
    if sudahMakan{
        print("\(nama) sudah makan \(porsi) porsi")
    } else {
        print("\(nama) belum makan")
    }
}
makan(nama: "kiki", porsi: 2, sudahMakan: true)

//------------------------------------------------------Class----------------------------------------------------------------

class BlogPost {
    var title = ""
    var body = ""
    var author = ""
    var numberOfComments = 0
    
    func addComments() {
        numberOfComments += 1
    }
}

let myPost = BlogPost()
myPost.title = "Dimana Budi"
myPost.body = "Pada suatu hari"
myPost.author = "me"
myPost.addComments()
print(myPost.numberOfComments)

let myPost2 = BlogPost()
myPost2.title = "Sangkuriang"
myPost2.author = "me too"
myPost2.body = "Krik"
print(myPost2.numberOfComments)

//------------------------------------------------------Instance+Inheritance--------------------------------------------------

class Car {
    var topSpeed = 200
    
    func drive() {
        print("Driving at \(topSpeed)")
    }
    
}

class FutureCar : Car {
    
    override func drive() {
        super.drive()
        print("Drving and rocket boosting at \(topSpeed + 50)")
    }
    
    func fly() {
        print("Flying")
    }
}

let myRide = Car()
print(myRide.topSpeed)
myRide.drive()


let myNewRide = FutureCar()
myNewRide.fly()
myNewRide.drive()

//------------------------------------------------------Initializer-----------------------------------------------------------

class Person {
    var age:Int = 0
    var name:String = ""
    
    //Designated Initializer
    init() {
        
    }
    
    init(_ name:String, _ age:Int) {
        self.name = name
        self.age = age
    }
    
    //Convenience Initializer
    convenience init(_ name:String) {
        self.init()
        self.name = name
        
    }
}

var person1 = Person()
person1.name
person1.age

var person2 = Person("Ade", 17)
person2.name
person2.age

let person = Person("Jhon")

//------------------------------------------------------Optionals-------------------------------------------------------------

class Person2 {
    var name = ""
}

class BlogPost2 {
    var title:String?
    var body = "yo"
    var author:Person?
}
var blog = BlogPost2()

blog.title = "cek"

//Optional Binding
if let blogTitle = blog.title {
    //Optional contains value
    print(blogTitle + " title detected")
}

//Testing for nil
if blog.title != nil {
    //Optional contains value
    print(blog.title! + " title isn't nil")
}
if blog.title == nil {
    //Optonal contains no value
    print("is nil")
}

//------------------------------------------------------Properties-------------------------------------------------------------

class Orang {
    
    var name = ""
    
}

class Posting {
    
    //ComputedProperty
    var fullTitle:String{
        
        //Check author and title aren't nil
        if title != nil && author != nil {
            return title! + " by " + author!.name
        }
        else if title != nil {
            return title!
        } else {
            return "No Title"
        }
        
    }
    var title:String?
    var body = "Halo"
    var author:Orang?
    var numberOfComments = 0
    
}

let author = Orang()
author.name = "Ade Wija"

let myPosting = Posting()
myPosting.author = author
myPosting.title = "Learn Swift"
print(myPosting.fullTitle)

//------------------------------------------------------Array------------------------------------------------------------------

var array = ["dog", "cat", "dragon"]
var emptyArray = [String]()

for counter in 0...2 {
    print("my " + array[counter])
}

for item in array {
    print("This is " + item)
}

array += ["bird", "mouse"]

array.append("snake")

array.remove(at: 1)

for item in array {
    print("Animal " + item)
}

array[0] = "Kiki"

for item in array {
    print("New animal " + item)
}

//------------------------------------------------------Dictionary------------------------------------------------------------------

//Declare Dictionary
var carDB = Dictionary<String, String>()
var carDB2 = [String : String]()

//Adding key value pairs
carDB2["JSD 123"] = "Blue Ferrari"
carDB2["ZXC 123"] = "Green Toyota"

//Retrieving data
if let cekMobil = carDB2["JSD 123"] {
    print(cekMobil)
}

carDB2["ASD 123"]

//Remove a key value pair
carDB2["JSD 123"] = nil

//Update a value for a key
carDB2["JSD 123"] = "Red Ferrari"

//Iterate Over It
for (lisence, car) in carDB2 {
    print("\(car) has a lisence : \(lisence)")
}

//------------------------------------------------------UILabel----------------------------------------------------------------

let messageLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 300, height: 50))
messageLabel.text = "Coba Aja"
messageLabel

messageLabel.backgroundColor = UIColor.orange
messageLabel.textAlignment = NSTextAlignment.center
messageLabel.layer.cornerRadius = 10.0
messageLabel.clipsToBounds = true
messageLabel
