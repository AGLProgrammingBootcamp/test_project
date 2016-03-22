class ChangeDate01ToNote < ActiveRecord::Migration
  def change
    create_table "notes", force: :cascade do |t|
      t.integer  "date"
      t.string   "content"
      t.integer  "income"
      t.integer  "payment"
      t.integer  "total"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  end
end
