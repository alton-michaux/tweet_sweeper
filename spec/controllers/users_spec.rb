require 'rails_helper'

# Change this ArticlesController to your project
RSpec.describe UsersController, type: :controller do

    # This should return the minimal set of attributes required to create a valid
    # User. As you add validations to User, be sure to adjust the attributes here as well.
    let(:valid_attributes) {
        { :name => "Morpheus", :email => "morpheus@matrix.org" }
    }

    let(:valid_session) { {} }

    describe "GET #index" do
        it "returns a success response" do
            User.create! valid_attributes
            get :index, params: {}, session: valid_session
            expect(response).to be_successful # be_successful expects a HTTP Status code of 200
            # expect(response).to have_http_status(302) # Expects a HTTP Status code of 302
        end
    end
end