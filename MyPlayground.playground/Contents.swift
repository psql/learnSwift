import UIKit

let myName = "Pasquale"
var myAge = 29
let twitterName: String = "pasql"


var colors = ["red", "green", "blue"]

colors[1]
colors.append("orange")
colors.remove(at: 1)
colors

for color in colors{
    print (color)
}

func pointToRetina(point: Int) -> Int {
    return point * 2
}

pointToRetina(point: 4)

struct UserStruct {
    var name: String
    var job: String
    var age: Int
}


var user = UserStruct(name: "Pasquale", job: "Animator", age: 29)

print(user.age, user.job)


class UserClass{
    var name: String
    var age: Int
    var hired: Bool
    
    init(name:String, age:Int, hired: Bool){
        self.name = name
        self.age = age
        self.hired = hired
    }
}


//Structs are copies, and Classes are references


var answer: String?
UILabel().text = answer


var answerString: String!

UILabel().text = answer ?? "some default"

answer = "haha"
print(answer ?? "poop")
