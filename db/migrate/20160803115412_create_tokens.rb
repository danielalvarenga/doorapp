class CreateTokens < ActiveRecord::Migration[5.0]
  def change
    create_table :tokens do |t|
      t.string :secret_key
      t.boolean :temporary, default: true
      t.references :app, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
