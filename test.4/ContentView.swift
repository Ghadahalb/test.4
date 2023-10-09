//
//  ContentView.swift
//  test.4
//
//  Created by jumanah khalid albisher on 18/03/1445 AH.
//

import SwiftUI
import UIKit


struct ContentView: View {
    @State var didTap = false
    var body: some View {
       
        NavigationView {
            
            HStack {
                ZStack{
                    NavigationLink(destination: Regions()) {
                        
                        
                        GifImage("home")
                            .frame(width: 988, height:450)
                            .offset(x:40,y:30)
                            .fixedSize()
                        
                    }
                    Button("ارحبووو") { self.didTap = true}
                        .frame(maxWidth: .infinity)
                        .buttonStyle(.bordered)
                        .tint(.white)
                        .shadow(radius:50)
                        .offset(CGSize(width: 10.0, height: 70))
                    
                
                }
                NavigationLink("", destination:  Regions(), isActive: $didTap)
                            }
            }
        }
                }
    
    


struct Regions: View {
    @State var didTap = false
    var body: some View {
        
        HStack {
            ZStack{
                GifImage("#2GIF")
                    .frame(width: 988, height:450)
                    .offset(x:40,y:-10)
              
                Button("المنطقة الوسطى") { self.didTap = true
                }
                
                .font(.system(size:20))
                .buttonStyle(.bordered )
                .tint(.white)
                .offset(x:10,y:80)
                
                Button("المنطقة الشمالية") { self.didTap = true
                }
                
                .font(.system(size:20))
                .buttonStyle(.bordered )
                .tint(.white)
                .offset(x:240,y:80)
                
                Button(" المنطقة الجنوبية") { self.didTap = true
                }
                
                .font(.system(size:20))
                .buttonStyle(.bordered )
                .tint(.white)
                .offset(x:-240,y:80)
                   
                
            }
            NavigationLink("", destination:  NajedRegion(), isActive: $didTap)
        }
       
    }
}

struct NajedRegion: View {
    @State var didTap = false
    var body: some View {
        Text("Najed")
        
    }}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewInterfaceOrientation(.landscapeLeft)
        
    }
}
