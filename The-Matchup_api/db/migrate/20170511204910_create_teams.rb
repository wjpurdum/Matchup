class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :team_name
      t.string :crest_url
      t.string :fixtures
      t.string :self
      t.string :players
      t.references :league, index: true, foreign_key: true
    end
  end
end
