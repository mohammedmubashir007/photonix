
import SwiftUI

struct OnboardingPage_1: View {
    
    @State var isActive = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.black.ignoresSafeArea()
                VStack {
                    Spacer()
                    Text("Thank You for installing my App")
                        .foregroundColor(.white)
                        .font(.title)
                        .multilineTextAlignment(.center)
                    Spacer()
                    
                    NavigationLink(destination: OnboardingPage_2(),isActive: $isActive) {
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
            }
            .navigationBarBackButtonHidden()
        }
    }
}

struct OnboardingPage_1_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPage_1()
    }
}
