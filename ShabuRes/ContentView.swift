//
//  ContentView.swift
//  ShabuRes
//
//  Created by Macbook Pro 16 on 27/5/2566 BE.
//

import SwiftUI

struct ContentView: View {
    @State var FFname:String = "FAST FOOD"
    
    @State var cal:Int = 0
    @State var cost:Int = 0
    
    @State var ff:Int = 0
    @State var hg:Int = 0
    @State var p:Int = 0
    @State var cl:Int = 0
    @State var wt:Int = 0
    @State var cf:Int = 0
    
    
    var body: some View {
        VStack {
                
                Text(FFname)
                    .padding()
                    .font(.largeTitle).foregroundColor(.red)
                
                
                HStack {
                    
                    Button("French Fries") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/self.cal += 40
                        self.cost = 40
                        self.ff += 1
                        
                    }
                    .padding()
                    .frame(width: 125, height: 100, alignment: .center).background(.bar)
                    
                    Button("Hamburger") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/self.cal += 90
                        self.cost = 90
                        self.hg += 1
                    }
                    .padding()
                    .frame(width: 125, height: 100, alignment: .center).background(.bar)
                    
                    Button("Pie") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/self.cal += 60
                        self.cost = 60
                        self.p += 1
                    }
                    .padding()
                    .frame(width: 125, height: 100, alignment: .center).background(.bar)
                }
                
                HStack{
                    Button("Cola") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/self.cal += 20
                        self.cost = 20
                        self.cl += 1
                    }
                    .padding()
                    .frame(width: 125, height: 100, alignment: .center).background(.bar)
                    
                    
                    Button("Water") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/self.cal += 10
                        self.cost = 10
                        self.wt += 1
                    }
                    .padding()
                    .frame(width: 125, height: 100, alignment: .center).background(.bar)
                    Button("Coffee") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/self.cal += 30
                        self.cost = 30
                        self.cf += 1
                    }
                    .padding()
                    .frame(width: 125, height: 100, alignment: .center).background(.bar)
                }
                Text("Unite Price " + String(cost) + " Bath")
                    .padding()
                    .font(.headline)
                HStack{
                    VStack{
                        Text("French Fries x " + String(ff))
                            .padding()
                        Text("Hamburger x " + String(hg))
                            .padding()
                        Text("Pie x " + String(p))
                            .padding()
                    }
                    VStack{
                        Text("Cola x " + String(cl))
                            .padding()
                        Text("Water x " + String(wt))
                            .padding()
                        Text("Coffee x " + String(cf))
                            .padding()
                    }
                }
                
                Button("CheckBill") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/self.FFname = ("Total " + String(self.cal) + " Bath")
                    if self.cal == 0{
                        self.FFname = "FAST FOOD"
                    }
                }
                .padding()
                .frame(width: 300, height: 100, alignment: .center).background(.green)
                
                
                
                
            }
            Button("Reset") {
                self.FFname = "FAST FOOD"
                self.cal = 0
                self.cost = 0
                self.ff = 0
                self.hg = 0
                self.p = 0
                self.cl = 0
                self.wt = 0
                self.cf = 0
            }
            .padding()
            .frame(width: 300, height: 100, alignment: .center).background(.red)
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
