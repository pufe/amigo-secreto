class Mural < ActiveRecord::Base
  has_many :recados

  rails_admin do
    object_label_method :dono
  end
end
