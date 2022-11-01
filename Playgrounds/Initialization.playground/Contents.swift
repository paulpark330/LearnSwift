import UIKit

class Restaurant {
    let name: String
    let location: String
    var website: String?
    
    init(name: String, location: String, website: String?) {
        print("restaurant: \(name) initialized")
        self.name = name
        self.location = location
        self.website = website
    }
    
    convenience init(managerName: String, name: String, location: String, website: String) {
        print(managerName)
        self.init(name: name, location: location, website: website)
    }
}

let hankoCafe = Restaurant(name: "Hanko Cafe", location: "Irvine, CA", website: "hankocafe.com")


let hankoRestaurant = Restaurant(managerName: "Sue", name: "Hanko Foods", location: "San Diego, CA", website: "hankorestaurant.com")

class ButtonWithIcon: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class ViewController: UIView {
    
}
