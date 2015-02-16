class CreateChatRooms < ActiveRecord::Migration
  def change
    create_table :chat_rooms do |t|
      t.string :title
      t.integer :student_id
      t.integer :teacher_id

      t.timestamps
    end
    add_index :chat_rooms, :student_id
    add_index :chat_rooms, :teacher_id
    add_index :chat_rooms, [:student_id, :teacher_id]
  end
end
