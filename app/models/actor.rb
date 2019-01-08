class Actor < ApplicationRecord
  # Direct associations

  has_many   :roles_id,
             :class_name => "Role",
             :foreign_key => "actors_id",
             :dependent => :destroy

  # Indirect associations

  has_many   :movieds,
             :through => :roles_id,
             :source => :movied

  # Validations

end
