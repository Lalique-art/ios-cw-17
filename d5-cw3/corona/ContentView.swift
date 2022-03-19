//
//  ContentView.swift
//  corona
//
//  Created by Shaimaa on 07/02/2022.
//

import SwiftUI


// يجب عمل هيكل وكائنات من الهيكل
var people = [
    UserCovidInfo(fullName: "maryam", area: "asmah", numberOfDoses: 2),
    UserCovidInfo(fullName: "lolo", area: "jahra", numberOfDoses: 3),
    UserCovidInfo(fullName: "amirah", area: "asmah", numberOfDoses: 2)
]

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.gray
                .opacity(0.3)
                .ignoresSafeArea()
            VStack{
                Image("corona")
                    .resizable()
                    .scaledToFit()
                Text("حالات كورونا الجديدة")
                    .font(.system(size: 30, weight: .bold, design: .default))
                    .padding()
                // name of new cases
                ForEach(people, id: \.self) {i in
                    // الاسم
                        Text("الاسم:\(i.fullName)")
    // المنطقة
                        Text("المنطقة:\(i.area)")
                        // عدد الجرعات
                        Text("عدد الجرعات:\(i.numberOfDoses)")

                }
                VStack{
        // الحالة الأولى
                // الاسم
                    Text("الاسم:\(people[0].fullName)")
// المنطقة
                    Text("المنطقة:\(people[0].area)")
                    // عدد الجرعات
                    Text("عدد الجرعات:\(people[0].numberOfDoses)")

                Divider()
                }
                VStack{
        // الحالة الثانية
                // الاسم
               Text("")
                // المنطقة
               Text("")
    // عدد الجرعات
               Text("")

                Divider()
                }
                VStack{
              // الحالة الثالثة
                      // الاسم
                     Text("")
                      // المنطقة
                     Text("")
          // عدد الجرعات
                     Text("")
                }
                Spacer()
                HStack{
                    Text("آخر تحديث ١٥-٣-٢٠٢٢")
                        .font(.system(size: 20, weight: .bold, design: .default))
                    Image(systemName: "repeat.circle.fill")
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0.5882, blue: 0.1961, alpha: 1)))
                        .font(.system(size: 30))
                }
                .padding()
                .border(Color.white, width: 5)
                .cornerRadius(10)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}






