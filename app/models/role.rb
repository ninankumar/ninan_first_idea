class Role < ApplicationRecord
  # Direct associations

  belongs_to :actors,
             :class_name => "Actor"

  belongs_to :movied,
             :class_name => "Movie"

  # Indirect associations

  # Validations

end
