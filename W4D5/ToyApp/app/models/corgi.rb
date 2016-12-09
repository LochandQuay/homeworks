<<<<<<< HEAD
class Corgi < ActiveRecord::Base
=======
# == Schema Information
#
# Table name: corgis
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Corgi < ActiveRecord::Base
  include Toyable
>>>>>>> 05ba7f6a89f2181f0f527fb7d5f5da27a2fd295a
end
