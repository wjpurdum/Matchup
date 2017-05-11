class CreateLeagues < ActiveRecord::Migration[5.0]
  def change
    create_table :leagues do |t|
      t.string :name
      t.integer :number_matches
      t.integer :number_teams
      t.integer :year
    end
  end
end
