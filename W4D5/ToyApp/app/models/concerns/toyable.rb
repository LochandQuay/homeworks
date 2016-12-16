module Toyable
  extend ActiveSupport::Concern

  included do
    has_many :toys, as: :toyable
    # validates :toys
  end

  def receive_toy(name)
    self.toys << Toy.find_or_create_by(name: name)
  end
end