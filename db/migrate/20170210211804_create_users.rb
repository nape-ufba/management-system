class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :course_id
      t.integer :type_id
      t.integer :role_id
      t.integer :special_need_id
      t.integer :phone
      t.integer :document_number

      t.timestamps
    end
  end
end
