require 'rails_helper'

describe ApplicationHelper do
  describe "#hue_ip" do
    it "should get back a response from hue api" do
      expect(hue_ip).not_to be_nil
    end

    it "response should be an ip address string" do
      expect(hue_ip).to be_a(String)
      expect(hue_ip.gsub(".", "").to_i).not_to be(0)
    end

    it "should response with false if no ip address" do
      expect(hue_ip).to be_a(String).or(eq(false))
    end
  end

  describe "#get_hue_authorization" do
    it "returns a hash with a success bool and a message" do
      resp = get_hue_authorization
      expect(resp[:success]).to eq(true).or(eq(false))
      expect(resp[:message]).to be_truthy
    end
  end
end
