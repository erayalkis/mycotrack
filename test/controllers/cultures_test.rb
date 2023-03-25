require "test_helper"

class CulturesControllerTest < ActiveSupport::TestCase
  
  test "should not save without a species" do
    culture = Culture.new
    assert_not culture.save, "Saved Culture with a species attribute!"
  end

  test "should save with when required attributes provided" do
    culture = Culture.new(genus: "Amanita", species: "Muscaria")
    assert culture.save, "Could not save Culture with species attribute!"
  end

  test "should save with all attributes provided" do
    culture = Culture.new(genus: "Amanita", species: "Muscaria", source: "Cloned from nonexistent-culture-id")
  end

end