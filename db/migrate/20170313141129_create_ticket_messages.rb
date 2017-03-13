class CreateTicketMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :ticket_messages do |t|
      t.references :ticket, foreign_key: true
      t.text :message
      t.boolean :private
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
