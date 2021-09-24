//
//  UserInfo.swift
//  Assignment1
//
//  Created by Michael Wright on 2021-09-15.
//

import SwiftUI
import iPhoneNumberField

struct UserInfoView: View {
    
    @State private var fname = ""
    @State private var lname = ""
    @State private var address = ""
    @State private var phonenumber = ""
    @State private var email = ""
    @State private var age: Double = 0
    @State private var gender = 0
    @State private var birthDate = Date()
    @State private var showingAlert = false
    @State var isEditing: Bool = false
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }

    let purpleBlue = Color(red: 0.51, green: 0.25, blue: 0.94)
    let gradientStart = Color(red: 0.81, green: 0.23, blue: 1.35)
    let gradientEnd = Color(red: 0.36, green: 0.23, blue: 1.95)
    
    var genderNames = ["Male", "Female", "Other"]

    var body: some View {
                
            ZStack{
                Image("manspace")
                     .resizable()
                     .scaledToFill()
                     .edgesIgnoringSafeArea(.all)
                     .opacity(0.30)
                
                ScrollView{
                    VStack{
                            HStack{
                                TextField("First Name", text: $fname)
                                    .textFieldStyle(TextInputStyle())
//                                    .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
//                                    .background(Color.white)
//                                    .cornerRadius(15)
//                                    .shadow(radius: 3, y: 1)
//                                    .padding(6)
//                                    .accentColor(purpleBlue)
//                                    .foregroundColor(purpleBlue)
//                                    .font(.system(size: 15, weight: .medium, design: .monospaced))
//                                    .disableAutocorrection(true)

                                TextField("Last Name", text: $lname)
                                    .textFieldStyle(TextInputStyle())
//                                    .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
//                                    .background(Color.white)
//                                    .cornerRadius(15)
//                                    .shadow(radius: 3, y: 1)
//                                    .padding(6)
//                                    .accentColor(purpleBlue)
//                                    .foregroundColor(purpleBlue)
//                                    .font(.system(size: 15, weight: .medium, design: .monospaced))
//                                    .disableAutocorrection(true)
                            }
                            VStack{
                                TextField("Address", text: $address)
                                    .textFieldStyle(TextInputStyle())
//                                    .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
//                                    .background(Color.white)
//                                    .cornerRadius(15)
//                                    .shadow(radius: 3, y: 1)
//                                    .padding(6)
//                                    .accentColor(purpleBlue)
//                                    .foregroundColor(purpleBlue)
//                                    .font(.system(size: 15, weight: .medium, design: .monospaced))
//                                    .disableAutocorrection(true)

                       
                                ZStack{
                                    iPhoneNumberField("(000) 000-0000", text: $phonenumber, isEditing: $isEditing)
                                        .flagHidden(false)
                                        .flagSelectable(true)
                                        .maximumDigits(10)
                                        .font(UIFont(size: 15, weight: .medium, design: .monospaced))
                                        .foregroundColor(purpleBlue)
                                        .clearButtonMode(.whileEditing)
                                        .onClear { _ in isEditing.toggle() }
                                        .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
                                        .background(Color.white)
                                        .accentColor(purpleBlue)
                                        .cornerRadius(15)
                                        .shadow(radius: 3, y: 1)
                                        .padding(6)
                                        .disableAutocorrection(true)
                                
                                    Text("(000) 000-0000")
                                        .opacity(0.3)
                                        .frame(width: UIScreen.main.bounds.size.width - 180, alignment: .leading)
                                        .opacity(phonenumber.count == 0 ? 1 : 0)
                                        .zIndex(0)
                                        .disableAutocorrection(true)
                                        .font(.system(size: 15, weight: .medium, design: .monospaced))
                                }
                                
                                
                                
//                                TextField("Phone Number", text: $phonenumber)
//                                    .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
//                                    .background(Color.white)
//                                    .cornerRadius(15)
//                                    .shadow(radius: 3, y: 1)
//                                    .padding(6)

                                TextField("Email", text: $email)
                                    .textFieldStyle(TextInputStyle())
//                                    .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
//                                    .background(Color.white)
//                                    .cornerRadius(15)
//                                    .shadow(radius: 3, y: 1)
//                                    .padding(6)
//                                    .accentColor(purpleBlue)
//                                    .foregroundColor(purpleBlue)
//                                    .font(.system(size: 15, weight: .medium, design: .monospaced))
//                                    .disableAutocorrection(true)

                                Text("Age")
                                    .padding(6)
                                    .frame(width: UIScreen.main.bounds.size.width - 40, alignment: .leading)

                                Slider(value: $age, in: 0...100)
                                    .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
                                    .accentColor(purpleBlue)

                                Text("\(age, specifier: "%.f")")
                                    .foregroundColor(purpleBlue)
                                    .font(.system(size: 35, weight: .medium, design: .monospaced))

                                Group{
                                    Picker(selection: $gender, label: Text("Gender")) {
                                        Text("Male").tag(0)
                                        Text("Female").tag(1)
                                        Text("Other").tag(2)
                                    }
                                    .pickerStyle(SegmentedPickerStyle())
                                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 20, trailing: 20))
                                    .accentColor(purpleBlue)
                                    .foregroundColor(purpleBlue)
                                    .font(.system(size: 15, weight: .medium, design: .monospaced))
                                    
                                    DatePicker(selection: $birthDate, in: ...Date(), displayedComponents: .date) {
                                        Text("Date of Birth")
                                        }
                                        .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
                                        .accentColor(purpleBlue)
                                }
                            
                                Button(action:{
                                    showingAlert = true
                                }){
                                    ZStack{
                                        Rectangle()
                                            .fill(LinearGradient(
                                              gradient: .init(colors: [gradientStart, gradientEnd]),
                                              startPoint: .init(x: 0.2, y: 0),
                                              endPoint: .init(x: 0.9, y: 0.2)
                                            ))
                                            .frame(width: UIScreen.main.bounds.size.width - 40, height: 70)
                                            .cornerRadius(10)
                                            .shadow(radius: 3, y: 1)
                                        Text("Submit")
                                            .foregroundColor(Color.white)
                                            .font(.system(size: 20, weight: .bold, design: .monospaced))
                                    }
                                    
//                                    Image("buttonpurp")
//                                        .resizable()
//                                        .scaledToFit()
//                                        .frame(width: UIScreen.main.bounds.size.width - 80)
                                }
//                                .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
//                                .frame(width: (UIScreen.main.bounds.size.width - 40))
//                                .background(purpleBlue)
//                                .cornerRadius(15)
                                .foregroundColor(Color.white)
                                .alert(isPresented: $showingAlert) {
                                    Alert(
                                        title: Text("Thank you \(fname), \(email) for your time"),
                                        dismissButton: .default(Text("Got it!"))
                                    )
                                }
                                .padding(10)
                                
                                Group{
                                    Text("Name: \(fname) \(lname)")
                                        .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                                        .frame(width: UIScreen.main.bounds.size.width - 40, alignment: .leading)
                                    Text("Address: \(address)")
                                        .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                                        .frame(width: UIScreen.main.bounds.size.width - 40, alignment: .leading)
                                    Text("Phone Number: \(phonenumber)")
                                        .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                                        .frame(width: UIScreen.main.bounds.size.width - 40, alignment: .leading)
                                    Text("Email: \(email)")
                                        .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                                        .frame(width: UIScreen.main.bounds.size.width - 40, alignment: .leading)
                                    Text("Age: \(age, specifier: "%.f")")
                                        .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                                        .frame(width: UIScreen.main.bounds.size.width - 40, alignment: .leading)
                                    Text("Gender: \(self.genderNames[gender])")
                                        .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                                        .frame(width: UIScreen.main.bounds.size.width - 40, alignment: .leading)
                                    Text("Date of Birth: \(birthDate, formatter: dateFormatter)")
                                        .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                                        .frame(width: UIScreen.main.bounds.size.width - 40, alignment: .leading)
                                }
                            }
                    }.padding(10)
                    }
                    .navigationBarTitle("Home")
                }
        }
}

