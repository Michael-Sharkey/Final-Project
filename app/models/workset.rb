class Workset < ApplicationRecord
  belongs_to :workout, optional: true
end
