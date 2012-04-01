class CreateGroupsSchoolkids < ActiveRecord::Migration
  def self.up
    create_table :groups_schoolkids, :id=>false do |t|
      t.integer :schoolkid_id
      t.integer :group_id

    end
  end

  def self.down
    drop_table :groups_schoolkids
  end
end
