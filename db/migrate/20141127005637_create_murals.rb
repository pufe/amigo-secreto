class CreateMurals < ActiveRecord::Migration
  def change
    create_table :murals do |t|
      t.string :dono
      t.timestamps
    end
  end
end
