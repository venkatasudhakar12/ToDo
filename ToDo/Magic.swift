//
//  Magic.swift
//  ToDo
//
//  Created by venkata sudhakar on 27/05/20.
//  Copyright © 2020 venkata sudhakar. All rights reserved.
//

import SwiftUI

struct Magic: View {
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "1.circle.fill")
                Image(systemName: "arrow.left.circle.fill")
                Spacer()
            }.padding()
            Spacer()
            HStack {
                Image(systemName: "arrow.left.circle.fill")
                Spacer()
                Image(systemName: "2.circle.fill")
                Spacer()
                Image(systemName: "arrow.right.circle.fill")
            }.padding()
            Spacer()
            HStack {
                Spacer()
                Image(systemName: "arrow.right.circle.fill")
                Image(systemName: "3.circle.fill")
            }.padding()
        }
        .foregroundColor(.white)
            
        .background(RoundedRectangle(cornerRadius: 10))
        .font(.largeTitle)
        .frame(width: 300, height: 300)
            
        .foregroundColor(.blue)
        .padding()
    }
}

struct Magic_Previews: PreviewProvider {
    static var previews: some View {
        Magic()
    }
}
