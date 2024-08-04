require 'rails_helper'

RSpec.describe User, type: :model do
  it 'User class exists, and has name and email attributes' do
    expect(User).to be_a(Class)

    expect(User.column_names).to include("name")
    expect(User.column_names).to include("email")
  end
end
