//
//  ContentView.swift
//  Shared
//
//  Created by BastianC on 6/23/22.
//

import SwiftUI
 
struct ContentView: View {
    @State var isPresenting: Bool = false
    
    
    var body: some View {
        NavigationView {
            Text("Initial View")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        isPresenting = true
                    }, label: {
                            Image(systemName: "gear")
                        })
                }
            }
            .sheet(isPresented: $isPresenting) {
                NavigationView {
                    Text("Settings Page")
                    .toolbar {
                        ToolbarItem {
                            Button(action: {
                                isPresenting = false
                            }, label: {
                                    Image(systemName: "homekit")
                                })
                        }
                    }
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
