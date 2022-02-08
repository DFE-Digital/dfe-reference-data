require 'dfe_reference_data'

RSpec.describe HardcodedReferenceList do
  hrl = HardcodedReferenceList.new(
    {
      "1" => {:name => "Alaric", :child => false},
      "2" => {:name => "Sarah", :child => false},
      "3" => {:name => "Jean", :child => true},
      "4" => {:name => "Mary", :child => true}
    })

  # NB: These particular tests also make a potentially fragile assumption that
  # the implementation of get_some preserves the order of entries, it would be
  # better if we sorted the results by :id or used an order-insensitive array
  # comparator

  it "returns correct data from low-level methods" do
      expect(hrl.get_all).to eq([
                                {:id => "1", :name => "Alaric", :child => false},
                                {:id => "2", :name => "Sarah", :child => false},
                                {:id => "3", :name => "Jean", :child => true},
                                {:id => "4", :name => "Mary", :child => true}
                              ])
      expect(hrl.get_all_as_hash).to eq({
                                          "1" => {:id => "1", :name => "Alaric", :child => false},
                                          "2" => {:id => "2", :name => "Sarah", :child => false},
                                          "3" => {:id => "3", :name => "Jean", :child => true},
                                          "4" => {:id => "4", :name => "Mary", :child => true}
                                        })

      expect(hrl.get_one("1")).to eq({:id => "1", :name => "Alaric", :child => false})
      expect(hrl.get_one("nonexistant")).to eq(nil)
  end

  it "returns correct data when filtered with get_some" do
    expect(hrl.get_some({:child => true})).to eq([
                                                   {:id => "3", :name => "Jean", :child => true},
                                                   {:id => "4", :name => "Mary", :child => true}
                                                 ])

    expect(hrl.get_some({:child => false})).to eq([
                                                    {:id => "1", :name => "Alaric", :child => false},
                                                    {:id => "2", :name => "Sarah", :child => false}
                                                  ])

    expect(hrl.get_some({})).to eq([
                                     {:id => "1", :name => "Alaric", :child => false},
                                     {:id => "2", :name => "Sarah", :child => false},
                                     {:id => "3", :name => "Jean", :child => true},
                                     {:id => "4", :name => "Mary", :child => true}
                                   ])

    expect(hrl.get_some(nil)).to eq([
                                      {:id => "1", :name => "Alaric", :child => false},
                                      {:id => "2", :name => "Sarah", :child => false},
                                      {:id => "3", :name => "Jean", :child => true},
                                      {:id => "4", :name => "Mary", :child => true}
                                    ])
  end

  it "returns correct data reformatted by get_some_by_field" do
    expect(hrl.get_some_by_field(:child)).to eq({
                                                  true => [
                                                    {:id => "3", :name => "Jean", :child => true},
                                                    {:id => "4", :name => "Mary", :child => true}
                                                  ],
                                                  false => [
                                                    {:id => "1", :name => "Alaric", :child => false},
                                                    {:id => "2", :name => "Sarah", :child => false}
                                                  ]
                                                })

    expect(hrl.get_some_by_field(:child, {:name => "Alaric"})).to eq({
                                                  false => [
                                                    {:id => "1", :name => "Alaric", :child => false}
                                                  ]
                                                })

    expect(hrl.get_some_by_field(:nonexistant)).to eq({})
  end
end
