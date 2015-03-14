# == Schema Information
#
# Table name: flights
#
#  id         :integer          not null, primary key
#  airline_id :integer
#  number     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Flight < ActiveRecord::Base
  belongs_to :airline

  has_one :arrival 
  has_one :departure
  has_many :passengers
end
