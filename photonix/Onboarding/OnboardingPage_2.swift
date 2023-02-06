import SwiftUI

struct OnboardingPage_2: View {
    
    @State var isActive = false
    var body: some View {

            
            ZStack {
                Color.black.ignoresSafeArea()
                VStack {
                    Spacer()
                    Text("My success is always dedicated to my mentors.")
                        .foregroundColor(.white)
                        .font(.title)
                        .multilineTextAlignment(.center)
                    Spacer()
                    
                    
                    NavigationLink(destination: ContentView(),isActive: $isActive) {
                        Button(action: {
                            isActive = true
                        }) {
                            Image(systemName: "chevron.right")
                                .font(.largeTitle).foregroundColor(.white)
                                .padding(24)
                        }
                    }
                    
                    Spacer()
                }
            }.navigationBarBackButtonHidden()
            
        }
}

struct OnboardingPage_2_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPage_2()
    }
}
