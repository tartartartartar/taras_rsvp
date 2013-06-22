class CreateRsvps < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.text :name
      t.string :email
      t.integer :num_persons
      t.text :special
      t.boolean :will_attend

      t.timestamps
    end
  end
end
