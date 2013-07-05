class Question < ActiveRecord::Base
  has_many :responses
  belongs_to :user
  belongs_to :survey

  validates :content, presence: :true
end
