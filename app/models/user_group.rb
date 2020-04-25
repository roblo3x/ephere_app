# Принадлежность пользователя к учебной группе (например, к ИВТ-5.5-07, в которой 15 человек)
class UserGroup < ApplicationRecord
  belongs_to :user
  belongs_to :group
end
