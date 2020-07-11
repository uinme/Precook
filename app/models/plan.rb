class Plan < ApplicationRecord
  belongs_to :weekly_plan
  belongs_to :recipe
end
