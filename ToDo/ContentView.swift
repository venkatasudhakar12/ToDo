//
//  ContentView.swift
//  ToDo
//
//  Created by venkata sudhakar on 27/05/20.
//  Copyright © 2020 venkata sudhakar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var todoList = [ToDo(name: "Venkata"),ToDo(name: "Sudhakar"),ToDo(name: "How are you")]
    
    
    init() {
        UINavigationBar.appearance().backgroundColor = .yellow
        UINavigationBar.appearance().titleTextAttributes = [
                   .font : UIFont(name: "HelveticaNeue-Thin", size: 20)!]
    }
    
    
    var body: some View {
        NavigationView{
            List{
                ForEach(todoList) { todo in
                    NavigationLink(destination: Details(doTo: todo)) {
                        Text(todo.name)
                    }
                }
                .onMove { (indexSet, index) in
                    self.todoList.move(fromOffsets: indexSet, toOffset: index)
                }
                .onDelete { (indexSet) in
                    self.todoList.remove(atOffsets: indexSet)
                }
            }
            .navigationBarItems(leading:
                Button(action: {
                    self.deleteItem()
                }, label: {
                    Image(systemName: "minus.square.fill")
                        .font(.largeTitle)
                        .foregroundColor(.red)
                }), trailing:
                Button(action: {
                    self.addNewItem()
                }, label: {
                    Image(systemName: "plus.square.fill")
                        .font(.largeTitle)
                        .foregroundColor(.blue)
                })
            )
                //.navigationBarItems(trailing: EditButton())
            .navigationBarTitle("ToDo")
        }
    }
    func addNewItem(){
        let todo = ToDo(name: "Good morning")
        todoList.append(todo)
    }
    func deleteItem(){
        todoList.removeLast()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ToDo:Identifiable {
    var id = UUID()
    var name:String
}
