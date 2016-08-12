class CreateTokens < ActiveRecord::Migration[5.0]
  def change
    create_table :tokens do |t|
      t.string :secret_key, null: false
      t.boolean :temporary, default: true
      t.references :tokenable, polymorphic: true

      t.timestamps
    end
  end
end
