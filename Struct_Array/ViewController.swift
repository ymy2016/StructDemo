//
//  ViewController.swift
//  Struct_Array
//
//  Created by 伟华 on 2017/6/5.
//  Copyright © 2017年 伟华. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    // 结构体
   struct Resolution {
    
        // 存储属性
        var width = 0.0
        var height = 0.0
    
        // 计算属性
        var radius:Double{
        
            return 100.0
        }
        
        mutating func getRectangle(newWidth:Double,newHeight:Double) {
            
            self.width = newWidth
            self.height = newHeight
        }
    }
    
    // 枚举
    @objc enum CompassPoint:Int {
        
        var name:String{
         
            return "123"
        }
        
        case north
        case south
        case east
        case west
        
        mutating func testMethod() {
            
            switch self {
            case .north:
                self = .south
            default:
                self = .west
            }
        }
    }
    
    var resolution = Resolution()
    var compassPoint = CompassPoint.north
    
    // 元祖
    var myCondition = (name:"谭伟华",age:10)
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // swift中调用oc结构体、枚举
    func testDemo3()  {
        
        let sec = SecViewController()
        print("\(sec.stuType.name)")
        print("\n")
        print(sec.stuType.age)
        
        sec.userType = UserType.C
        print(sec.userType.hashValue)
    }
    
    // swift中调用结构体、枚举中的方法，mutating关键字修饰
    func testDemo2()  {
       
        resolution.getRectangle(newWidth: 100, newHeight: 200)
        print(resolution.width)
        
        compassPoint.testMethod()
        print(compassPoint)
        
        print(myCondition.name)
        print(myCondition.age)
    }
    
    // 返回值为元祖
    func testDemo() -> (String,Int,Array<String>) {
        
        return ("123",123,["1","2","3"])
    }
    
}