struct UserInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TextInputStyle: TextFieldStyle {
  /// Whether the user is focused on this `TextField`.
  //var isEditing: Bool -> when you dont initialize a value in the struct you need to pass it when you use the Style struct
  let purpleBlue = Color(red: 0.51, green: 0.25, blue: 0.94)


  func _body(configuration: TextField<_Label>) -> some View {
    configuration
//        .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
//        .background(Color.white)
//        .cornerRadius(15)
//        .shadow(radius: 3, y: 1)
//        .padding(6)
//        .accentColor(purpleBlue)
//        .foregroundColor(purpleBlue)
//        .font(.system(size: 15, weight: .medium, design: .monospaced))
//        .disableAutocorrection(true)
    
    
        .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
        .background(Color.white)
        .accentColor(purpleBlue)
        .cornerRadius(15)
        .shadow(radius: 3, y: 1)
        .padding(6)
        .disableAutocorrection(true)
    
    
  }
}


//struct CalcButtonStyle: ButtonStyle{
//
//    public func makeBody(configuration: Configuration) -> some View
//    {
//        configuration.label
//            .font(.title)
//            .padding(15)
//            .background(Color.gray)
//            .cornerRadius(5)
//            .foregroundColor(.white)
//            .padding(10)
//            .overlay(
//                RoundedRectangle(cornerRadius: 5)
//                    .stroke(Color.gray, lineWidth: 5)
//            )
//            .compositingGroup()
//            .shadow(color: .black, radius: 1)
//            .opacity(configuration.isPressed ? 0.5 : 1.0)
//            .scaleEffect(configuration.isPressed ? 0.8 : 1.0)
//    }
//}


//struct TextInputStyle: TextInputStyle{
//
//    public func makeBody(configuration: Configuration) -> some View
//    {
//        configuration
//        .textFieldStyle(PlainTextFieldStyle())
//        .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
//        .background(Color.white)
//        .cornerRadius(15)
//        .shadow(radius: 3, y: 1)
//        .padding(6)
//        .accentColor(purpleBlue)
//        .foregroundColor(purpleBlue)
//        .font(.system(size: 15, weight: .medium, design: .monospaced))
//        .disableAutocorrection(true)
//
////        configuration.label
////            .font(.title)
////            .padding(15)
////            .background(Color.gray)
////            .cornerRadius(5)
////            .foregroundColor(.white)
////            .padding(10)
////            .overlay(
////                RoundedRectangle(cornerRadius: 5)
////                    .stroke(Color.gray, lineWidth: 5)
////            )
////            .compositingGroup()
////            .shadow(color: .black, radius: 1)
////            .opacity(configuration.isPressed ? 0.5 : 1.0)
////            .scaleEffect(configuration.isPressed ? 0.8 : 1.0)
//    }
//}
