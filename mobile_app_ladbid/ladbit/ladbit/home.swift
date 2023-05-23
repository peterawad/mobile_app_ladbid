
import SwiftUI
struct Box2 {
    var id: Int;
    let title, imageUrl: String
}

struct home: View
{
    init()
    {
        UITabBar.appearance().barTintColor = .systemBackground
    }
    @State var selectedIndex = 0
    @State var shouldShowModal = false
    @State private var searchtext = ""
    let tabBarImageNames = ["house", "magnifyingglass.circle.fill", "folder", "person"]
    @State private var showingLoginScreen = false
    var body: some View
    {
        VStack{
            HStack
            {
                ForEach(0..<4) { num in
                    Spacer()
                    Button (action:
                                {
                        selectedIndex = num
                    },label:{
                        Spacer()
                        Image(systemName: tabBarImageNames[num])
                            .font (.system(size: 24, weight: .bold))
                            .foregroundColor (.white)
                        Spacer()
                        
                    })
                }
            }
            Spacer()
            ZStack
            {
                switch selectedIndex
                {
                case 0:
                    NavigationView
                    {
                        ScrollView
                        {
                            VStack
                            {
                                NavigationLink(destination:ItemDetail())
                                {
                                    HStack
                                    {
                                        Image("car")
                                            .resizable()
                                            .frame(width:60, height: 60)
                                            .padding(15)
                                        Text("Mersedes car")
                                        Text("\t£8000\n\t123 bid")
                                        
                                    }
                                    
                                    .background(.gray)
                                }
                                NavigationLink(destination:ItemDetail2())
                                {
                                    HStack
                                    {
                                        Image("plane")
                                            .resizable()
                                            .frame (width:60, height: 60)
                                            .padding(15)
                                        Text("Meg")
                                        Text("\t\t\t£33000\n\t\t\t333 bid")
                                    }
                                    .background(.gray)
                                }
                                NavigationLink(destination:ItemDetail3())
                                {
                                    HStack
                                    {
                                        Image("boat")
                                            .resizable()
                                            .frame (width:60, height: 60)
                                            .padding(15)
                                        Text("Boat")
                                        Text("\t\t\t£33000\n\t\t\t12 bid")
                                        
                                    }
                                    .background(.gray)
                                }
                                Text("New Realse")
                                    .font(.system(size:36,weight: .black))
                                    .multilineTextAlignment(.leading)
                                NavigationView
                                {
                                    VStack
                                    {
                                        HStack
                                        {
                                            Image("toktok")
                                                .resizable()
                                                .frame(width:60, height: 60)
                                                .padding(15)
                                            Text("toktok")
                                            Text("\t\t\t£8000\n\t34 bid")
                                        }
                                        .background(.gray)
                                        HStack
                                        {
                                            Image("gun")
                                                .resizable()
                                                .frame (width:60, height: 60)
                                                .padding(15)
                                            Text("gun")
                                            Text("\t\t\t£33000\n\t\t\t74 bid")
                                        }
                                        .background(.gray)
                                        HStack
                                        {
                                            Image("watch")
                                                .resizable()
                                                .frame (width:60, height: 60)
                                                .padding(15)
                                            Text("watch")
                                            Text("\t\t\t£33000\n\t\t\t56 bid")
                                            
                                        }
                                        .background(.gray)
                                    }
                                }
                            }
                            .navigationTitle("Trending Items")
                        }
                    }
                case 1:
                    NavigationView
                    {
                        ScrollView
                        {
                            Text ("Search for \(searchtext)")
                                .navigationTitle("search example")
                        }.searchable(text:$searchtext)
                    }
                case 2:
                    NavigationView
                    {
                        ScrollView
                        {
                            VStack
                            {
                                NavigationLink(destination:ItemDetail())
                                {
                                    HStack
                                    {
                                        Image("car")
                                            .resizable()
                                            .frame(width:60, height: 60)
                                            .padding(15)
                                        Text("Mersedes car")
                                        Text("\t£8000\n\t123 bid")
                                        
                                    }
                                    .background(.gray)
                                }
                                NavigationLink(destination:ItemDetail2())
                                {
                                    HStack
                                    {
                                        Image("plane")
                                            .resizable()
                                            .frame (width:60, height: 60)
                                            .padding(15)
                                        Text("Meg")
                                        Text("\t\t\t£33000\n\t\t\t333 bid")
                                    }
                                    .background(.gray)
                                }
                                NavigationLink(destination:ItemDetail3())
                                {
                                    HStack
                                    {
                                        Image("boat")
                                            .resizable()
                                            .frame (width:60, height: 60)
                                            .padding(15)
                                        Text("Boat")
                                        Text("\t\t\t£33000\n\t\t\t12 bid")
                                        
                                    }
                                    .background(.gray)
                                }
                                
                                HStack
                                {
                                    Image("toktok")
                                        .resizable()
                                        .frame(width:60, height: 60)
                                        .padding(15)
                                    Text("toktok")
                                    Text("\t\t\t£8000\n\t\t\t 34 bid")
                                }
                                .background(.gray)
                                HStack
                                {
                                    Image("gun")
                                        .resizable()
                                        .frame (width:60, height: 60)
                                        .padding(15)
                                    Text("gun")
                                    Text("\t\t\t£33000\n\t\t\t74 bid")
                                }
                                .background(.gray)
                                HStack
                                {
                                    Image("watch")
                                        .resizable()
                                        .frame (width:60, height: 60)
                                        .padding(15)
                                    Text("watch")
                                    Text("\t\t\t£33000\n\t\t\t56 bid")
                                }
                                .background(.gray)
                            }
                        }
                        .navigationTitle("All Items")
                    }
                case 3:
                    NavigationView
                    {
                        ScrollView
                        {
                            VStack
                            {
                                HStack
                                {
                                    Image(systemName: "person")
                                        .resizable()
                                        .frame (width:40, height: 40)
                                        .padding(15)
                                    Text("Profile")
                                        .font(.system(size:36,weight: .black))
                                        .multilineTextAlignment(.leading)
                                }
                                HStack(alignment: .top)
                                {
                                    Image("peter")
                                        .resizable()
                                        .frame (width:60, height: 60)
                                        .padding(15)
                                    VStack(alignment :.leading){
                                        Text("Name: peter\n")
                                            .font(.system(size:18))
                                        Text("Age: 24\n")
                                            .font(.system(size:18))
                                        Text("Country: UK\n")
                                            .font(.system(size:18))
                                        Text("Payment Method: Visa\n")
                                            .font(.system(size:18))
                                        
                                        Button(action: {}) {
                                            Text("Edit")
                                        }
                                        
                                    }
                                }
                                Button(action: {}) {
                                    Text("Help and support")
                                }
                                .foregroundColor (.white)
                                .frame (width: 300, height: 50)
                                .background (Color.blue) .cornerRadius (10)
                                
                                Button(action: {}) {
                                    Text("Change payment method")
                                }
                                .foregroundColor (.white)
                                .frame (width: 300, height: 50)
                                .background (Color.blue) .cornerRadius (10)
                                
                                Button(action: {}) {
                                    Text("Notification")
                                }
                                .foregroundColor (.white)
                                .frame (width: 300, height: 50)
                                .background (Color.blue) .cornerRadius (10)
                                
                                Button("Log Out") {
                                    authenticateUser()
                                }.foregroundColor (.white)
                                    .frame (width: 300, height: 50)
                                    .background (Color.blue) .cornerRadius (10)
                                
                                NavigationLink(destination: Login(), isActive: $showingLoginScreen)
                                {
                                    EmptyView()
                                }
                            }
                            
                        }
                    }
                default:
                    Text ("Remaining tabs")
                }
            }
        }.background(Color.blue)
    }
    func authenticateUser()
    {
        showingLoginScreen = true
        
    }
    
}
struct ContentView_Previews2: PreviewProvider
{
    static var previews: some View
    {
        home()
    }
}




