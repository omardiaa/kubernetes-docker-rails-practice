class Todo < ApplicationRecord
  def update_done
    update!(done: true)
  end
end
