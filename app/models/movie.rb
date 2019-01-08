class Movie < ApplicationRecord
  # Direct associations

  belongs_to :director

  has_many   :roles_id,
             :class_name => "Role",
             :foreign_key => "movied_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
