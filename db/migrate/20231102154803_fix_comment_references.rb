class FixCommentReferences < ActiveRecord::Migration[7.1]
  def up
    remove_reference :comments, :comment, index: true
    add_reference :comments, :user, foreign_key: true
  end

  def down
    remove_reference :comments, :user, foreign_key: true
    add_reference :comments, :comment, index: true
  end
end
