class Survey < ActiveRecord::Base
 has_many :questions
 accepts_nested_attributes_for :questions, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true

 validates :title, presence: :true
end
