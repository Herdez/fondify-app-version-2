class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.references :user, index: true
      t.string :title
      t.string :description
      t.string :image
      t.boolean :status, :default => false
      t.timestamps
    end
  end
end
