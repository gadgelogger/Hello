import UIKit

class Lawyer{
    func defend(){
        print("意義あり！")
    }
}

class Defender{
    var delegate:Lawyer?
}


let taro = Defender()
taro.delegate = Lawyer()
taro.delegate!.defend()
