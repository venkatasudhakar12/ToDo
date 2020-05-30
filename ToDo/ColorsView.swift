import SwiftUI

struct ColorsView: View {
    let colors:[Color] = [Color.red,Color.green,Color.gray,Color.purple,Color.pink,Color.primary,Color.secondary,Color.black,Color.blue,Color.orange,Color.yellow]
    
    @State private var currentColor:Color = Color.red
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: true) {
            VStack{
                HStack{
                    ForEach(self.colors,id: \.self) { color in
                        Circle()
                            .fill(color)
                            .frame(width: 100, height: 100)
                    }
                }
                
                Circle()
                    .fill(currentColor)
                    .frame(width: 150, height: 150)
                .gesture(LongPressGesture(minimumDuration: 2)
                .onEnded { _ in
                    self.currentColor = self.colors.randomElement()!
                })
            }
        }
    }
}

struct ColorsView_Previews: PreviewProvider {
    static var previews: some View {
        ColorsView()
    }
}
