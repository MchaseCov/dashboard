# == Table Schema ==
#
# table name: pieces
#
# id             :bigint       null: false      primary key
# header         :string
# body           :text
# created_at     :datetime     null: false
# updated_at     :datetime     null: false
#
class Note < ApplicationRecord
  validates_presence_of :header, :body
end
