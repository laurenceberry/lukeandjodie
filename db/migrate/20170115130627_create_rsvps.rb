class CreateRsvps < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.string :name
      t.text :additional_info
      t.text :contact
      t.boolean :attending

      t.timestamps null: false
    end
  end
end
