# frozen_string_literal: true

class WeeklyPlan < ApplicationRecord
  has_many :plans
  belongs_to :user
  accepts_nested_attributes_for :plans, reject_if: :all_blank, allow_destroy: false
end
