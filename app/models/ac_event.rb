class AcEvent < ApplicationRecord
  def current_event
    from_date <= Date.today && to_date >= Date.today
  end

  def upcoming_event
    from_date > Date.today && from_date < Date.today + 60
  end
end
