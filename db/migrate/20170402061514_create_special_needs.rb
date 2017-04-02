class CreateSpecialNeeds < ActiveRecord::Migration[5.0]
  def change
    create_table :special_needs do |t|
      t.string :name

      t.timestamps
    end
  end
end
