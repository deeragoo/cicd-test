class CreateCodes < ActiveRecord::Migration[7.0]
  def change
    create_table :codes do |t|
      t.boolean :vended
      t.string :code_hash
      t.timestamps
    end
  end
end
