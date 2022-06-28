
import SwiftUI

struct NotificationView: View {
    let title: String
    let subTitle: String
    let imageURL: String
    
    var body: some View {
        Text(title)
        Text(subTitle)
        AsyncImage(url: URL(string: imageURL))
    }
}

//struct NotificationView_Previews: PreviewProvider {
//    static var previews: some View {
//        NotificationView()
//    }
//}
