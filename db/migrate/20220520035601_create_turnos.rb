class CreateTurnos < ActiveRecord::Migration[6.0]
  def change
    create_table :turnos do |t|
      t.string :conductor
      t.time :hora
      t.date :fecha
      t.string :trayecto
      t.integer :capacidad

      t.timestamps
    end
  end
end
