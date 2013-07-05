class Choice < ActiveRecord::Base
  belongs_to :question
  has_many :users, through: :choice_users

  validates :answer, presence: :true
end
