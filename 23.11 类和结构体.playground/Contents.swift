//: Playground - noun: a place where people can play

import UIKit

/***************1.类和结构体基本用法**************/
struct point{
    var x:Int = 0
    var y:Int = 0
}
class map {
    //可选类型的属性
    var name:String?
    var po = point()
}
//成员构造器
var p1 = point(x:10,y:20)
var m1 = map()

m1.name = "地图1"
m1.po = p1

print("\(m1.name!)中的po的坐标点是(\(m1.po.x),\(m1.po.y))")
//打印结果：地图1中的po的坐标点是(10,20)


/***************2.结构体是值类型**************/
enum color{
    case R,G,B,A
}
struct point2{
    var x:Int = 0
    var y:Int = 0
}

var c1 = color.R
var c2 = c1

c2 = .G

if c1 == color.R {
    print("枚举是值传递")
}

var p12 = point(x:10,y:10)
var p2 = p12
p2.y = 20

print("p1的坐标是(\(p12.x),\(p12.y))")
print("p2的坐标是(\(p2.x),\(p2.y))")


/***************3.类是引用类型**************/
class map2 {
    //可选类型的属性
    var name:String?
}

var m12 = map2()
m12.name = "地图1"

var m2 = m12
m2.name = "地图2"

if m12 === m2 {
    print("m1恒等于m2")
}
print("m1.name = \(m12.name!),m2.name=\(m2.name!)")

//打印结果：m1恒等于m2
//m1.name = 地图2,  m2.name=地图2
