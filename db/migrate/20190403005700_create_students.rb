class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :nombre
      t.string :apellido
      t.integer :edad
      t.boolean :estado
      t.string :correo

      t.timestamps
    end
  end
end
