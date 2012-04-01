class CreateContractsDisciplines < ActiveRecord::Migration
  def self.up
    create_table :contracts_disciplines, :id=>false do |t|
      t.integer :discipline_id
      t.integer :contract_id
 
    end
  end

  def self.down
    drop_table :contracts_disciplines
  end
end
