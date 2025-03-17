//
//  CreaturesListView.swift
//  CatchEmAll
//
//  Created by Christian Kim on 3/16/25.
//

import SwiftUI

struct CreaturesListView: View {
    @State var creatures = Creatures()
    
    var body: some View {
        NavigationStack {
            Text("Come back and fix this")
            List(creatures.creaturesArray, id: \.self) { creature in
                Text(creature.name)
                    .font(.title2)
            }
            .listStyle(.plain)
            .navigationTitle("Pokemon")
        }
        .task {
            await creatures.getData()
        }
    }
}

#Preview {
    CreaturesListView()
}
