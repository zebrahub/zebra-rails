class CreateQueries < ActiveRecord::Migration[5.1]
  def change
    create_table :queries do |t|
      t.references :user, foreign_key: true, index: true
      t.string :title
      t.text :description
      t.text :query_string

      t.timestamps
    end

  end
end
