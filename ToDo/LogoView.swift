//
//  LogoView.swift
//  ToDo
//
//  Created by venkata sudhakar on 27/05/20.
//  Copyright © 2020 venkata sudhakar. All rights reserved.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        VStack{
        GeometryReader { geometry  in
            VStack {
                Image("corona")
                    .resizable()
                    .scaledToFill()
                    .frame(width: geometry.size.width, height: geometry.size.height/2)
            .background(Color.yellow)
                HStack(spacing:10){
                    Image("photo")
                    .resizable()
                        .scaledToFit()
                        .frame(width: geometry.size.width/2, height: geometry.size.height/2)
                    //.background(Color.red)
                    Image("photo")
                        .resizable()
                    .scaledToFit()
                        .frame(width: geometry.size.width/2, height: geometry.size.height/2)
                    //.background(Color.yellow)
                }
            }
        }
            
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
    }
}
