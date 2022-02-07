//
//  Randomsiamese.swift
//  Siamese App
//
//  Created by Train2 on 14/1/2565 BE.
//

import SwiftUI
import URLImage

struct NameFeaturedView: View {
    
    @ObservedObject var ReadJsonName = ReadName()
    
    init() {
      UITabBar.appearance().backgroundColor = UIColor.white
    }
    let skyBlue = Color(red: 0.4627, green: 0.8392, blue: 1.0)
    var body: some View {
        NavigationView {
            ZStack {
                skyBlue
                    .ignoresSafeArea()
                TabView {
                    ForEach(ReadJsonName.Pub_Name) { index in
                        NavigationLink(destination: siameseDetailView(siamese_lower: index), label: {
                            ZStack {
                                Rectangle()
                                    .foregroundColor(Color.red)
                                    .cornerRadius(20)
                                    .shadow(radius: 10)
                                VStack {
                                    Spacer()
                                    URLImage(url: URL(string: index.image)!) { image in image
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .clipped()
                                            .frame(width: 300, height: 300)
                                            .cornerRadius(20)
                                    }
                                    Spacer()
                                    VStack {
                                        Text(index.name)
                                            .bold()
                                            .frame(width: 300, height: 70)
                                            .foregroundColor(.white)
                                            .font(.system(size:20))
                                    }.background(Color.yellow)
                                        .cornerRadius(10)
                                    Spacer()
                                }
                            }
                            .frame(width: 350, height: 600, alignment: .center)
                        })
                    }
                }
                .navigationBarTitle("เซียมซีดูดวง")
                .tabViewStyle(.page(indexDisplayMode: .never))
            }
//            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ZodiacFeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        NameFeaturedView()
    }
}

