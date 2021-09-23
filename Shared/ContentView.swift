/*:
 # Partner Project 1
 - Bret DuBois and Ryan Li
 - 09/23/21
 */


import SwiftUI

struct ContentView: View {
    
    @State private var dog: String? = "Scottish Terrier"
    
    var body: some View {
        

        // VStack that contains three rows of HStacks
        // HStacks contain arrangement of dogs images
        VStack {
            Text("Tap on an image to view the description")
                .padding()
            
            HStack {
                Image("Airedale Terrier").resizable().scaledToFit()
                    .onTapGesture {
                        dog = "Airedale Terrier"
                    }
                Image("American Foxhound").resizable().scaledToFit()
                    .onTapGesture {
                        dog = "American Foxhound"
                    }
                Image("Dutch Shepherd").resizable().scaledToFit()
                    .onTapGesture {
                        dog = "Dutch Shepherd"
                    }
            }
            
            HStack {
                Image("Havanese").resizable().scaledToFit()
                    .onTapGesture {
                        dog = "Havanese"
                    }
                Image("Leonberger").resizable().scaledToFit()
                    .onTapGesture {
                        dog = "Leonberger"
                    }
                Image("Mudi").resizable().scaledToFit()
                    .onTapGesture {
                        dog = "Mudi"
                    }
            }
            
            HStack {
                Image("Norwegian Lundehund").resizable().scaledToFit()
                    .onTapGesture {
                        dog = "Norwegian Lundehund"
                    }
                Image("Pharaoh Hound").resizable().scaledToFit()
                    .onTapGesture {
                        dog = "Pharaoh Hound"
                    }
                Image("Scottish Terrier").resizable().scaledToFit()
                    .onTapGesture {
                        dog = "Scottish Terrier"
                    }
            }
            
            HStack {
                Image("Tosa").resizable().frame(width: 124.7, height: 83.0).scaledToFit()
                    .onTapGesture {
                        dog = "Tosa"
                    }
            }
            
            // VStack contains name and description of dog corresponding to the image tapped
            VStack {
                Text(dog!).font(.headline).fontWeight(.heavy).padding()
                Text(dogsDict[dog!]!).font(.subheadline).italic().padding(.horizontal)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


// Create a dictionary containing key/value pairs in lists below
let dogsDict = Dictionary(uniqueKeysWithValues: zip(dogNames, dogData))


// List of dog names for dictionary key
var dogNames = ["Airedale Terrier",
"American Foxhound",
"Dutch Shepherd",
"Havanese",
"Leonberger",
"Mudi",
"Norwegian Lundehund",
"Pharaoh Hound",
"Scottish Terrier",
"Tosa"]

// List of dog description data for dictionary values
var dogData = ["The Airedale stands among the world's most versatile dog breeds and has distinguished himself as hunter, athlete, and companion.",
               
               "American Foxhounds are good-natured, low-maintenance hounds who get on well with kids, dogs, even cats, but come with special considerations for prospective owners.",

               "The Dutch Shepherd is a lively, athletic, alert and intelligent breed, and has retained its herding instinct for which it was originally developed.",

               "Havanese, the only dog breed native to Cuba, are vivacious and sociable companions and are especially popular with American city dwellers.",

               "The Leonberger is a lush-coated giant of German origin. They have a gentle nature and serene patience and they relish the companionship of the whole family.",

               "The Mudi is an extremely versatile, intelligent, alert, agile, all-purpose Hungarian farm dog. The breed is a loyal protector of property and family members without being overly aggressive.",

               "From Norway’s rocky island of Vaeroy, the uniquely constructed Norwegian Lundehund is the only dog breed created for the job of puffin hunting. With puffins now a protected species, today’s Lundehund is a friendly, athletic companion.",

               "The Pharaoh Hound, ancient \"Blushing Dog\" of Malta, is an elegant but rugged sprinting hound bred to course small game over punishing terrain. Quick and tenacious on scent, these friendly, affectionate hounds settle down nicely at home.",

               "A solidly compact dog of vivid personality, the Scottish Terrier is an independent, confident companion of high spirits. Scotties have a dignified, almost-human character.",

               "The Tosa's temperament is marked by patience, composure, boldness and courage. He is normally a tranquil, quiet, and obedient dog, with a calm but vigilant demeanor."]


