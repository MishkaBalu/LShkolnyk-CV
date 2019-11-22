//
//  HomeView.swift
//  LShkolnyk-CV
//
//  Created by Administrator on 21.11.2019.
//  Copyright © 2019 Administrator. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color(red: 75/255, green: 76/255, blue: 76/255).frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
            VStack(alignment: .leading) {
                HeaderView()
                CoWorker()
                Spacer()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


struct ImportView: View {
    var libraryToImport = String()
    var body: some View {
        HStack {
            Text("import").font(.custom("SF Mono Medium", size: 18.0)).foregroundColor(.purple)
            Text(libraryToImport).font(.custom("SF Mono Medium", size: 18.0)).foregroundColor(.white)
        }
    }
}


struct HeaderView: View {
    var body: some View {
        HStack(alignment: .top, spacing: 20.0) {
            Image("leonid").resizable().aspectRatio(contentMode: .fit).cornerRadius(8).shadow(radius: 5).frame(minWidth: 80.0, idealWidth: 100.0, maxWidth: 120.0, minHeight: 80.0, idealHeight: 100.0, maxHeight: 120.0, alignment: .center)
            VStack(alignment: .leading) {
                ImportView(libraryToImport: "GoodMood")
                ImportView(libraryToImport: "Attention")
                ImportView(libraryToImport: "PositiveAttitude")
                ImportView(libraryToImport: "Meme")
            }
        }
    }
}


struct CoWorker: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0.0) {
            Text("struct ").font(.custom("SF Mono Medium", size: 18.0)).foregroundColor(.purple) + Text("CoWorker {").font(.custom("SF Mono Medium", size: 18.0)).foregroundColor(.white)
            PropertyView(constantType: "let", propertyName: "mobile", propertyType: "Int", propertyColor: Color(red: 127/255, green: 205/255, blue: 205/255), value: "+380663142137")
            PropertyView(constantType: "let", propertyName: "telegram", propertyType: "String", propertyColor: .red, value: "@MishkaBalu")
            PropertyView(constantType: "let", propertyName: "skype", propertyType: "String", propertyColor: .red, value: "duolts1997")
            PropertyView(constantType: "let", propertyName: "email", propertyType: "String", propertyColor: .red, value: "duolts1997@gmail.com")
            PropertyView(constantType: "let", propertyName: "English", propertyType: "String", propertyColor: .red, value: "Upper-Intermediate")
            Text("}").font(.custom("SF Mono Medium", size: 18.0)).foregroundColor(.white)
        }
    }
}

struct PropertyView: View {
    var constantType: String
    var propertyName: String
    var propertyType: String
    var propertyColor: Color
    var value: String
    var body: some View {
        Text("   \(constantType) ").font(.custom("SF Mono Medium", size: 18.0)).foregroundColor(.purple) + Text("\(propertyName): ").font(.custom("SF Mono Medium", size: 18.0)).foregroundColor(.white) + Text("\(propertyType) ").font(.custom("SF Mono Medium", size: 18.0)).foregroundColor(.blue) + Text(" = ").font(.custom("SF Mono Medium", size: 18.0)).foregroundColor(.white) + Text("\(value)").font(.custom("SF Mono Medium", size: 18.0)).foregroundColor(propertyColor)
    }
}

//struct ArrayView: View {
//    var constantType: String
//    var propertyName: String
//    var body: some View {
//        Text("   \(constantType) ").font(.custom("SF Mono Medium", size: 18.0)).foregroundColor(.purple) +
//            Text("\(propertyName): ").font(.custom("SF Mono Medium", size: 18.0)).foregroundColor(.white) +
//            Text("Array").font(.custom("SF Mono Medium", size: 18.0)).foregroundColor(.red) +
//            Text(" = ").font(.custom("SF Mono Medium", size: 18.0)).foregroundColor(.white) +
//            Text("[").font(.custom("SF Mono Medium", size: 18.0)).foregroundColor(.white) +
//            Text("Xcode").font(.custom("SF Mono Medium", size: 18.0)).foregroundColor(.red) +
//            Text(",").font(.custom("SF Mono Medium", size: 18.0)).foregroundColor(.white) +
//            Text("Postman").font(.custom("SF Mono Medium", size: 18.0)).foregroundColor(.red) +
////            Text(",").font(.custom("SF Mono Medium", size: 18.0)).foregroundColor(.white) +
////            Text("Git").font(.custom("SF Mono Medium", size: 18.0)).foregroundColor(.red) +
////            Text(",").font(.custom("SF Mono Medium", size: 18.0)).foregroundColor(.white) +
////            Text("SourceTree").font(.custom("SF Mono Medium", size: 18.0)).foregroundColor(.red) +
////            Text(",").font(.custom("SF Mono Medium", size: 18.0)).foregroundColor(.white) +
////            Text("GitKraken").font(.custom("SF Mono Medium", size: 18.0)).foregroundColor(.red) +
////            Text(",").font(.custom("SF Mono Medium", size: 18.0)).foregroundColor(.white) +
////            Text("Sublime Text").font(.custom("SF Mono Medium", size: 18.0)).foregroundColor(.red) +
////            Text(",").font(.custom("SF Mono Medium", size: 18.0)).foregroundColor(.white) +
////            Text("Adobe Photoshop").font(.custom("SF Mono Medium", size: 18.0)).foregroundColor(.red) +
////            Text(",").font(.custom("SF Mono Medium", size: 18.0)).foregroundColor(.white) +
////            Text("Adobe Illustrator").comable().font(.custom("SF Mono Medium", size: 18.0)).foregroundColor(.red) +
//            Text("]").font(.custom("SF Mono Medium", size: 18.0)).foregroundColor(.white)
//        }
//    }
//
//extension Text {
//    mutating func comable() {
//        let text = self
//        self = text + Text(",").font(.custom("SF Mono Medium", size: 18.0)).foregroundColor(.white)
//    }
//}
//
//
//var softwareKnowledge: Array = ["Xcode", "Charles", "Postman", "Git", "SourceTree", "GitKraken", "SublimeText", "Adobe Photoshop"]
