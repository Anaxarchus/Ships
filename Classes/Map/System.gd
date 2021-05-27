class_name System
extends Node

class Arrival:
    var distance:float
    var link_distance:float
    var jump_distance:float

class Objekt:
    var object_name:String
    var sprite_path:String
    var distance:float
    var period:float
    var offset:float
    var objects:Array

class Trade:
    var commodity:String
    var value:int
    func _to_string():
        return commodity + ": " + String(value)

class Link:
    var link:String
    func _to_string():
        return link

class Flet:
    var fleet:String
    var value:int

class Ast:
    var type:String
    var count:int
    var energy:float
    func _to_string():
        return "( " + type + ", " + String(count) + ", " + String(energy) + " )"


class minable:
    var type:String
    var count:int
    var energy:float
    func _to_string():
        return "( " + type + ", " + String(count) + ", " + String(energy) + " )"


var position:Vector2
var government:String
var attributes:Array
var music_path:String
var arrival:Arrival
var habitable:float
var belt:float
var jump_range:float
var haze_path:String
var links:Array
var asteroids:Array
var mineables:Array
var trades:Array
var fleets:Array
var hazards:Array
var objects:Array

