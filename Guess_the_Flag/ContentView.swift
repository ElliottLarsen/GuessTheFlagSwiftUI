//
//  ContentView.swift
//  Guess_the_Flag
//
//  Created by Elliott Larsen on 8/17/22.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false

    var body: some View {
        Button("Show Alert") {
          showingAlert = true
        }
        .alert("Important message", isPresented: $showingAlert) {
          Button("Delete", role: .destructive) {print("Delete") }
          Button("Cancel", role: .cancel) {print("Cancel")}
        } message: {
            Text("Please select a button.")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
