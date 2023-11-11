import SwiftUI
import Alamofire

struct ContentView: View {
    @ObservedObject var viewModel = PostViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                List(self.viewModel.employees, id: \.id) { emplo in
                    VStack(alignment: .leading){
                        Text(emplo.employeeName).bold()
                        HStack{
                            Text("Age: ").font(.subheadline)
                            Text("\(emplo.employeeAge)").font(.subheadline)
                            Text("| Salary: ").font(.subheadline)
                            Text("\(emplo.employeeSalary)").font(.subheadline)
                        }
                    }
                    
                }
                .listStyle(PlainListStyle())
            }
            .navigationBarTitle("Employees")
            
        }.onAppear{
            self.viewModel.apiEmployeeList()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
