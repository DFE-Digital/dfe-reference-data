require 'dfe_reference_data'

RSpec.describe JoinedReferenceList do
  hrl1 = HardcodedReferenceList.new(
    {
      "1" => {:name => "Alaric", :child => false},
      "2" => {:name => "Sarah", :child => false}
    })

  hrl2 = HardcodedReferenceList.new(
    {
      "3" => {:name => "Jean", :child => true},
      "4" => {:name => "Mary", :child => true}
    })

  jrl = JoinedReferenceList.new([hrl1,hrl2])

  # NB: These particular tests also make a potentially fragile assumption that
  # the implementation of get_some preserves the order of entries, it would be
  # better if we sorted the results by :id or used an order-insensitive array
  # comparator

  it "returns correct data from low-level methods" do
      expect(jrl.get_all).to eq([
                                  {:id => "1", :name => "Alaric", :child => false},
                                  {:id => "2", :name => "Sarah", :child => false},
                                  {:id => "3", :name => "Jean", :child => true},
                                  {:id => "4", :name => "Mary", :child => true},
                                ])

      expect(jrl.get_one("1")).to eq({:id => "1", :name => "Alaric", :child => false})
      expect(jrl.get_one("3")).to eq({:id => "3", :name => "Jean", :child => true})
      expect(jrl.get_one("nonexistant")).to eq(nil)
  end
end
