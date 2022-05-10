//
//  stolikiView.swift
//  ileZaszczepionych
//
//  Created by Jakub Górka on 01/12/2021.
//

import SwiftUI


struct StolikiView: View {

//    @State var start: Bool = false
    @ObservedObject var system: System
    
    var body: some View {
        
        NavigationView{
        VStack{

            addTableButton(system: system)

            
//            Button(action: {
//
//                if(start == false){
//                    startSystem(stoliki: &system.stoliki)
//                    start = true
//                }
//            }, label: {
//                ZStack{
//                    RoundedRectangle(cornerRadius: 30)
//                        .frame(width: 120.0, height: 40.0)
//                    Text("Start")
//                        .foregroundColor(.white)
//                }
//            })
//                .padding(0.0)
//            
        
        
            
            List(system.stoliki){ stolik in
                PrzyciskStolik(stolik: stolik, system: system)
                .padding(.vertical, 15.0)
        }
        .listStyle(.inset)
        .navigationTitle("Stoliki")
            
            
            VStack{
                Text("Zaszczepieni na sali: \(system.sumaZaszczepionych)")
                Text("Niezaszczepieni na sali: \(system.sumaNiezaszczepionych)")
                
                
            }
            
            }

        }
    }
}

struct StolikiView_Previews: PreviewProvider {
    static var previews: some View {
        StolikiView(system: System())
    }
}
