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
            Text("import").font(.custom("SF Mono Medium", size: 20.0)).foregroundColor(.purple)
            Text(libraryToImport).font(.custom("SF Mono Medium", size: 20.0)).foregroundColor(.white)
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
        Text("struct ").font(.custom("SF Mono Medium", size: 20.0)).foregroundColor(.purple) + Text("CoWorker {\n").font(.custom("SF Mono Medium", size: 20.0)).foregroundColor(.white) + Text("let ").font(.custom("SF Mono Medium", size: 20.0)).foregroundColor(.purple)
    }
}

struct PropertyView: View {
    
    var constantType = "var"
    var body: some View {
        Text("\(constantType) ").font(.custom("SF Mono Medium", size: 20.0)).foregroundColor(.purple)
    }
}
