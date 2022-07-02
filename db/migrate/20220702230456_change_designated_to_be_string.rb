class ChangeDesignatedToBeString < ActiveRecord::Migration[5.2]
  def change
    change_column :parks, :designated, :string
  end
end
