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
  end
end
