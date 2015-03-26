class CreateJoin < ActiveRecord::Migration
  def change
    create_table :joins do |t|
      t.belongs_to :job, index: true
      t.belongs_to :keyword, index: true
    end
    add_foreign_key :joins, :jobs
    add_foreign_key :joins, :keywords
  end
end
