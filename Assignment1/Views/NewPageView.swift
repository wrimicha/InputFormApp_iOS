//
//  NewPage.swift
//  Assignment1
//
//  Created by Michael Wright on 2021-09-15.
//

import SwiftUI

struct NewPageView: View {
    
    @State private var difficulty = 0
    @State private var celsius: Double = 0

    var body: some View {
        
        VStack {
            
            
//            Text("Enter your name!")
//                .padding(EdgeInsets(top: 20, leading: 30, bottom: 20, trailing: 0))
//                .frame(width: 400, height: 40, alignment: .leading)
//
//            TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
//                .padding(EdgeInsets(top: 20, leading: 30, bottom: 20, trailing: 0))

            
//            Text("Where do you live?")
//                .padding(EdgeInsets(top: 20, leading: 30, bottom: 20, trailing: 0))
//                .frame(width: 400, height: 40, alignment: .leading)
//
//            TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
//                .padding(EdgeInsets(top: 20, leading: 30, bottom: 20, trailing: 0))
            
            Text("Where do you live?")
                .padding(EdgeInsets(top: 20, leading: 30, bottom: 20, trailing: 0))
                .frame(width: 400, height: 40, alignment: .leading)
            
            TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .padding(EdgeInsets(top: 20, leading: 30, bottom: 20, trailing: 0))

            Text("Lemme get dem digits")
                .padding(EdgeInsets(top: 20, leading: 30, bottom: 20, trailing: 0))
                .frame(width: 400, height: 40, alignment: .leading)
            
            TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .keyboardType(.numberPad)
                .padding(EdgeInsets(top: 20, leading: 30, bottom: 20, trailing: 0))
            
            Text("Whats your email?")
                .padding(EdgeInsets(top: 20, leading: 30, bottom: 20, trailing: 0))
                .frame(width: 400, height: 40, alignment: .leading)
            
            TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .padding(EdgeInsets(top: 20, leading: 30, bottom: 20, trailing: 0))
            
            Text("How old are you?")
                .padding(EdgeInsets(top: 20, leading: 30, bottom: 20, trailing: 0))
                .frame(width: 400, height: 40, alignment: .leading)
            
            Slider(value: $celsius, in: 0...100)
            
            Picker(selection: $difficulty, label: Text("Difficulty Level")) {
                Text("Easy").tag(0)
                Text("Medium").tag(1)
                Text("Hard").tag(2)
            }.pickerStyle(SegmentedPickerStyle())
        }
    }
}

struct NewPageView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

