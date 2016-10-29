require_relative "../lexiconomitron"
require "spec_helper"
describe "Lexiconomitron" do
  describe "#eat_t" do
    it "removes every letter t from the input" do
      @lexi = Lexiconomitron.new
      expect(@lexi.eat_t("great scott!")).to eq("grea sco!")
    end
  end
  describe "shazam" do
      it "reverses the letters within the words" do
        @lexi = Lexiconomitron.new
        expect(@lexi.shazam( ["This", "is", "a", "boring", "test"])).to eq(["sih", "si", "a", "gnirob", "se"])
      end

  end
  describe "oompa_loompa" do

      it "takes the ones which size is three characters of less" do
        @lexi = Lexiconomitron.new
        expect(@lexi.oompa_loompa(["if", "you", "wanna", "be", "my", "lover"])).to eq(["if", "you", "be", "my"])
      end

  end
end
