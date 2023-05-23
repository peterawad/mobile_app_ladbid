//
//  items.swift
//  ladbit
//
//  Created by Peter Awad on 30/01/2023.
//

import SwiftUI
struct ItemDetail3: View
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
                    Image("boat")
                        .resizable()
                        .frame(width:60, height: 60)
                        .padding(15)
                    Text("boat")
                    Text("\t£8000\n\t123 bid\n\t 7 days left")
                        .padding ()
                    Spacer()
                }
                VStack
                {
                    Image("boat")
                        .resizable()
                        .frame(width:300, height: 300)
                        .padding(15)
                }
                HStack
                {
                    ForEach(1..<4)
                    { num in
                        Image("boat\(num)")
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
                    Text("boat")
                        .font(.system(size: 36,weight: .black))
                    Text("\na vessel for transport by water, constructed to provide buoyancy by excluding water and shaped to give stability and permit propulsion. a small ship, generally for specialized use: a fishing boat. a small vessel carried for use by a large one, as a lifeboat: They lowered the boats for evacuation.")
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

struct ItemDetail_Previews3: PreviewProvider {
    static var previews: some View {
        NavigationView
        {
            ItemDetail3()
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
