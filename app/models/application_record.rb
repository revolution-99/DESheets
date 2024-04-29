class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  def controller_class
    self.class.name.underscore.pluralize
  end

  def class_title
    self.class.name.underscore.humanize.titleize
  end
end
