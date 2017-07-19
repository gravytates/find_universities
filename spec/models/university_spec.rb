require 'rails_helper'

describe University do
  it { should validate_presence_of :name }
end
