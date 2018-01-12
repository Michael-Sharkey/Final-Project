class Exercise < ApplicationRecord
  belongs_to :workout

  def self.cumulative_volume
    order(:pattern, :name, created_at: :desc).to_json
  end 
end
