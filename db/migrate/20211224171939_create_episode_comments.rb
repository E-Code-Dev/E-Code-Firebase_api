class CreateEpisodeComments < ActiveRecord::Migration[6.1]
  def change
    create_table :episode_comments do |t|
      t.string :content
      t.references :user, null: false, foreign_key: true
      t.references :episode, null: false, foreign_key: true

      t.timestamps
    end
  end
end
