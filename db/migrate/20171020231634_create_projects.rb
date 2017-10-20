class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.references :user, index: true
      t.string :short_description
      t.string :description
      t.string :image
      t.boolean :status
      t.timestamps
    end
  end
end
