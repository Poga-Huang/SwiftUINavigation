//
//  NewsView.swift
//  SwiftUINavigation
//
//  Created by 黃柏嘉 on 2025/01/23.
//

import SwiftUI

struct NewsView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var news: NewsInfo
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Image(news.title)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity, maxHeight: 300)
                
                Group {
                    Text("\(news.type)》\(news.title)")
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                    
                    Text(news.date)
                        .foregroundStyle(.gray)
                        .font(.system(size: 15, weight: .regular, design: .none))
                    
                    Text(news.content)
                }.padding([.leading, .trailing], 10)
                
                Spacer()
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden()
        .ignoresSafeArea(edges: .top)
        .toolbarBackground(.hidden, for: .navigationBar)
        .toolbar(content: {
            ToolbarItem(placement: .topBarLeading) {
                Button(action: {
                    dismiss()
                    
                }, label: {
                    HStack(spacing: 0) {
                        Image(systemName: "chevron.backward.circle.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .symbolRenderingMode(.monochrome)
                            .foregroundStyle(.white)
                            
                    } .foregroundStyle(.black)
                })
            }
        })
            
    }
}
