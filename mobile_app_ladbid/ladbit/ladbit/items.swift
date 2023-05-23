//
//  items.swift
//  ladbit
//
//  Created by Peter Awad on 30/01/2023.
//

import SwiftUI
struct ItemDetail: View
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
                    Image("car")
                        .resizable()
                        .frame(width:60, height: 60)
                        .padding(15)
                    Text("Mercedes Car")
                    Text("\t£8000\n\t123 bid\n\t 7 days left")
                        .padding ()
                    Spacer()
                }
                VStack
                {
                    Image("car")
                        .resizable()
                        .frame(width:300, height: 300)
                        .padding(15)
                }
                HStack
                {
                    ForEach(1..<4)
                    { num in
                        Image("car\(num)")
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
                    Text("Mercedes Car")
                        .font(.system(size: 36,weight: .black))
                    Text("\nThe 2020 Mercedes-Benz CLS is a five-passenger four-door sedan, though Mercedes markets it as a coupe. Two versions are available: the CLS 450 and the AMG CLS 53. The base CLS 450 comes with a turbocharged 3.0-liter six-cylinder engine good for 362 horsepower and 369 lb-ft of torque.")
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

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView
        {
            ItemDetail()
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
