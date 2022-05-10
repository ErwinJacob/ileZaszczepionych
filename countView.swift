//
//  countView.swift
//  ileZaszczepionych
//
//  Created by Jakub Górka on 01/12/2021.
//

import SwiftUI

struct countView: View {
    
    @ObservedObject var counter: System
    
    var body: some View {

        VStack{
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
                    
                    Text("Zaszczepionych w lokalu:")
                    Text(String(counter.sumaZaszczepionych))
                
                    Spacer()
                    
                    HStack{
                        Button(action: {
                            counter.sumaZaszczepionych -= 1
                        }, label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 50, height: 50)
                                    .foregroundColor(.blue)
                            
                                Text("➖")
                            }
                        })
                        
                        Button(action: {
                            counter.sumaZaszczepionych = counter.sumaZaszczepionych + 1

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
                    
                    Text("Niezaszczepionych w lokalu:")
                    Text(String(counter.sumaNiezaszczepionych))
                
                    Spacer()
                    
                    HStack{
                        Button(action: {
                            counter.sumaNiezaszczepionych -= 1

                        }, label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 50, height: 50)
                                    .foregroundColor(.blue)
                            
                                Text("➖")
                            }
                        })
                        
                        Button(action: {
                            counter.sumaNiezaszczepionych += 1

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
            
        }

    }
}

struct countView_Previews: PreviewProvider {
    static var previews: some View {
        countView(counter: System())
    }
}
