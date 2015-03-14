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

require 'test_helper'

class PassengerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
