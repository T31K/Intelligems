class CreateIntelligems < ActiveRecord::Migration[6.1]
  def change
    create_table :intelligems do |t|
      t.string :name
      t.string :link_type
      t.string :link

      t.timestamps
    end
  end
end
