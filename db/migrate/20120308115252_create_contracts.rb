class CreateContracts < ActiveRecord::Migration
  def self.up
    create_table :contracts do |t|
      t.string   :number
      t.integer  :education_type
      t.integer  :schoolkid_id
      t.date     :signing_date
      t.integer  :first_sum
      t.integer  :second_sum
      t.date     :start_date
      t.date     :finish_date
      t.integer  :ctype
      t.integer  :period
      t.string   :first_name
      t.string   :second_name
      t.string   :last_name
      t.string   :passport_number
      t.string   :passport_series
      t.date     :passport_date
      t.string   :passport_place
      t.string   :city
      t.string   :address
      t.string   :telephone

      t.timestamps
    end
  end

  def self.down
    drop_table :contracts
  end
end
