class RemoveContentFromDoctor < ActiveRecord::Migration[5.0]
  def change
    remove_column :doctors, :content, :string
  end
end
