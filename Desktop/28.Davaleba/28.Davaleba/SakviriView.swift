//
//  SakviriView.swift
//  28.Davaleba
//
//  Created by Data on 23.05.24.
//

import SwiftUI

struct SakviriView: View {
    var body: some View {
        ZStack {
            VStack {
                Button {
                    
                } label: {
                    Image(systemName: "person.fill")
                        .foregroundColor(Color("personCollor"))
                        .padding()
                        .background(Color("sakviri"))
                        .clipShape(Circle())
                        .shadow(radius: 15)
                        .padding(.trailing, 80)
                }
                
                Text("ჩატაობა")
                    .foregroundStyle(.white)
                    .font(.system(size: 13))
                    .padding(.trailing, 65)
            }
            
            HStack {
                Image("sakviri")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                    .padding(.leading, 100)
                    .padding(.top, 30)
            }
            .frame(maxWidth: .infinity, alignment: .trailing)
        }
        .background(Color("sakviriBack"))
        .frame(width: 165, height: 110)
        .cornerRadius(18)
        .shadow(radius: 50)
    }
}

#Preview {
    SakviriView()
}
