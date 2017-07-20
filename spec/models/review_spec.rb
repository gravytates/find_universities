require 'rails_helper'

describe Review do
  it { should validate_presence_of :author }
  it { should validate_presence_of :content }

  it { should belong_to :user}
  it { should belong_to :university}
end
