class AddCountryToRegions < ActiveRecord::Migration[6.1]
  def change
    add_reference :regions, :country, foreign_key: true
  end
end
