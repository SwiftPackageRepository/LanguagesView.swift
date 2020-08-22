//
//  LanguagesView.swift
//  
//
//  Created by Sascha Müllner on 24.06.20.
//

import SwiftUI

struct LanguagesViews: View {
    
    var languages = ["Language", "sasa", "1234", "5678"]
    
    init() {
        
    }
    
    init(whitelist: [String]) {
        
    }
    
    init(blacklist: [String]) {
        
    }
    
    var body: some View {
        List(languages, id: \.self) { language in
            Text(language)
                .font(.system(size: 24))
                .fontWeight(.medium)
        }
    }
}

#if DEBUG

struct LanguagesView_Previews: PreviewProvider {
    
    static var previews: some View {
        Group {
            LanguagesViews()
                .environment(\.colorScheme, .light)
            LanguagesViews()
                .environment(\.colorScheme, .dark)
        }
    }
}

#endif
