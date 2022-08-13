class CreateImageToTexts < ActiveRecord::Migration[6.1]
  def change
    create_table :image_to_texts do |t|

      t.timestamps
    end
  end
end
