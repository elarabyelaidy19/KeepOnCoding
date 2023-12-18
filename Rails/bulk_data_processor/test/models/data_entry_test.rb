# == Schema Information
#
# Table name: data_entries
#
#  id         :integer          not null, primary key
#  address    :string
#  age        :integer
#  email      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class DataEntryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
