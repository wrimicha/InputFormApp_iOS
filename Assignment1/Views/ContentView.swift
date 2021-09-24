//
//  ContentView.swift
//  Assignment1
//
//  Created by Michael Wright on 2021-09-15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        NavigationView {

         ZStack {
            Image("manspace")
                 .resizable()
                 .scaledToFill()
                 .edgesIgnoringSafeArea(.all)
            
                VStack{
                    ZStack{
                        NavigationLink(destination: UserInfoView()){
                                       Image("button1")
                                        .renderingMode(.original)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 350.0)
                            }
                        Text("Enter User Info")
                            .foregroundColor(Color.white)
                            .font(.system(size: 15, weight: .medium, design: .monospaced))
                    }
                    
                    ZStack{
                        NavigationLink(destination: AboutMeView()){
                                       Image("button1").renderingMode(.original)
                                        .renderingMode(.original)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 350.0)
                            }
                        Text("About Me")
                            .foregroundColor(Color.white)
                            .font(.system(size: 15, weight: .medium, design: .monospaced))
                    }
                    
                    ZStack{
                        NavigationLink(destination: WebsiteLinkView()){
                                       Image("button1").renderingMode(.original)
                                        .renderingMode(.original)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 350.0)
                            }
                        Text("Website Link")
                            .foregroundColor(Color.white)
                            .font(.system(size: 15, weight: .medium, design: .monospaced))
                    }
                    Spacer()
                }
            }
        } .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
