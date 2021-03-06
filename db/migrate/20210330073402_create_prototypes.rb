class CreatePrototypes < ActiveRecord::Migration[6.0]
  def change
    create_table :prototypes do |t|
      t.string :title,      null: false, default: ""
      t.text   :catch_copy,  null: false, default: nil
      t.text   :concept,    null: false, default: nil
      t.references  :user,  foreign_key: true
      t.timestamps  null: false
    end
  end
end
