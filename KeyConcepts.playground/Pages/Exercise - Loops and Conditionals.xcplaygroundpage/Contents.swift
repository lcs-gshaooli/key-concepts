//: [Previous](@previous)
//: # Exercise - Loops and Conditionals
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 ## Exercise
 
 Each image is exactly 400 pixels wide by 600 pixels tall.
 
 Your goal is to precisely reproduce this image (the underlying image, not the planning grid):
 
 ![sloan-no-grid.png](sloan-no-grid.png "Sloan")
 ![sloan-with-grid.png](sloan-with-grid.png "Sloan")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * iteration (use of loops)
 * conditional (if statements)
 
 You can use the **Digital Color Meter** app (already installed on your Mac) to find specific colours as RGB (red-green-blue) codes.
 
 You [can use this site](http://www.workwithcolor.com/color-converter-01.htm) to convert colours to HSB to use with the Canvas class.
 
 Or, if you wish, you may use the color constants created below.
 
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLOR CONSTANTS
let deepOrange = Color(hue: 16, saturation: 90, brightness: 95, alpha: 100)
let lightBlue = Color(hue: 195, saturation: 63, brightness: 92, alpha: 100)
let neonGreen = Color(hue: 107, saturation: 61, brightness: 93, alpha: 100)

// HINT: Remember that all shapes have a fill and a border.
//       You can turn off the fill or border if desired.


canvas.fillColor=lightBlue
for x in stride(from: 0, through: 400, by: 100) {
    canvas.drawRectangle(at: Point(x:x, y:0), width:50, height:350)
}

canvas.fillColor=deepOrange

canvas.drawRectangle(at: Point(x:0, y:400), width:400, height:200)

for x in stride(from: 0, through: 400, by: 100) {
    canvas.drawRectangle(at: Point(x:x, y:350), width:50, height:50)
}

// Orange rectangle
canvas.fillColor=deepOrange
for x in stride(from: 50, through: 400, by: 100) {
    canvas.drawRectangle(at: Point(x:x, y:0), width:50, height:50)
}
// Green rectangles 
canvas.fillColor=neonGreen
for x in stride(from: 50, through: 400, by: 100) {
    canvas.drawRectangle(at: Point(x:x, y:50), width:50, height:350)
}

//  Text color
canvas.textColor = Color.white

// TEXT
canvas.drawText(message: "sloan", at: Point(x:150,y:425), size: 85, kerning: 0.76)

 canvas.drawText(message: "saturday", at: Point(x:15, y:570), size: 10)
canvas.drawText(message: "december 19 1992", at: Point(x:15, y:555), size: 10)
canvas.drawText(message: "9 pm", at: Point(x:15, y:540), size: 10)

 canvas.drawText(message: "with", at: Point(x:150, y:570), size: 10)
canvas.drawText(message: "thrush hermit", at: Point(x:150, y:555), size: 10)
canvas.drawText(message: "the quahogs", at: Point(x:150, y:540), size: 10)

 canvas.drawText(message: "camaro's cafe", at: Point(x:275, y:570), size: 10)
canvas.drawText(message: "halifax", at: Point(x:275, y:555), size: 10)
canvas.drawText(message: "nova scotia", at: Point(x:275, y:540), size: 10)



/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

