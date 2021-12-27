class CreateNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :notes do |t|
      t.string :header
      t.text :body

      t.timestamps
    end
  end
end
