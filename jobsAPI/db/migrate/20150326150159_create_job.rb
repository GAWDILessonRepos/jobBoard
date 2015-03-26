class CreateJob < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.belongs_to :location, index: true
      t.integer :category
      t.integer :positionType
      t.string :name
      t.string :description
      t.string :company
    end
    add_foreign_key :jobs, :locations
  end
end
