class CreateTvShows < ActiveRecord::Migration[5.1]
  def change
    create_table :tv_shows do |t|
      t.string :name
      t.string :description
      t.datetime :telecast_time
      t.boolean :recurrence_event
      t.string :days
      t.integer :duration
      t.string :status

      t.belongs_to :channel, index: true
      t.belongs_to :category, index: true

      t.timestamps
    end
  end
end
