class CreateTakes < ActiveRecord::Migration
  def change
    create_table :takes do |t|
      t.integer  :survey_id
      t.integer  :taker_id
    end
  end
end
