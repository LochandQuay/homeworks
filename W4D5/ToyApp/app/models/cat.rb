<<<<<<< HEAD
class Cat < ActiveRecord::Base
=======
# == Schema Information
#
# Table name: cats
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Cat < ActiveRecord::Base
  include Toyable
>>>>>>> 05ba7f6a89f2181f0f527fb7d5f5da27a2fd295a
end
