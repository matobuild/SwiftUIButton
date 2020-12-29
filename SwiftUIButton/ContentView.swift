//
//  ContentView.swift
//  SwiftUIButton
//
//  Created by kittawat phuangsombat on 2020/12/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack {
                Button(action:{
                    print("hellofff")
                }){
                    Text("hello World")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .font(.title)
                        .padding()
                        .background(Color.purple)
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .padding(20)
                        .overlay(RoundedRectangle(cornerRadius: 40)
                                    .stroke(Color.purple, lineWidth: 5))
                    
                }
                Button(action: {
                    print("delete button tapped")
                }) {
                    Image(systemName: "trash")
                        .padding()
                        .background(Color.red)
                        .clipShape(Circle())
                        .font(.largeTitle)
                        .foregroundColor(.white )
                    
                }
                Button(action: {
                    print("Delete tap")
                }){
                    HStack{
                        Image(systemName: "trash")
                            .font(.title)
                        Text("Delete")
                            .fontWeight(.semibold)
                            .font(.title)
                    }
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.red)
                    .cornerRadius(40)
                }
                Button(action: {
                    print("Delete tapped")
                }) {
                    Label(
                        
                        title: { Text("Delete")
                            .fontWeight(.semibold)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        },
                        icon: { Image(systemName: "trash")
                            .font(.title)
                        }
                    )
                    .padding()
                    .foregroundColor(.white)
                    .background(LinearGradient(gradient: Gradient(colors: [Color("DarkGreen"), Color("LightGreen")]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(40)
                    .shadow(color: .gray, radius: 20, x: 20, y: 10)
                }
                Button(action: {
                }){
                    HStack{
                        Image(systemName: "trash")
                            .font(.title)
                        Text("Delete")
                            .fontWeight(.semibold)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        
                    }
                    .frame(minWidth: 0, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .padding()
                    .foregroundColor(.white)
                    .background(LinearGradient(gradient: Gradient(colors: [Color("DarkGreen"), Color("LightGreen")]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                    .cornerRadius(40)
                    .padding(.horizontal, 20)
                }
                Button(action:{
                    print("Delete Tapped")
                }){
                    HStack{
                        Image(systemName: "trash")
                            .font(.title)
                        Text("Delete")
                            .fontWeight(.semibold)
                            .font(.title)
                    }
                }
                .buttonStyle(GradientBackgroundStyle())
            }
            Button(action:{
                print("Shared Tapped")
            }){
                HStack{
                    Image(systemName: "square.and.arrow.up")
                        .font(.title)
                    Text("Shared")
                        .fontWeight(.semibold)
                        .font(.title)
                }
            }
            .buttonStyle(GradientBackgroundStyle())
            
            Button(action:{
                print("Edit Tapped")
            }){
                HStack{
                    Image(systemName: "square.and.pencil")
                        .font(.title)
                    Text("Edit")
                        .fontWeight(.semibold)
                        .font(.title)
                }
            }
            .buttonStyle(GradientBackgroundStyle())
            
            Button(action:{
                print("Delete Tapped")
            }){
                HStack{
                    Image(systemName: "trash")
                        .font(.title)
                    Text("Delete")
                        .fontWeight(.semibold)
                        .font(.title)
                }
            }
            .buttonStyle(GradientBackgroundStyle())
            
        }
        
        
        
        
    }
    
    
    
    
}
struct GradientBackgroundStyle: ButtonStyle {
    func makeBody(configuration:Self.Configuration) -> some View {
        configuration.label
            .frame(minWidth: 0 ,maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .padding()
            .foregroundColor(.white)
            .background(LinearGradient(gradient: Gradient(colors: [Color("DarkGreen"), Color("LightGreen")]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
            .cornerRadius(40)
            .padding(.horizontal,20)
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
