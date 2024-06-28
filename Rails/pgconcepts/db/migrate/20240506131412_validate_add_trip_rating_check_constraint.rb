class ValidateAddTripRatingCheckConstraint < ActiveRecord::Migration[7.1]
  def change 
    validate_check_constraint :trips, name: "rating_check"
  end
end