/*
 .fullScreenCover (isPresented: SshduldShowModal, content: {
     Text ("Fullscreen cover") HStack
 {
     Button(action:{login.self()},label: {
         Spacer()
         Image("home")
             .font (.system(size: 24, weight: .bold))
             .foregroundColor (Color (. label))
         Spacer()
     })
 }
 NavigationView
 {
     ScrollView
     {
        
         HStack
         {
             Image("home")
                     .resizable()
                     .frame(width:60, height: 60)
                     .padding(15)
             Image("search")
                 .resizable()
                 .frame (width:60, height: 60)
                 .padding(15)
             Image("items")
                 .resizable()
                 .frame (width:60, height: 60)
                 .padding(15)
             Image("profile")
                 .resizable()
                 .frame (width:60, height: 60)
                 .padding(15)
 
             NavigationLink(destination: login(),isActive: $openinghome)
             {
                 //openhome()
             }
             
         }.background(Color.blue)
         
         VStack
         {

         }
         
     }.navigationBarTitle("")
     
 }
 
}
func openhome()
{
 openinghome = true
 
}*/






/*ScrollView
{
    VStack
    {
        
        
        VStack
        {
            
            /*NavigationLink(destination: Text("You are logged in @\(username)"), isActive: $showingLoginScreen)
            {
                EmptyView()
            }*/
        }
    }
}.navigationBarTitle(Text (""))*/
/*
GroupBox(label:                    Image(systemName:"search")
        .resizable()
        .frame(width:60, height: 60)
        .padding(15)){
            openhome()}
}.background(Color.blue)
//.cornerRadius (12)
*/
