class Workset < ApplicationRecord
  belongs_to :workout, optional: true

  def self.movements
    @movements = Workset.order(:created_at, :type, :exercise).pluck(:type).uniq
  end
end
