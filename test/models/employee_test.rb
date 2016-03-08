require 'test_helper'

class EmployeeTest < ActiveSupport::TestCase
  def init
    @employee = Employee.new(id: 1, name: "John Smith", phone_number: 5555555555)
    @employee2 = Employee.new(id: 1, name: "John Doe", phone_number: "555\-555\-5555")
    @employee3 = Employee.new(id: 1, name: "Janet Doe", phone_number: 555555555)
    @employee4 = Employee.new(id: 1, name: "James Smith", phone_number: 55555555555)
  end

  test "Check Employee Validity" do
    assert @employee.valid?
  end

  test "Check Phone String Invalid" do
    assert_not @employee2.valid?
  end

  test "Check 9 Digit Invalid" do
    assert_not @employee3.valid?
  end

  test "Check 11 Digit Invalid" do
    assert_not @employee4.valid?
  end


end
