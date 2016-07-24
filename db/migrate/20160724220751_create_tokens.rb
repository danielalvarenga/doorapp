class CreateTokens < ActiveRecord::Migration[5.0]
  def change
    create_table :tokens do |t|
      t.string :secret_key, index: true
      t.boolean :temporary
      t.references :app, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
