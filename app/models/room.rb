# == Schema Information
#
# Table name: rooms
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_rooms_on_name  (name) UNIQUE
#
class Room < ApplicationRecord

  has_many :room_messages, dependent: :destroy, inverse_of: :room

end
