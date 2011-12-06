require "acts_as_jqgrid/version"
require "rails/all"

module ActiveRecord
  module Acts
    module Jqgrid
      def self.included(base)
        base.extend ClassMethods
      end
      
      module ClassMethods
        def acts_as_jqgrid
          include ActiveRecord::Acts::Jqgrid::InstanceMethods
          extend  ActiveRecord::Acts::Jqgrid::SingletonMethods
        end
      end
      
      module SingletonMethods
        def jqgrid
        end
      end
      
      module InstanceMethods
      end

    end
  end
end

ActiveRecord::Base.send :include, ActiveRecord::Acts::Jqgrid
