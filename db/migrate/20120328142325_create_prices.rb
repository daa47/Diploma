class CreatePrices < ActiveRecord::Migration
  def self.up
    create_table :prices do |t|
      t.integer :value
      t.string  :russian_text
      t.boolean :hiden, :default => false

      t.timestamps
    end
  end

  def self.down
    drop_table :prices
  end
end
