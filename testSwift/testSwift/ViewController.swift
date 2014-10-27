//
//  ViewController.swift
//  testSwift
//
//  Created by mabo on 14/10/26.
//  Copyright (c) 2014年 mabo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        /*
        var firstForLoop=0
        for i in 0..<4 {
        firstForLoop += i
        }
        
        var secondForLoop = 0
        for var i = 0; i<4; ++i {
                secondForLoop += i
        }
        
        
        let interestingNumbers = [
        "prime":[2,3,5,7,11,13],
        "Fib":[1,1,2,3,5,8],
        "Sq":[1,4,9,16,25],
    ]
        var larg = 0
        for(kind,numbers) in interestingNumbers{
            for number in numbers{
                if number>larg {
                larg = number
                }
            }
        
        }

        println("the big is: \(firstForLoop) and \(secondForLoop) !")

        
        func greet(name:String, day:String)->String{
            return "hello \(name) ,today is \(day)"
        }
        
            println(greet("Bob", "Tuesday"))
    }
    

        func calculateStatistics(scores:[Int])->(min:Int ,max:Int ,sum:Int){
        var min = scores[0]
        var max = scores[0]
        var sum = 0
            
            for score in scores {
                if score > max {
                max = score
                }else if score < min{
                min = score
                }
            sum += score
            }
            return (min,max,sum)
        }
        
        let statistics = calculateStatistics([5,3,100,3,9])
        statistics.sum
        println("the position of 3 has \(statistics.0)")
        
        func sumOf(numbers:Double...)->Double {
            var sum = 0.0;
            for number in numbers {
            sum += number
                //num++
                
            }
            numbers.startIndex
            return sum/Double(numbers.count)
        }
        sumOf()
        
        func return15()->Int{
        var y=10
            func add(){
            y+=5
            }
        add()
            return y
        }

        func makeinc()->(Int->Int){
            func addOne(number:Int)->Int{
            return 1+number
            }
            return addOne
        }
        var increment = makeinc()

        
        func hasAnyMatches(list:[Int],condition:Int->Bool)->Bool{
            for item in list{
                if condition(item){
                    return true
                }
            }
            return false
        }
        func lessThanTen(number:Int)->Bool{
            return number<10
        }

        var numbers = [20,19,11,12]
        numbers.map({
            (number:Int)->Int in
            let result = 3 * number
            return result
            })
        let mappedNum = numbers.map({number in numbers})

        class namedShape{
            var numberOfSides:Int = 0
            var name:String
            
            init(name:String){
                self.name = name
            }
            
            func simpleDescription()->String{
                return "a shape with \(numberOfSides) sides."
            }
        }
        let shape = namedShape(name:"whi is hw")
        //shape.numberOfSides = 7
        //shape.simpleDescription()
        var shapeDescription = shape.simpleDescription()

        class Square:NamedShape{
            var sideLength:Double
            
            init(sideLength:Double, name:String){
                self.sideLength = sideLength
                super.init(name:name)
                numberOfSides = 4
            }
            
            func area()->Double{
                return sideLength * sideLength
            }
         

            override func simpleDescription()->String{
                return "a shape with side of length \(sideLength)."
            }
        }
        
        let test = Square(sideLength:5.2, name:"whi is hw")
*/
        class namedShape{
            var numberOfSides:Int = 0
            var name:String
            
            init(name:String){
                self.name = name

            }
             func simpleDescription()->String{
                return "Triangle with sides"
            }
        }
        
        class EquilateralTriangle:namedShape{
            var sideLength:Double = 0.0
            
            init(sideLength:Double, name:String){
                self.sideLength = sideLength
                super.init(name:name)
                numberOfSides = 3
            }
            
            var perimeter:Double{
                get {
                    return 3.0 * sideLength
                }
                set {
                    sideLength = newValue / 3.0
                }
            }
            override func simpleDescription()->String{
                return "a Equilateral Triangle with sides of length \(sideLength)."
            }
            
        }
        var tringle = EquilateralTriangle(sideLength:3.1 , name: "a tringle")
        tringle.perimeter = 9.9
        println(" the sum is \(tringle.simpleDescription()) \(tringle.perimeter)")
        
    }//big
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


