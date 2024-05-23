//
//  ChatView.swift
//  28.Davaleba
//
//  Created by Data on 23.05.24.
//

import SwiftUI

struct ChatView: View {
    @State var changeCollor: String = "chatBack"
    @State var changeCollor2: String = "chatIcon"
    
    var body: some View {
        ZStack {
            Color(changeCollor)
                .cornerRadius(18)
                .shadow(radius: 50)
            HStack {
                Image("texting")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 97, height: 93)
                    .padding(.leading, 120)
                    .padding(.top, 30)
            }
            .frame(maxWidth: .infinity, alignment: .trailing)
            
            VStack {
                Button {
                    
                    if changeCollor == "chatBack" {
                        changeCollor = "tint"
                        changeCollor2 = "tint"
                    } else {
                        changeCollor = "chatBack"
                        changeCollor2 = "chatIcon"
                    }
                } label: {
                    Image(systemName: "ellipsis.message.fill")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color(changeCollor2))
                        .clipShape(Circle())
                        .shadow(radius: 15)
                        .padding(.trailing, 80)
                }
                
                Text("ჩატაობა")
                    .foregroundStyle(.white)
                    .font(.system(size: 13))
                    .padding(.trailing, 65)
            }
            
        }
        .background(Color("chatBack"))
        .frame(width: 165, height: 110)
        .cornerRadius(18)
        .shadow(radius: 50)
    }
}

#Preview {
    ChatView()
}
