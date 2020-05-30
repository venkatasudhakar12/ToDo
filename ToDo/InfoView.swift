//
//  InfoView.swift
//  ToDo
//
//  Created by venkata sudhakar on 27/05/20.
//  Copyright © 2020 venkata sudhakar. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    let personInfo = ["Sudhakar","sudhakar@gmail.com","30","9844904398"]
    let professionalInfo = ["Harman","Engineer"]
    
    var body: some View {
        
        List{
            Section(header: Text("Personal Info")) {
                ForEach(0..<personInfo.count) {
                    Text(self.personInfo[$0])
                }
            }
            Section(header: Text("Professional Info"), footer: Text("Copy rights@harman pvt ltd")) {
                ForEach(0..<professionalInfo.count) {
                    Text(self.professionalInfo[$0])
                }
            }
        }
    .navigationBarItems(trailing:
        NavigationLink(destination: LogoView(), label: {
            Text("logo")
        }))
        .navigationBarTitle("Additional Infotmation",displayMode: .inline)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
