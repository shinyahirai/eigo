class CreateChats < ActiveRecord::Migration
  def change
    create_table :chats do |t|
      t.references :user, index: true
      t.references :chat_room, index: true
      t.text :body

      t.timestamps
    end
  end
end
