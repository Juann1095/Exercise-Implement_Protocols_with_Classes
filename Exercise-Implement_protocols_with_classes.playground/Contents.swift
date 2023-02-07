//DEFINE CUSTOM PROTOCOL AND DEFINE PROPERTIES REQUIRMENTS
protocol Dish {
    var preparationMinutes:Int {get set}
}

//DEFINE PROTOCOL METHODS REQUIRMENTS

protocol prepare{
    func prepare()
    func plate(artisticLevel:Int)
}

//ADOPT THE CUSTOM PROTOCOL IN A CLASS,CONFORM TO THE PROTOCOL PROPERTIES REQUIRMENTS AND CREATE A MEMBERWISE INITIALIZER

class MainDish:Dish,prepare {
   
    
    var name:String
    var preparationMinutes: Int
   
    init(name:String,preparationMinutes:Int) {
        self.name=name
        self.preparationMinutes=preparationMinutes
    }
    //Implement Prepare Protocol
    func prepare() {
        print("Preparing \(name) for \(preparationMinutes) minutes")
    }
    
    func plate(artisticLevel: Int) {
        print("Plating artistic level: \(artisticLevel)")
    }
    
}

//Instantiate a MainDish class instance
let superspaguetti = MainDish(
    name:"Super Spaguetti",
    preparationMinutes:35
    
)

//Calling the Prepare Method
superspaguetti.prepare()
//Calling the plate(artisticLevel:) method
superspaguetti.plate(artisticLevel: 10)

