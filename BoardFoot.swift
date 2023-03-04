//

// This program calculates the length for one
// board with given width and height from user.

//
//  Created by Sarah Andrew

//  Created on 2023-03-04

//  Version 1.0

//  Copyright (c) 2023 Sarah. All rights reserved.
import Foundation


// This function calculates the length of a board per one
// board foot then returns it to the user.
func CalculateBoardFoot(width: Double, height: Double) -> Double {
    // Declare constant.
    let ONE_BOARD_LENGTH = 144.0
    
    // Calculate length on basis of width & height.
    let length = ONE_BOARD_LENGTH / (width * height)

    // Return results to main.
    return length
}

// Intro.
print("This program figures out the length", terminator: "")
print(" of a wooden board. Where one board is 144^3")
print("inch(es) of wood.")

// Receive user input
print("Enter the width inch(es): ")

// Usage of try catch to detect errors.
if let userWidth = Double(readLine()!) {
    // Recieve user input
    print("Enter the height inch(es): ")
   
    if let userHeight = Double(readLine()!) {
        // If statement to determine if 
        // user enters positive or negative value.
        if userWidth >= 0 && userHeight >= 0 {
            // Call function for positive values.
            let length = CalculateBoardFoot(width:userWidth, height:userHeight)

            // Display results to user.
            print("The board length would be ", terminator: "")
            let lengthAns = String(format: "%.2f", length)
            print(lengthAns, "inch(es) of wood.")
        } else {
            // Displays error.
            print("Please enter positive values.")
        }

    } else {
        // Displays error to user.
        print("Please enter valid input.")
    }
} else {
    // Displays error to the user
    print("Please enter valid input.")
}
