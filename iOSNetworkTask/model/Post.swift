


import Foundation

struct Post: Decodable{

    var id: Int?
    var name: String?
    var salary: String?
    var age: Int?
    
    init() {
        
    }
    
    init(name: String, salary: String, age: Int){
        self.id = 1
        self.salary = salary
        self.name = name
        self.age = age
    }
    
}
