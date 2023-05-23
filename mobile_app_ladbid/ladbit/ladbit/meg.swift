//
//  items.swift
//  ladbit
//
//  Created by Peter Awad on 30/01/2023.
//

import SwiftUI
struct ItemDetail2: View
{
    private var num = 4
    @State private var pid_amount = ""
    var body: some View
    {
        NavigationView
        {
            ScrollView
            {
                HStack
                {
                    Image("plane")
                        .resizable()
                        .frame(width:60, height: 60)
                        .padding(15)
                    Text("plane")
                    Text("\t£8000\n\t123 bid\n\t 7 days left")
                        .padding ()
                    Spacer()
                }
                VStack
                {
                    Image("plane")
                        .resizable()
                        .frame(width:300, height: 300)
                        .padding(15)
                }
                HStack
                {
                    ForEach(1..<4)
                    { num in
                        Image("meg\(num)")
                            .resizable()
                            .scaledToFit()
                            .tag(num)
                    }
                    Spacer()
                }.tabViewStyle(PageTabViewStyle())
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .padding()
                VStack(alignment: .leading)
                {
                    Text("meg plane")
                        .font(.system(size: 36,weight: .black))
                    Text("\nSoviet military fighter aircraft produced by a design bureau founded in 1939 by Artem Mikoyan (M) and Mikhail Gurevich (G). (The i in MiG is the Russian word meaning “and.”) The early MiG aircraft were propeller-driven fighters produced in moderate numbers during World War II.")
                    HStack
                    {
                        TextField("bid amount",text: $pid_amount)
                            .padding ()
                            .frame (width: 200, height: 50)
                            .background (Color.black.opacity (0.05))
                            .cornerRadius (10)
                        Button("bid")
                        {
                            
                        }.foregroundColor (.white)
                            .frame (width:  100, height: 50)
                            .background (Color.blue) .cornerRadius (10)
                        Spacer()
                    }
                }
                .foregroundColor(Color.blue)
                
            }
        }
    }
}

struct ItemDetail_Previews2: PreviewProvider {
    static var previews: some View {
        NavigationView
        {
            ItemDetail2()
        }
    }
}


/*NavigationView
 {
 ScrollView
 {
 HStack
 {
 Image("car")
 .resizable()
 .frame(width:60, height: 60)
 .padding(15)
 Text("Mercedes Car")
 Text("\t£8000\n\t123 bid\n\t 7 days left")
 .padding ()
 
 Spacer()
 }
 
 .navigationBarTitleDisplayMode(.inline)
 */
