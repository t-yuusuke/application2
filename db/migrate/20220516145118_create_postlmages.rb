class CreatePostlmages < ActiveRecord::Migration[6.1]
  def change
    create_table :postlmages do |t|

    t.string :shop_name
    t.text :caption

    t.timestamps
    end
  end
end
