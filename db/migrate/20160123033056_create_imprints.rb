class CreateImprints < ActiveRecord::Migration
  def change
    create_table :imprints do |t|
      t.decimal :lng, :precision => 10, :scale => 6
      t.decimal :lat, :precision => 10, :scale => 6
      t.integer :accuracy
      t.text :text

      t.integer :user_id

      t.timestamps null: false
    end
  end
end
