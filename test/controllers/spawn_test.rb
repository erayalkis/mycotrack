
class SpawnTest < ActiveSupport::TestCase
  test "should not save without a substrate attribute" do
    mushroom_spawn = Spawn.new(culture_id: 12)
    assert_raises ActiveRecord::NotNullViolation do 
      mushroom_spawn.save
    end
  end

  test "should not save without a culture_id attribute" do
    mushroom_spawn = Spawn.new(substrate: "Coco Coir")
    assert_raises ActiveRecord::NotNullViolation do 
      mushroom_spawn.save
    end
  end

  test "should save with all attributes provided" do
    mushroom_spawn = Spawn.new(substrate: "Coco Coir", culture_id: 12)
    assert mushroom_spawn.save, "Could not save Spawn with all attributes!"
  end
end