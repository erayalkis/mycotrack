
class BlockTest < ActiveSupport::TestCase
  test "should not save without a spawn_id attribute" do
    block = Block.new(substrate: "Wood Chips")
    assert_raises ActiveRecord::NotNullViolation do 
      block.save
    end
  end

  test "should not save without a substrate attribute" do
    block = Block.new(spawn_id: 12)
    assert_raises ActiveRecord::NotNullViolation do 
      block.save
    end
  end

  test "should save with when required attributes provided" do
    culture = Block.new(substrate: "Wood Chips", spawn_id: 12)
    assert culture.save, "Could not save Culture with species attribute!"
  end
end