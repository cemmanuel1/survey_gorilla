class Choice < ActiveRecord::Base
  belongs_to :question

  validates :answer, presence: :true
end
