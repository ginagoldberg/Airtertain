class Booking < ActiveRecord::Base
  belongs_to :user
  belongs_to :entertainer, foreign_key: "entertainer_id", class_name: :user
  has_many :reviews
end
