import Foundation

class PostViewModel: ObservableObject{
    
    @Published var employees = [Data]()
    @Published var employeess = [Data]()
    @Published var isLoading = false
    
    func apiEmployeeList(){
        isLoading = true
        AFHttp.get(url: AFHttp.API_POST_LIST, params: AFHttp.paramsEmpty(), handler: { [self] response in
        self.isLoading = false
        
        switch response.result {
        case .success:
            self.employees = (try! JSONDecoder().decode(Employee.self, from: response.data!)).data
            print(employees)
        case let .failure(error):
            print(error)
        }
        })
    }
}
