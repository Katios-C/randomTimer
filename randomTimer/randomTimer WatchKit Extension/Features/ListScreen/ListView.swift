import SwiftUI

struct ListView: View {
    var body: some View {
        Text("List")
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView().previewDevice("Apple Watch Series 7 - 45 mm")
        ListView().previewDevice("Apple Watch Series 7 - 41 mm")
    }
}
