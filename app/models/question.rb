class Question < ActiveRecord::Base
  has_many :choices, dependent: :destroy
  belongs_to :survey

  validates :content, presence: :true
end
