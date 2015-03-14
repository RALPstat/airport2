# == Schema Information
#
# Table name: passengers
#
#  id         :integer          not null, primary key
#  flight_id  :integer
#  name       :text
#  passport   :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Passenger < ActiveRecord::Base
  belongs_to :flight
end
