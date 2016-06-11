class Conference < ActiveRecord::Base


validates :conference_name, :presence => true, :uniqueness => true

validates :founded, numericality: { only_integer: true }

has_many :conference_histories , :class_name => "ConferenceHistory", :foreign_key => "conference_id"

end
