class ChangeColumnDataType < ActiveRecord::Migration
  def change
  	change_column :profiles, :mobile_number, :string
  end
end
