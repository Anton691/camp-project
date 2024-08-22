class AddCityToCamps < ActiveRecord::Migration[6.1]
  def change
    add_reference :camps, :city, foreign_key: true
  end
end
