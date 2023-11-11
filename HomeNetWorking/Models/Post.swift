import Foundation

// MARK: - Welcome
struct Employee: Codable {
    let status: String
    let data: [Data]
    let message: String
}

// MARK: - Datum
struct Data: Codable {
    let id: Int
    let employeeName: String
    let employeeSalary, employeeAge: Int
    let profileImage: String

    enum CodingKeys: String, CodingKey {
        case id
        case employeeName = "employee_name"
        case employeeSalary = "employee_salary"
        case employeeAge = "employee_age"
        case profileImage = "profile_image"
    }
}
