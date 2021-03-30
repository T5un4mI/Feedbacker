class CreateFeedbacks < ActiveRecord::Migration[6.1]
  def change
    create_table :feedbacks do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.references :city, null: false, foreign_key: true
      t.string :phone
      t.string :email
      t.text :comment

      t.timestamps
    end
  end
end
