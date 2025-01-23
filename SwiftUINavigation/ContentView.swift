//
//  ContentView.swift
//  SwiftUINavigation
//
//  Created by 黃柏嘉 on 2025/01/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(NewsInfo.news) { info in
                    NavigationLink(destination: NewsView(news: info)) {
                        VStack(alignment: .leading) {
                            Text(info.title)
                                .fontWeight(.bold)
                            
                            Text(info.date)
                                .foregroundStyle(.gray)
                                .font(.system(size: 15))
                        }
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("體育新聞")
        }
    }
    
    init() {
        let scrollAppearence = UINavigationBarAppearance()
        scrollAppearence.backgroundColor = .systemFill
        scrollAppearence.largeTitleTextAttributes = [.foregroundColor: UIColor.black]
        scrollAppearence.titleTextAttributes = [.foregroundColor: UIColor.black]
        
        let standardAppearance = UINavigationBarAppearance()
        standardAppearance.backgroundColor = .black
        standardAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        standardAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]

        UINavigationBar.appearance().standardAppearance = standardAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = scrollAppearence
        UINavigationBar.appearance().compactAppearance = standardAppearance
    }
}

#Preview {
    ContentView()
}
