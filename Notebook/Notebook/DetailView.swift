//
//  DetailView.swift
//  Notebook
//
//  Created by Monika Ozdoba on 08/02/2023.
//

import SwiftUI

struct DetailView: View {
    @Binding var text: String
    var body: some View {
        TextField("", text: $text)
    }
}
    struct DetailView_Previews: PreviewProvider{
        static var previews: some View{
            DetailView(text: .constant("hej"))
        }
    }

