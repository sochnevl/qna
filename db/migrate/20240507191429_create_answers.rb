class CreateAnswers < ActiveRecord::Migration[7.1]
  def change
    create_table :answers do |t|
      t.text :body
      t.references :question, foreign_key: true, null: false

      t.timestamps
    end
  end
end
