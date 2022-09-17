//___FILEHEADER___

import Foundation

class ___FILEBASENAME___ {
    
    var result: ((LoginModel) -> Void)?
    
    func requestApi(id: Int) {
        URLSession.shared.request(.getTodoList(id: id)) { (response: Result<LoginModel, NetworkError>) in
            switch response {
            case .success(let res):
                DispatchQueue.main.async {
                    self.result?(res)
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }

}
