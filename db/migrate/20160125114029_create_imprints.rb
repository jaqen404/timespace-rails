class CreateImprints < ActiveRecord::Migration
  def change
    create_table :imprints do |t|
      t.float :lng
      t.float :lat
      t.integer :accuracy
      t.string :text

      t.timestamps null: false
    end
  end
end
