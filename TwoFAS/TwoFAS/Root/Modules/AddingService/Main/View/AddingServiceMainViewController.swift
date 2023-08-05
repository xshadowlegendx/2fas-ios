//
//  This file is part of the 2FAS iOS app (https://github.com/twofas/2fas-ios)
//  Copyright © 2023 Two Factor Authentication Service, Inc.
//  Contributed by Zbigniew Cisiński. All rights reserved.
//
//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  any later version.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with this program. If not, see <https://www.gnu.org/licenses/>
//

import UIKit
import SwiftUI

final class AddingServiceMainViewController: UIViewController {
    var heightChange: ((CGFloat) -> Void)?
    var presenter: AddingServiceMainPresenter!
    
    var test: Binding<String?> = .constant(nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tmp = AddingServiceMain() { [weak self] height in
            self?.heightChange?(height)
        } nextOne: { [weak self] in
            self?.presenter.handleToToken()
        }
        
        let vc = UIHostingController(rootView: tmp)
        vc.willMove(toParent: self)
        addChild(vc)
        view.addSubview(vc.view)
        vc.view.pinToParent()
        vc.view.backgroundColor = Theme.Colors.Fill.System.second
        vc.didMove(toParent: self)
    }
}

private struct AddingServiceMain: View {
    @State var errorReason: String?
    
    let change: (CGFloat) -> Void
    let nextOne: Callback
    
    @State var currentHeight: CGFloat = 400
    
    @State private var height = CGFloat.zero
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text("Pair service with 2FAS")
                .font(
                    Font.custom("SF Pro Text", size: 17)
                        .weight(.semibold)
                )
                .multilineTextAlignment(.center)
            
            Text("Point your camera to the screen to capture the QR code.")
                .font(Font.custom("SF Pro Text", size: 16.99999))
                .multilineTextAlignment(.center)
            
            if let errorReason {
                Text(errorReason)
            } else {
                AddingServiceCameraViewport(errorReason: $errorReason) { codeType in
                    print(codeType)
                }
                .cornerRadius(14)
            }
            Text("Other methods?")
                .font(
                    Font.custom("SF Pro Text", size: 17)
                        .weight(.semibold)
                )
                .multilineTextAlignment(.center)
            
            Text("Enter secret key manually")
                .font(Font.custom("SF Pro Text", size: 16.99999))
            
            Text("Upload screen with QR code")
                .font(Font.custom("SF Pro Text", size: 16.99999))
        }
        .observeHeight(onChange: { height in
            change(height)
        })
    }
}
