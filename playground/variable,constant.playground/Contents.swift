import UIKit

class Optional{
    var optionalString:String? = "hello"
    func hello(){
        print(optionalString!)
    }
}

var option = Optional()
option.hello()

