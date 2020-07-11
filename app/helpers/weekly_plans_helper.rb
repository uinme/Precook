# frozen_string_literal: true

module WeeklyPlansHelper
  def organize_ingredients(weekly_plan_id)
    ingredients = WeeklyPlan.find(weekly_plan_id).plans.map(&:recipe).map(&:ingredients).flatten
    grouped = ingredients.group_by { |i| [i.name, i.cut_style] }.values
    grouped.each do |g|
      next unless g.length > 1

      total_amount = g.map(&:amount).sum
      g.uniq!
      g.first[:amount] = total_amount
    end
    grouped.flatten
  end
end
