//
//  StolikView.swift
//  ileZaszczepionych
//
//  Created by Jakub Górka on 01/12/2021.
//

import SwiftUI

struct StolikView: View {
    
    @ObservedObject var system: System
    @ObservedObject var stolik = Stolik(nazwa: "")
    
    var body: some View {
        
        VStack{
            
            Text("Nazwa Stolika:")
                .bold()

            TextField("Nazwa stolika", text: $stolik.nazwaStolika)
                .frame(width: 200.0, height: 30.0)
                .textFieldStyle(.roundedBorder)
            
            Spacer()
            
            ZStack{
                if #available(iOS 15.0, *) {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 250.0, height: 250.0)
                        .foregroundColor(.cyan)
                } else {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 250.0, height: 250.0)
                        .foregroundColor(.gray)
                }
                VStack{
                    
                    Spacer()
                    
                    Text("Zaszczepionych:")
                        .bold()
                    Text(String(stolik.sumaZaszczepionych))
                
                    Spacer()
                    
                    HStack{
                        Button(action: {
                            stolik.sumaZaszczepionych -= 1
                            system.sumaZaszczepionych -= 1
                            
                            if(stolik.sumaZaszczepionych == 0 && stolik.sumaNiezaszczepionych == 0){
                                stolik.zajety = false
                            }
                            else{
                                stolik.zajety = true
                            }
                            
                        }, label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 50, height: 50)
                                    .foregroundColor(.blue)
                            
                                Text("➖")
                            }
                        })
                        
                        Button(action: {
                            stolik.sumaZaszczepionych += 1
                            system.sumaZaszczepionych += 1

                            if(stolik.sumaZaszczepionych == 0 && stolik.sumaNiezaszczepionych == 0){
                                stolik.zajety = false
                            }
                            else{
                                stolik.zajety = true
                            }
                            
                        }, label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 50, height: 50)
                                    .foregroundColor(.blue)
                            
                                Text("➕")
                            }
                        })
                        
                    }
                    
                    Spacer()
                    
                    

                }
            }
            .frame(width: 250.0, height: 250.0)
            
            Spacer()
            
            ZStack{
            
                if #available(iOS 15.0, *) {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 250.0, height: 250.0)
                        .foregroundColor(.cyan)
                } else {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 250.0, height: 250.0)
                        .foregroundColor(.gray)
                }
                VStack{
                    
                    Spacer()
                    
                    Text("Niezaszczepionych:")
                        .bold()
                    Text(String(stolik.sumaNiezaszczepionych))
                
                    Spacer()
                    
                    HStack{
                        Button(action: {
                            stolik.sumaNiezaszczepionych -= 1
                            system.sumaNiezaszczepionych -= 1

                            if(stolik.sumaZaszczepionych == 0 && stolik.sumaNiezaszczepionych == 0){
                                stolik.zajety = false
                            }
                            else{
                                stolik.zajety = true
                            }
                            
                        }, label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 50, height: 50)
                                    .foregroundColor(.blue)
                            
                                Text("➖")
                            }
                        })
                        
                        Button(action: {
                            stolik.sumaNiezaszczepionych += 1
                            system.sumaNiezaszczepionych += 1

                            if(stolik.sumaZaszczepionych == 0 && stolik.sumaNiezaszczepionych == 0){
                                stolik.zajety = false
                            }
                            else{
                                stolik.zajety = true
                            }
                            
                        }, label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 50, height: 50)
                                    .foregroundColor(.blue)
                            
                                Text("➕")
                            }
                        })
                        
                    }
                    
                    Spacer()
                }
            }
            .frame(width: 250.0, height: 250.0)
            
            Spacer()
            
            Button(action: {
                system.sumaZaszczepionych -= stolik.sumaZaszczepionych
                system.sumaNiezaszczepionych -= stolik.sumaNiezaszczepionych
                stolik.sumaZaszczepionych = 0
                stolik.sumaNiezaszczepionych = 0
                stolik.zajety = false
                
            }, label: {
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 150, height: 50)
                        .foregroundColor(.blue)
                
                    Text("Wyzeruj")
                        .foregroundColor(.black)
                        .bold()
                }
            

            })
            
            Spacer()
            
        }
        .navigationTitle("Stolik \(stolik.nazwaStolika)")
        

    }
}
    

struct StolikView_Previews: PreviewProvider {
    static var previews: some View {
        StolikView(system: System())
    }
}
