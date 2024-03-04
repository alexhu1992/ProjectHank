//
//  MainPetView.swift
//  ProjectHank
//
//  Created by Mengheng Hu on 2/19/24.
//

import SwiftUI
import SwiftData

struct PetListView: View {
    @Environment(\.modelContext) private var modelContext
    @StateObject var viewModel : NewPetViewModel = NewPetViewModel()

    var pets: [Pet] {
        didSet {
            let pets: () = try! pets = modelContext.fetch(fetchDescriptor)
            return pets
        }
    }
    
    private let fetchDescriptor = FetchDescriptor<Pet>()

    var body: some View {
        NavigationStack {
            List(pets) { pet in
                NavigationLink(destination: 
                                HealthListView(prescriptions: pet.prescriptions, vaccacines: pet.vacaccines, name: pet.name)) {
                    PetCardView(pet: pet)
                        .swipeActions(edge: .trailing) {
                            Button(role: .destructive) {
                            } label: {
                                Label("Delete", systemImage: "trash")
                            }
                        }
                }
            }
            .toolbar {
                ToolbarItem {
                    Button(action: {
                        addNewPawFriend()
                    }, label: {
                        Image(systemName: "plus")
                    })
                    .accessibilityLabel("New pet")
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
            }
            .navigationTitle(Text("Pawfriend"))
            .sheet(isPresented: $viewModel.showNewViewModel) {
                AddNewPawFriendView(newItemPresented: $viewModel.showNewViewModel)
            }
        }
    }
    
    /**
        Add a new paw friend
     */
    private func addNewPawFriend() {
        viewModel.showNewViewModel = true
    }
}

#Preview {
    PetListView()
}
