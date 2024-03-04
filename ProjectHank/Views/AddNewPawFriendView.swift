//
//  AddNewPawFriendNew.swift
//  ProjectHank
//
//  Created by Mengheng Hu on 3/3/24.
//

import SwiftUI

struct AddNewPawFriendView: View {
    @Environment(\.modelContext) private var modelContext
    @StateObject var viewModel = NewPetViewModel()
    @Binding var newItemPresented: Bool
    
    var body: some View {
        VStack {
            Text("Add PawFriend")
                .font(.system(size: 32))
                .bold()
                .padding(40)
            
            Form {
                TextField("Name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                // Due date
                DatePicker("Birthday", selection: $viewModel.birthday, displayedComponents: [.date])
                    .datePickerStyle(.compact)
                
                Picker("Breed", selection: $viewModel.breed) {
                    ForEach(Breed.allCases) { value in
                        Text(String(describing: value.description))
                            .tag(value.id)
                    }
                }
                .pickerStyle(.automatic)
                
                // Button
                Button(action: {
                    if viewModel.canSave {
                        newItemPresented = false
                        viewModel.save(with: self.modelContext)
                        print("saved!!!")
                    }
                    else {
                        print("not valid!!!")
                    }
                }, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(.red)
                        Text("Save")
                            .foregroundStyle(.white)
                            .bold()
                    }
                })
                .accessibilityLabel("New pet")
            }
        }
    }
}

#Preview {
    AddNewPawFriendView(newItemPresented: Binding(get: {
        return true
    }, set: { _ in
    }))
}
