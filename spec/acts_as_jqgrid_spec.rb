require 'spec_helper'

describe ActiveRecord::Acts::Jqgrid do
  it 'should be valid' do
    ActiveRecord::Acts::Jqgrid.should be_a(Module)
  end

  it 'should make the model respond with jqgrid' do
    class Example < ActiveRecord::Base
      acts_as_jqgrid
    end
    
    Example.should respond_to :jqgrid
  end
end
