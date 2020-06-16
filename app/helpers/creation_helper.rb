module CreationHelper
  def lesson_author(lesson)
    user_signed_in? && current_user.id == lesson.user_id
  end
end