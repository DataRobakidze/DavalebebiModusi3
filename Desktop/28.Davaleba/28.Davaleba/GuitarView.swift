//
//  GuitarView.swift
//  28.Davaleba
//
//  Created by Data on 22.05.24.
//

import SwiftUI

struct GuitarView: View {
    
    @State var mainText: String = "We love property wrappers and closures"
    
    var body: some View {
        ZStack {
            Color("juzonBack")
                .cornerRadius(18)
                .frame(width: 165, height: 232)
                .shadow(radius: 50)
            HStack {
                Image("guitar")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 82, height: 182)
            }
            .frame(maxWidth: .infinity, alignment: .trailing)
            
            VStack {
                Button {
                    if mainText == "We love property wrappers and closures" {
                        mainText = "We don`t love property wrappers and closures"
                    } else {
                        mainText = "We love property wrappers and closures"
                    }
                } label: {
                    Image(systemName: "mic.fill")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color("liteYelow"))
                        .clipShape(Circle())
                        .shadow(radius: 15)
                        .padding(.trailing, 80)
                }
                
                Text("ჯუზონები და რამე")
                    .foregroundStyle(.white)
                    .font(.system(size: 11))
                    .padding(.trailing, 40)
                    .padding(.bottom, 140)
            }
            
            VStack {
                Spacer()
                Text(mainText)
                    .lineLimit(4)
                    .foregroundColor(.white)
                    .font(.system(size: 17))
                    .bold()
                    .padding()
            }
            .frame(width: 145, height: 212)
            .shadow(radius: 30)
            
        }
        .frame(width: 165, height: 232)
    }
}

#Preview {
    GuitarView()
}
