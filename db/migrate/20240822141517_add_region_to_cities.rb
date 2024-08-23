class AddRegionToCities < ActiveRecord::Migration[6.1]
  def change
    add_reference :cities, :region, foreign_key: true
  end
end
