require "test_helper"

class RatingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end 

  test "valid if score between 0 and 10" do 
    (0..10).each do |i|
      rating = Rating.new(score: i) 
      rating.valid?  
      assert_empty rating.errors[:score]
    end 
  end   

  test "valid if score less than 10" do 
    rating = Rating.new(score: 11) 
    rating.invalid? 
    assert rating.errors[:score].any?
  end 

  test "valid if score greater than 0" do 
    rating = Rating.new(score: -1) 
    rating.valid? 
    assert_not rating.errors[:score].empty?
  end  

  test "promoter? return false if acore less than 9" do 
    rating = Rating.new(score: 8) 
    assert_not rating.promoter?
  end   

  test "promoter? return false if score greater than 10" do 
    rating = Rating.new(score: 11) 
    assert_not rating.promoter?
  end 


  test "passive? return true if score is 7 or 8" do 
    7.upto(8).each do |i| 
      rating = Rating.new(score: i) 
      assert rating.passive?
    end 
  end 

  test "passive? return false if score is less than 7" do 
    0.upto(6).each do |i| 
      rating = Rating.new(score: i) 
      assert_not rating.passive?
    end 
  end  

  test "passive? return false if score is greater than 8" do 
    9.upto(10).each do |i| 
      rating = Rating.new(score: i) 
      assert_not rating.passive? 
    end 
  end 
  
  test "detractor? return true if score is less than or equla 6" do  
    0.upto(6).each do |i| 
      rating = Rating.new(score: i) 
      assert rating.detractor? 
    end
  end

  test "detractor? return false if score is greater than 6" do 
    7.upto(10).each do |i| 
      rating = Rating.new(score: i) 
      assert_not rating.detractor? 
    end 
  end 

end
