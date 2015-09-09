class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :opinion
       t.belongs_to :user
       t.belongs_to :movie

      t.timestamps null: false
    end
  end
end
