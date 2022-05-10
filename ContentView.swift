//
//  ContentView.swift
//  ileZaszczepionych
//
//  Created by Jakub Górka on 01/12/2021.
//

import SwiftUI



struct ContentView: View {

    @State var system = System()

    var body: some View {
        
        StolikiView(system: system)
            .onAppear(perform: {
                startSystem(stoliki: &system.stoliki)
                //
            })

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
