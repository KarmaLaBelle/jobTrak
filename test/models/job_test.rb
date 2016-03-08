require 'test_helper'

class JobTest < ActiveSupport::TestCase
  def setup
    @employee = Employee.create(id: 1, name: "John Smith", phone_number: "555-555-5555")
    @job_one = Job.create(id: 1, name: "Jane Doe", address: "1 Main Street, Springfield OH", employee_id: 1)
  end

  test "Check Job Validity" do
    assert @job_one.valid?
  end

  test "Check Job Count" do
    assert_equal 1, Employee.first.jobs.count, "Not 1, you dumby"
  end
end
