class CreateSuppliers < ActiveRecord::Migration[5.2]
  def change
    create_table :suppliers do |t|
      t.string :siret
      t.string :corporate_name
      t.string :juridic_status
      t.integer :relance_mail

      t.timestamps
    end
  end
end
