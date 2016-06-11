class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.integer :joined
      t.string :school_nickname
      t.string :conference_name
      t.string :school_name
      t.string :image_url

      t.timestamps

    end
  end
end
