require 'rails_helper'

RSpec.describe Answer, type: :model do

  let(:answer) { Answer.create!(body: "New Answer Body") }
  let(:question) { Question.create!(title: "New Question Title", body: "New Question Body") }
  
  describe "attributes" do
   it "has body attributes" do
     expect(answer).to have_attributes(body: "New Answer Body")
   end
 end
 end
     
