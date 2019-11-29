//
//  EducationView.swift
//  LShkolnyk-CV
//
//  Created by Administrator on 21.11.2019.
//  Copyright © 2019 Administrator. All rights reserved.
//

import SwiftUI

struct EducationView: View {
    
    init() {
        UITableView.appearance().backgroundColor = UIColor(red: 75/255, green: 76/255, blue: 76/255, alpha: 1)
    }
    
    var body: some View {
        List {
            Section(header: Text("University education")) {
                ForEach(education, id: \.self) { item in
                    MenuItem(model: item).listRowBackground(Color(red: 75/255, green: 76/255, blue: 76/255))
                }
            }
            Section(header: Text("Additional education")) {
                ForEach(additionalEducation, id: \.self) { item in
                    MenuItem(model: item).listRowBackground(Color(red: 75/255, green: 76/255, blue: 76/255))
                }
            }
        }
    }
}

struct EducationView_Previews: PreviewProvider {
    static var previews: some View {
        EducationView()
    }
}


struct MenuItem: View {
    @State private var visible = false
    var model: MenuItemModel
    var body: some View {
        Section(header: MenuHeader(model: model).onTapGesture { withAnimation() { self.visible.toggle() } }) {
            visible ? Text(model.description).font(.custom("AmericanTypewriter", size: 15.0)).foregroundColor(.white).fontWeight(.light).padding().transition(.opacity) : nil
        }
    }
}

struct MenuHeader: View {
    var model: MenuItemModel
    var body: some View {
        HStack(alignment: .center, spacing: 10.0) {
            Image(model.imageName).resizable().aspectRatio(contentMode: .fit).cornerRadius(8).shadow(radius: 5).frame(width: 85, height: 85, alignment: .center)
            VStack(alignment: .leading, spacing: 0.0) {
                Text(model.uniName).font(.custom("AmericanTypewriter", size: 18.0)).foregroundColor(.purple).fontWeight(.medium)
                Text(model.degree).font(.custom("AmericanTypewriter", size: 16.0)).foregroundColor(.blue).fontWeight(.regular)
                Text("[\(model.yearsOfStudy)]").font(.custom("AmericanTypewriter", size: 17.0)).foregroundColor(.yellow).fontWeight(.semibold)
            }
        }
    }
}

struct MenuItemModel: Hashable {
    var id = UUID()
    var imageName: String
    var uniName: String
    var degree: String
    var yearsOfStudy: String
    var description: String
}

let education: [MenuItemModel] = [
    MenuItemModel(imageName: "karazin", uniName: "V. N. Karazin Kharkiv National University", degree: "Bachelor degree, Software Engineering", yearsOfStudy: "2014-2018", description: "At the Department of Higher Mathematics and Information Science (Associate Professor V. T. Lysytsia acting for the head of the department) research mainly focuses on: model representation of nonlinear nonselfadjoint and non-unitary operators and their application, theory of stochastic processes, spectral properties of stochastic processes in particular, methods of solving problems of mathematical physics, theory of nonlinear oscillations, inverse problems, theory of diffraction, the problem of computational mathematics and electrodynamics, geometry of manifolds and submanifolds, Hamilton systems with closed trajectories."),
    MenuItemModel(imageName: "nure", uniName: "Kharkiv National University of Radio Electronics", degree: "Master degree, Automation and computer-integrated technologies", yearsOfStudy: "2018-2020", description: "The scientific area of department is in the development and introduction of progressive information, resource-saving and environmentally safe technologies. The department became the base and founder of actively functioning student’s engineering and technological bureau on Robotics and Mechatronics, which has created a number of experimental samples of mobile robots, presented at national and international exhibitions and events.")
]

let additionalEducation: [MenuItemModel] = [
    MenuItemModel(imageName: "cocoa", uniName: "CocoaHeads Ukraine", degree: "", yearsOfStudy: "2018-2020", description: "CocoaHeads event is a local gathering where live technical talks and videos previously recorded at CocoaHeads meetups are shared with the community. CocoaHeads events are fully planned and coordinated independently, on a community-by-community basis"),
    MenuItemModel(imageName: "sigma", uniName: "Sigma Software University", degree: "iOS development", yearsOfStudy: "2018-2019", description: "Combining the company's 17 years of experience in various industries and a strong team of expert practitioners, we help professionally grow and develop new directions for both beginners and experienced professionals, and we also contribute to the formation of an innovative IT community in the country."),
    MenuItemModel(imageName: "step", uniName: "STEP IT Academy", degree: "Computer graphics and design", yearsOfStudy: "2008-2012", description: "We train programmers, designers and system engineers who cannot be replaced by artificial intelligence. For this, in addition to deep specialized knowledge, we teach you to understand tasks, think in ready-made projects and work in a team."),
    MenuItemModel(imageName: "udemy", uniName: "Udemy", degree: "iOS 13 & Swift 5", yearsOfStudy: "2018-2019", description: "This Swift 5.1 course is based on our in-person app development bootcamp in London, where we've perfected the curriculum over 4 years of in-person teaching. Our complete app development bootcamp teaches you how to code using Swift 5.1 and build beautiful iOS 13 apps for iPhone and iPad. Even if you have ZERO programming experience."),
    MenuItemModel(imageName: "winter-school", uniName: "Karazin Winter School on Data Analysis", degree: "Big Data, Data Analysis", yearsOfStudy: "2015-2016", description: "Practical use of Python. Introduction to MachineLearning. What does Big Data mean? Introduction to artificial neural networks. Models and methods for classifying text documents. The use of non-relational databases for storing large amounts of information. Introduction to MapReduce, practical use of Hadoop. Introduction to the analysis of formal concepts. Classification problems of the next generation of the Internet."),
]
