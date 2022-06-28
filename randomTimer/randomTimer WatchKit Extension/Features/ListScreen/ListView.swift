import SwiftUI

struct ListView: View {
    @State var ourFlags = allFlags
    
    var body: some View {
        List{
            ForEach(ourFlags){flag in
                Text(flag.name)
                    .font(.headline)
            }
            .onMove(perform:{ ourFlags.move(fromOffsets: $0, toOffset: $1)})
        }
    
        .listStyle(CarouselListStyle())
    }
}



struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView().previewDevice("Apple Watch Series 7 - 45 mm")
        ListView().previewDevice("Apple Watch Series 7 - 41 mm")
    }
}
