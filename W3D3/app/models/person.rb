# == Schema Information
#
# Table name: people
#
# id        :integer  not null, primary key
# name      :string   not null
# house_id  :integer not null


class Person < ActiveRecord::Base
  validates :name, :house_id, presence: true
  validates :name, uniqueness: true

  belongs_to :house,
    primary_key: :id,
    foreign_key: :house_id,
    class_name: :House
end
