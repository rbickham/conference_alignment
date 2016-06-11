class School < ActiveRecord::Base


validates :school_name, :presence => true, :uniqueness => { :scope => :conference_name }

validates :joined, numericality: { only_integer: true }

has_many :conference_histories , :class_name => "ConferenceHistory", :foreign_key => "school_id"

end
