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

class Task < ApplicationRecord
  validates :name, :list_id, presence: true
  validates :completed, inclusion: { in: [true, false] }

  belongs_to :list,
    class_name: :List,
    foreign_key: :list_id,
    primary_key: :id

  has_one :author,
    through: :list,
    source: :list
end
