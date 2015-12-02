class CreateRecados < ActiveRecord::Migration
  def change
    create_table :recados do |t|
      t.text :mensagem
      t.references :mural
      t.timestamps
    end
  end
end
