class AddConstraint < ActiveRecord::Migration[7.1]
  def change
    add_index :good_quotes, :text, unique: true
  end
end
