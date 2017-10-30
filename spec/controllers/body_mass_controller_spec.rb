require "rails_helper"

describe BodyMassController do

  let(:params) {{ weight: "76", height: "190"}}
  subject {get :calculate_bmi, params: params, session: {}, xhr: true }

  describe "GET body mass index" do
    describe "when user is authenticated" do
      it "returns bmi" do
        user = create(:user)
        sign_in :user, user
        subject
        expect(response.status).to eq 200
      end
    end

    describe "when user is not authenticated" do
      it "returns 401" do
        get :calculate_bmi, params: params, session: {}, xhr: true
        expect(response.status).to eq 401
      end
    end
  end

end