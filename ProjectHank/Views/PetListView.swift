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
    @StateObject var viewModel : NewPetViewModel
    @Query var pets: [Pet]

    init() {
        self._viewModel = StateObject(wrappedValue: NewPetViewModel())
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
                            deletePawFriend(pet: pet)
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
    
    private func deletePawFriend(pet: Pet) {
        modelContext.delete(pet)
        print("Deleted \(pet.name)")
    }
}

#Preview {
    PetListView()
}
