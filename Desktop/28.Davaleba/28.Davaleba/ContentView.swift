//
//  ContentView.swift
//  28.Davaleba
//
//  Created by Data on 22.05.24.
//

import SwiftUI


struct ContentView: View {
    @State private var isPressed = false
    @State private var rotationAngle: Double = 0
    
    var body: some View {
        ZStack {
            Color("back")
                .edgesIgnoringSafeArea(.all)
            
            VStack() {
                Text("Svibti iuai eksersaisi")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.trailing, 30)
                    .padding(.bottom, 700)
            }
            .padding()
            
            HStack {
                GuitarView()
                    .padding(.trailing, 200)
                    .padding(.bottom, 370)
            }
            
            VStack(spacing: 12, content: {
                ChatView()
                SakviriView()
            })
            .padding(.leading, 170)
            .padding(.bottom, 370)
            
            HStack{
                List {
                    ListItemView(iconName: "list.clipboard.fill", question: "რა დაუწუნა ბარბარემ ნიკის?", details: "ნიკის ამაზე ჯერ განცხადება არ გაუკეთებია, ფანები ელოდებიან რომ რომელიმე მალე სიჩუმეს გაფანტავს")
                    
                    ListItemView(iconName: "list.clipboard.fill", question: "რა ზომის ფეხი აქვს ვასოს?", details: "დეველოპერებმა განაცხადეს რომ თუ მას 42 და მეტი ზომა ფეხი აქვს მის მოსმენას აზრი არ აქვს და კომენტარის გარეშე დატოვებენ ლექციას")
                    
                    ListItemView(iconName: "list.clipboard.fill", question: "რა სიმაღლისაა ანჟელა ew?", details: "ანჟელა ew არის მეტრაოთხმოცი, რაც ნიშნავს რომ ის დაახლოებით ტეილორ Swift-ის სიმაღლისაა და დიდი ფეხი აქვს")
                    
                    ListItemView(iconName: "list.clipboard.fill", question: "რატომ გაებუტა ბარბარეს ჭეპეტე?", details: "ამჟამინდელი მონაცემებით ისინი 2 დღე არ ესაუბრებოდნენ ერთმანეთს და როგორც გაირკვა ანიგნორებს აიგნორებდნენ რაღაც იგნორში.")
                    
                    ListItemView(iconName: "list.clipboard.fill", question: "MVC vs MVVM", details: "აი ეს MVC გასაგებია, მაგრამ MVVM ჩემამდე არ დადის რა, ამ სვიბთ იუაიში სად ვიყენებთ მაგას?")
                    
                    ListItemView(iconName: "list.clipboard.fill", question: "ნეტავ რამდენი ხანი გაგრძელდება ეს?", details: "აღმოჩნდა რომ დეველოპერები ძალიან გახარებულები არიან SwiftUI-ით. ნეტავ რამდენი ხანი გაგრძელდება Honeymoon phase?")
                    
                }
            }
            .padding(.top, 330)
            .listStyle(PlainListStyle())
            
            VStack(spacing: 20) {
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Button(action: {
                        withAnimation(.easeInOut(duration: 0.5)) {
                            isPressed.toggle()
                            rotationAngle += 360
                        }
                    }) {
                        Image(systemName: "arrow.clockwise")
                            .foregroundColor(.white)
                            .padding()
                            .background(isPressed ? Color("darkTint") : Color("tint"))
                            .clipShape(Circle())
                            .shadow(radius: 20)
                            .rotationEffect(.degrees(rotationAngle))
                    }
                }
            }
            .padding()
        }
    }
}

struct ListItemView: View {
    var iconName: String
    var question: String
    var details: String
    
    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: iconName)
                .foregroundColor(.white)
                .frame(width: 40, height: 40)
                .background(Color("tint"))
                .clipShape(Circle())
                .shadow(radius: 20)
                .font(.title2)
                .padding(.trailing, 5)
                .padding(.top, 8)
            
            VStack(alignment: .leading) {
                Text(question)
                    .font(.system(size: 15))
                    .bold()
                    .foregroundColor(.white)
                    .shadow(radius: 20)
                Text(details)
                    .font(.system(size: 12))
                    .foregroundColor(.gray)
                    .shadow(radius: 20)
                    .lineLimit(3)
            }
        }
        .listRowBackground(Color.clear)
        .listRowSeparatorTint(.white)
        .alignmentGuide(.listRowSeparatorLeading) { i in
            i[.leading]}
        
    }
}

#Preview {
    ContentView()
}
