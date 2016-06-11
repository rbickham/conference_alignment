class CreateConferenceHistories < ActiveRecord::Migration
  def change
    create_table :conference_histories do |t|
      t.integer :left
      t.integer :joined
      t.integer :conference_id
      t.integer :school_id

      t.timestamps

    end
  end
end
