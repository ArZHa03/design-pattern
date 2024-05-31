part of employee_factory_method;

class EmployeeFactory {
  static _Employee createManager(String name) => _Employee(name, 'Manager', 100000);

  static _Employee createStaff(String name) => _Employee(name, 'Staff', 50000);

  static _Employee createIntern(String name) => _Employee(name, 'Intern', 20000);
}
