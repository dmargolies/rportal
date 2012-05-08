class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :name
      t.time :start
      t.time :end

      t.timestamps
    end
  end
end
