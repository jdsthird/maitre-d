require 'rails_helper'

RSpec.describe SeatingHelper, type: :helper do

  let(:host) { User.create!(first_name: "a", last_name: "b", email: "a@b.c", username: "d", password_hash: BCrypt::Password.create("1"))}
  let(:event) { Event.create!(name: "p", zip_code: "12345", state: "IL", address_line_one: "123 Elm St.", begins_at: Time.now, host: host) }
  let(:guest) { Guest.create!(first_name: "sam", event: event) }
  let(:guests) { Array.new(5) { Guest.create!(first_name: "guest", event: event) } }
  let(:table) { Table.create!(number_of_seats: 5, event: event) }
  let(:tables) { Array.new(2) { Table.create!(number_of_seats: 5, event: event) } }

  # describe "#group_guests" do
  #   xit "accepts an array of guests as its argument" do
  #     expect{ group_guests(guests) }.to_not raise_error
  #   end

  #   xit "returns an array of arrays" do
  #     expect(group_guests(guests)).to all(be_an Array)
  #   end

  #   xit "groups pairs together" do
  #     guests.each { |g| guest.pairs << g }
  #     p output = group_guests(guests << guest)
  #     expect(output.length).to eq 1
  #   end
  # end

  describe "#make_seating_chart" do
    it "returns an array" do
      guests.first.pairs << guest
      expect(make_seating_chart(guests + [guest], tables)).to be_an Array
    end

    it "..of tables" do
      guests.first.pairs << guest
      assignment = make_seating_chart(guests + [guest], tables)
      expect(assignment).to all(be_a Table)
    end

    it "places pairs at the same table" do
      guests.first.pairs << guest
      assignment = make_seating_chart(guests + [guest], tables)
      expect(assignment.first.guests).to include(guest, guests.first)
    end
  end

  describe "#table_slices" do
    it "returns an array of arrays" do
      expect(table_slices(table.number_of_seats, guests)).to all(be_an Array)
    end

    it "correctly maps guests to tables" do
      assignments = table_slices(table.number_of_seats, (guests + [guest]).map(&:id))
      expect(assignments.first).to eq guests.map(&:id)
    end
  end

  describe "#slices_valid?" do
    it "returns false if any slice is not valid" do
      guests.first.pairs << guest
      slices = [[guests.map(&:id)], [guest.id]]
      expect(slices_valid?(slices)).to be false
    end

    it "returns true when all tables are valid" do
      slices = [[guests.map(&:id)], [guest.id]]
      expect(slices_valid?(slices)).to be true
    end
  end
end