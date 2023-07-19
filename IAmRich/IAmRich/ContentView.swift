//
//  ContentView.swift
//  IAmRich
//
//  Created by Loc Phan Vinh on 19/07/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    
    var body: some View {
        ZStack {
            Color("bg-color")
                .ignoresSafeArea()
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fit)
                
            VStack {
                Text("This is me at ...")
                    .font(.largeTitle)
                    .fontWeight(.light)
                    .foregroundColor(.black)
                    .padding(.top)
                
                Image("rmit-logo-black")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300)
                
                Spacer()
                HStack {
                    Spacer()
                    Button {
                        showingAlert = true
                    } label: {
                        Label("", systemImage: "info.circle.fill")
                            .foregroundColor(.black)
                    }
                    .alert(isPresented: $showingAlert) {
                        Alert(title: Text("Important message!"), message: Text("Don't Trust Me =))"), dismissButton: .cancel())
                    }
                    .padding()
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
