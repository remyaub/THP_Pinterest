class CreateCommentaries < ActiveRecord::Migration[5.2]
  def change
    create_table :commentaries do |t|
      t.text :content
      t.belongs_to :user, index: true
      t.belongs_to :pin

      t.timestamps
    end
  end
end
