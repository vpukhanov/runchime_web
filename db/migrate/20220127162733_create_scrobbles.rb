# frozen_string_literal: true

class CreateScrobbles < ActiveRecord::Migration[7.0]
  def change
    create_table :scrobbles do |t|
      t.timestamp :uts
      t.string :name
      t.string :album
      t.string :artist
      t.string :image
      t.string :url

      t.timestamps
    end
  end
end
