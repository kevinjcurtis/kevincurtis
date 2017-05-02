class CreatePrinter < ActiveRecord::Migration
  def change
    create_table :printers do |t|
      t.string 'printerID'
      t.string 'studentID'
      t.string 'reserveTime'
      t.datetime 'reserveDate'
      t.timestamps
    end
  end
end
