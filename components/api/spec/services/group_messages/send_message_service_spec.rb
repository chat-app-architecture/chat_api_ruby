# frozen_string_literal: true

RSpec.describe GroupMessages::SendMessageService, type: :service do
  context "when parameters are valid" do
    it "broadcasts messages and saves in the database" do
      group = create(:group)
      user = create(:user)
      params = {
        group_id: group.id,
        message:  Faker::Lorem.word
      }

      allow(Redis).to receive(:publish)

      expect do
        described_class.new(user, params).call
      end.to change(Chat::GroupMessage, :count)
        .by(1)
        .and change(Authentication::UserResource, :count)
        .by(1)
    end
  end

  context "when parameters are invalid" do
    it "raises an exception" do
      user = create(:user)

      allow(Redis).to receive(:publish)

      expect do
        described_class.new(user, {}).call
      end.to raise_error(ActiveRecord::RecordNotFound)
    end
  end
end
