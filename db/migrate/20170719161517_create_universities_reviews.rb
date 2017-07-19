class CreateUniversitiesReviews < ActiveRecord::Migration[5.1]
  def change
    enable_extension 'pgcrypto'
    
    create_table :universities, id: :uuid do |t|
      t.string :name
      t.string :description
      t.integer :population
      t.string :mascot

      t.timestamps
    end

    create_table :reviews, id: :uuid do |t|
      t.uuid :university_id
      t.string :author
      t.string :content
      t.integer :rating

      t.timestamps
    end
  end
end
