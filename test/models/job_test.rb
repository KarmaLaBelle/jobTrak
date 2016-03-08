require 'test_helper'

class JobTest < ActiveSupport::TestCase
  def setup
    @employee = Employee.create(id: 1, name: "John Smith", phone_number: 5555555555)
    @job_one = Job.create(id: 1, name: "Jane Doe", address: "1 Main Street, Springfield OH", datetime: DateTime.now)
  end

  test "Check Job Validity" do
    assert @job_one.valid?
  end

  test "Check Job Count" do
    @job_one.update(employee_id: 1)
    assert_equal 1, @employee.jobs.count
  end
end
