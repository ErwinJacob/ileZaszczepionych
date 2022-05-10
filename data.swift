//
//  data.swift
//  ileZaszczepionych
//
//  Created by Jakub Górka on 01/12/2021.
//

import Foundation

class Stolik: ObservableObject, Identifiable {
    @Published var sumaZaszczepionych: Int
    @Published var sumaNiezaszczepionych: Int
    @Published var nazwaStolika: String
    @Published var zajety: Bool
    
    init(nazwa: String){
        self.zajety = false
        self.nazwaStolika = nazwa
        self.sumaZaszczepionych = 0
        self.sumaNiezaszczepionych = 0
    }
}

class System: ObservableObject, Identifiable {
    @Published var stoliki: [Stolik]
    @Published var sumaZaszczepionych: Int
    @Published var sumaNiezaszczepionych: Int
    
    init(){
        self.sumaZaszczepionych = 0
        self.sumaNiezaszczepionych = 0
        self.stoliki = []
    }
}

func stolikDodaj(nazwaStolika: String, stoliki: inout Array<Stolik>){
    let newStolik = Stolik(nazwa: nazwaStolika)
    stoliki.append(newStolik)
}


func startSystem(stoliki: inout Array<Stolik>){
    stolikDodaj(nazwaStolika: "1", stoliki: &stoliki)
    stolikDodaj(nazwaStolika: "2", stoliki: &stoliki)
    stolikDodaj(nazwaStolika: "3", stoliki: &stoliki)
    stolikDodaj(nazwaStolika: "4", stoliki: &stoliki)
    stolikDodaj(nazwaStolika: "5", stoliki: &stoliki)
//    stolikDodaj(nazwaStolika: "6", stoliki: &stoliki)
//    stolikDodaj(nazwaStolika: "8", stoliki: &stoliki)
//    stolikDodaj(nazwaStolika: "9", stoliki: &stoliki)
//    stolikDodaj(nazwaStolika: "11", stoliki: &stoliki)
//    stolikDodaj(nazwaStolika: "12", stoliki: &stoliki)
//    stolikDodaj(nazwaStolika: "13", stoliki: &stoliki)
//    stolikDodaj(nazwaStolika: "14", stoliki: &stoliki)
//    stolikDodaj(nazwaStolika: "15", stoliki: &stoliki)
//    stolikDodaj(nazwaStolika: "16", stoliki: &stoliki)
//    stolikDodaj(nazwaStolika: "17", stoliki: &stoliki)
//    stolikDodaj(nazwaStolika: "18", stoliki: &stoliki)

    //designed to work in my cafe
}
