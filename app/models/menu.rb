# frozen_string_literal: true

class Menu < ApplicationRecord
  scope :sunday, -> { where(order_date: 'Sunday') }
  scope :monday, -> { where(order_date: 'Monday') }
  scope :tuesday, -> { where(order_date: 'Tuesday') }
  scope :wednesday, -> { where(order_date: 'Wednesday') }
  scope :thursday, -> { where(order_date: 'Thursday') }
  scope :friday, -> { where(order_date: 'Friday') }
  scope :saturday, -> { where(order_date: 'Saturday') }
end
