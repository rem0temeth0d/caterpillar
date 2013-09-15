require 'spec_helper'

describe "AuthenticationPages" do
  subject { page }
  
    describe "signin page" do
      before { visit signin_path }
  
      it { should have_content('Caterpillar') }
      it { should have_title('Caterpillar') }
    end
end
