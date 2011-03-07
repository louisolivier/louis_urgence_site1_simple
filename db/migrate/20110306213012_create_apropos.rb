class CreateApropos < ActiveRecord::Migration
  def self.up
    create_table :apropos do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :apropos
  end
end
