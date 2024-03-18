//
// ContentView.swift : Assignment1
//
// Copyright © 2023 Auburn University.
// All Rights Reserved.


import SwiftUI

struct ContentView: View {
    let emojiArr = ["🤣", "😜", "😀", "🤩", "😂"]
    var body: some View {
        NavigationView {
            List {
                ForEach(emojiArr, id: \.self) { emoji in
                    ListItem(emoji: emoji)
                    
                }
            }
            .navigationTitle("Emoji Counter")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ListItem: View {
    let emoji : String
    @State var count : Int = 0
    
    var body: some View
    {
        HStack {
            Text(emoji)
            Text("Counter: \(count)")
                .foregroundColor(.red)
            Spacer()
            Button(action: {count += 1}) {
                Image(systemName: "plus.rectangle")
                
                    .font(.title)
                    .foregroundColor(.red)
            }
            Button(action: {count -= 1}) {
                Image(systemName: "minus.rectangle")
                
                    .foregroundColor(.red)
                    .font(.title)
            }

        }
        .buttonStyle(.borderless)
        .padding()
    }
}
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
