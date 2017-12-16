class Workset < ApplicationRecord
  belongs_to :training_session, optional: true
  belongs_to :user, optional: true
  belongs_to :movement_pattern, optional: true


end
