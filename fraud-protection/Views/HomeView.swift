//
//  HomeView.swift
//  fraud-protection
//
//  Created by kebato OS on 05/12/24.
//

import SwiftUI


public struct HomeView: View {
    
    @StateObject
    public var viewModel: HomeBodyViewModel = HomeBodyViewModel()

    
    public var body: some View {
        
        
        ZStack{
            VStack{
                HStack{
                    Spacer()
                    Text("lcd-latest-frauds").font(.headline)
                    Spacer()
                    
                    Button{
                        viewModel.searching.toggle()
                    }label:{
                        Image(systemName: "magnifyingglass").padding([.trailing],15)
                    }
                }
                
                NavigationStack{
                    List{
                        ForEach(viewModel.articles, id: \.self){ article in
                            if !isEmpty(article.previewImagePath){
                                StandardArticleLabelView(article: article)
                            }else{
                                SimpleArticleLabelView(article: article)
                            }
                            
                        }
                        
                    }.listStyle(PlainListStyle())
                }
                
                
            }
            
            
            if viewModel.searching {
                searchArea
            }
        }
    }
    
    
    public var searchArea : some View{
        ZStack{
            RoundedRectangle(cornerSize: .zero).frame(width: .infinity,height: .infinity).foregroundColor(.white).ignoresSafeArea()
            
            NavigationStack{
                VStack{
                    HStack{
                        TextField("lcd-search", text: $viewModel.searchText)
                            .textFieldStyle(.roundedBorder).autocorrectionDisabled()
               
                        Button{
                            viewModel.searching.toggle()
                        }label: {
                            Image(systemName: "xmark")
                        }
                            
                    }.padding()
                                        
                    if viewModel.emptySearch{
                        Spacer()
                        Text("No result :(")
                        Spacer()
                    }else{
                        List{
                                 ForEach(viewModel.searchResults, id: \.self){ article in
                                     OnlyTitleArticleLabelView(article: article)
                                 }
                            
                          
                                 
                        }.listStyle(.sidebar)
                    }
           
                }
                
            }

        }
        
    }
    
}



#Preview { 
    HomeView()
}
