//
//  URLSwiftImage.swift
//  Image with URL
//
//  Created by Sofi on 02.01.2021.
//

import SwiftUI


extension String{
    func load() -> UIImage{
        do{
            guard let url = URL(string: self) else{
                return UIImage()
            }
            
            let data: Data = try Data(contentsOf: url)
            
            return UIImage(data: data)
            ?? UIImage()
        } catch{
            
        }
        return UIImage()
    }
}

struct URLSwiftImage: View {
    var body: some View {
        HStack{
        Image(uiImage: "https://avatars.mds.yandex.net/get-zen_doc/1703756/pub_5e303e6e7caf8e37796b7a35_5e304d6b066d193cec28ee82/scale_1200".load())
            .resizable()
        }.edgesIgnoringSafeArea(.all)
    }
}

struct URLSwiftImage_Previews: PreviewProvider {
    static var previews: some View {
        URLSwiftImage()
    }
}
