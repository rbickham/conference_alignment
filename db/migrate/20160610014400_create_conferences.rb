class CreateConferences < ActiveRecord::Migration
  def change
    create_table :conferences do |t|
      t.string :headquarters
      t.integer :members
      t.integer :founded
      t.string :conference_nickname
      t.string :conference_name
      t.string :image_url

      t.timestamps

    end
  end
end
