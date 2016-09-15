class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nombre
      t.string :apellido
      t.string :fono
      t.string :email
      t.string :direccion

      t.timestamps null: false
    end
  end
end
