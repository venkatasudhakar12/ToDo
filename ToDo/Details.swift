//
//  Details.swift
//  ToDo
//
//  Created by venkata sudhakar on 27/05/20.
//  Copyright © 2020 venkata sudhakar. All rights reserved.
//

import SwiftUI

struct Details: View {
    @State private var rotateState:Double = 0
    let doTo:ToDo
    var body: some View {
        VStack{
        Image("photo")
            .rotationEffect(Angle(degrees: rotateState))
            .gesture(RotationGesture()
                .onChanged({ value in
                    self.rotateState = value.degrees
                })
            )
            .overlay(Text(self.doTo.name).foregroundColor(.red),alignment: .bottomTrailing)
           
           
            NavigationLink(destination: ColorsView(), label: {
                 Text("Show Colors")
                
            })
            
        .navigationBarTitle("Details",displayMode: .inline)
            .navigationBarItems(trailing:
                HStack{
                NavigationLink(destination: InfoView(), label: {
                    Image(systemName: "person")
                })
                NavigationLink(destination: Magic(), label: {
                    Image(systemName: "flame")
                })
                }
            )
        }
    }
}

struct Details_Previews: PreviewProvider {
    static var previews: some View {
        Details(doTo: ToDo(name: "Hi"))

    }
}
