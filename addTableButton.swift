//
//  addTableButton.swift
//  ileZaszczepionych
//
//  Created by Jakub Górka on 10/05/2022.
//

import SwiftUI

struct addTableButton: View {
    
    @ObservedObject var system: System
    
    var body: some View {
                    Button(action: {
        
                        stolikDodaj(nazwaStolika: "", stoliki: &system.stoliki)
        
                    }, label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 30)
                                .frame(width: 120.0, height: 40.0)
                            Text("Dodaj stolik")
                                .foregroundColor(.white)
                        }
                    })
                        .padding(0.0)
                    
    }
}

struct addTableButton_Previews: PreviewProvider {
    static var previews: some View {
        addTableButton(system: System())
    }
}
