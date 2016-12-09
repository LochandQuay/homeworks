module Toyable
  extend ActiveSupport::Concern

  include do
    has_many :toys, as: :toyable
    # validates :toys
  end

  def receive_toy(name)
  end
end
