class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  
  has_many :chat_rooms, foreign_key: 'student_id', class_name: 'ChatRoom'
  has_many :chat_rooms, foreign_key: 'teacher_id', class_name: 'ChatRoom'

end
