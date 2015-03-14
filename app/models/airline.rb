# == Schema Information
#
# Table name: airlines
#
#  id         :integer          not null, primary key
#  name       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Airline < ActiveRecord::Base
	has_many :flights
end
