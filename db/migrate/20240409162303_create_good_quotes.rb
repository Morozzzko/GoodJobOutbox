class CreateGoodQuotes < ActiveRecord::Migration[7.1]
  def change
    create_table :good_quotes do |t|
      t.text :text

      t.timestamps
    end
  end
end
