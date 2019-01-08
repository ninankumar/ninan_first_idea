class Movie < ApplicationRecord
  # Direct associations

  has_many   :roles_id,
             :class_name => "Role",
             :foreign_key => "movied_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
