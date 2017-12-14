require 'rails_helper'

RSpec.describe Event, type: :model do
  describe "validations" do
    it "is invalid without a name" do
       = Event.new(name: "")
      event.valid?
      expect(room.errors).to have_key(:home_type)
    end

    it "is invalid without a listing name" do
      room = Room.new(listing_name: nil)
      room.valid?
      expect(room.errors).to have_key(:listing_name)
    end

    it "is invalid with a listing name longer than 50 characters" do
      room = Room.new(listing_name: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. ")
      room.valid?
      expect(room.errors).to have_key(:listing_name)
    end
  end
end
