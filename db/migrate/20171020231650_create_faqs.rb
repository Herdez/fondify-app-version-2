class CreateFaqs < ActiveRecord::Migration[5.0]
  def change
    create_table :faqs do |t|
      t.references :project, index: true
      t.string :question
      t.string :answer
      t.timestamps
    end
  end
end
