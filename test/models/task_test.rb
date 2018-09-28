# == Schema Information
#
# Table name: tasks
#
#  id         :bigint(8)        not null, primary key
#  name       :string           not null
#  list_id    :integer          not null
#  completed  :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
