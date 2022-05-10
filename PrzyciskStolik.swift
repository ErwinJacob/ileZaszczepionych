//
//  PrzyciskStolik.swift
//  lelotest
//
//  Created by Jakub Górka on 17/10/2021.
//

import SwiftUI

struct PrzyciskStolik: View {
    @ObservedObject var stolik: Stolik
    @ObservedObject var system: System
    
    var body: some View {
            
                
        NavigationLink(destination: StolikView(system: system, stolik: stolik), label: {
                    VStack{
                        if(stolik.zajety == false){
                            Text("Stolik \(stolik.nazwaStolika)")
                                .fontWeight(.bold)
                                .foregroundColor(.gray)
                        }
                        else{
                            Text("Stolik \(stolik.nazwaStolika)")
                                .fontWeight(.bold)
                                .foregroundColor(.green)
                        }
                    }
                })
            }
    
}

struct PrzyciskStolik_Previews: PreviewProvider {
    static var previews: some View {
        PrzyciskStolik(stolik: Stolik(nazwa: String()), system: System())
    
    }
}
