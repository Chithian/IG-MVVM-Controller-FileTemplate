//___FILEHEADER___

import UIKit

class ___FILEBASENAME___: BaseViewController<___FILEBASENAME___View, ___FILEBASENAME___ViewModel> {

//    let loginView = LoginView()
//    let viewModel = LoginViewModel()
//
//    override func loadView() {
//        super.loadView()
//
//        view = loginView
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        listener()
        viewModel.requestApi(id: 2)
    }
    
    private func listener()
    {
        viewModel.result = { result in
            self.log(tag: "LoginViewController", msg: " \(result)")
        }
    }
}
