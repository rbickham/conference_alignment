class ConferenceHistory < ActiveRecord::Base

validates :school_id, :presence => true, :uniqueness => { :scope => :conference_id }

validates :joined, numericality: { only_integer: true }

validates :left, numericality: { only_integer: true }

belongs_to :school , :class_name => "School", :foreign_key => "school_id"

belongs_to :conference , :class_name => "Conference", :foreign_key => "conference_id"

end
