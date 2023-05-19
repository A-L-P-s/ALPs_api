require "rails_helper"

RSpec.describe OpenaiFacade, :vcr do
  describe "class methods" do
    before(:each) do
      @turkish_user = User.create(id: 55, name: "Deniz", preferred_lang: "Turkish")

      @tr_challenge1 = Challenge.create(id: 50, user_id: 55, language: "Turkish", verb: "(e/a) gitmek", eng_verb: "to go", image_url: "https://images.unsplash.com/photo-1500835556837-99ac94a94552?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80", image_alt_text: "Plane flying")
      @tr_sentence1 = Sentence.create(id: 10, challenge_id: 50, grammar_point: "gelecek zaman (-ecek)", eng_grammar_point: "future tense", user_sent: "Yarın annem beni havalimanına bırakmak için araba kullanacak.")
      @tr_sentence2 = Sentence.create(id: 11, challenge_id: 50, grammar_point: "olumsuz geçmiş zaman (-me/-ma + di/-tı)", eng_grammar_point: "negative past tense", user_sent: "Dün havalimana gittik ama arkadaşım uçak gelmedi.")
    end

    it "can :srub_response" do
      scrubbed_ai_data = OpenaiFacade.scrub_response(@tr_challenge1)
      expect(scrubbed_ai_data).to be_a(Hash)
      expect(scrubbed_ai_data.keys).to eq([:correction1, :explanation1, :correction2, :explanation2])
    end

    xit "can :check_challenge_with_ai" do
      
    end

    it "can :update_sentences" do
      data = {:correction1=>"Bu yaz Hopa'ya gidiyorum.",
      :explanation1=>"The sentence is already correct. It uses the correct grammar şimdiki zaman (-iyor) and the verb (i) gitmek to express an action that is happening now.",
      :correction2=>"Her yıl biz Ankara'ya gideriz.",
      :explanation2=>
       "The corrected sentence uses the correct grammar geniş zaman (-ir/-er) and the verb (i) gitmek to express a habitual action that happens every year. Also, the verb ending is changed to the plural form to match the subject 'biz'."}
        
      expect(@tr_challenge1.sentences.first.ai_sent).to eq(nil)
      expect(@tr_challenge1.sentences.first.ai_explanation).to eq(nil)
      expect(@tr_challenge1.sentences.last.ai_sent).to eq(nil)
      expect(@tr_challenge1.sentences.last.ai_explanation).to eq(nil)
      
      OpenaiFacade.update_sentences(@tr_challenge1, data)
      expect(@tr_challenge1.sentences.first.ai_sent).to eq("Bu yaz Hopa'ya gidiyorum.")
      expect(@tr_challenge1.sentences.first.ai_explanation).to eq("The sentence is already correct. It uses the correct grammar şimdiki zaman (-iyor) and the verb (i) gitmek to express an action that is happening now.")
      expect(@tr_challenge1.sentences.second.ai_sent).to eq("Her yıl biz Ankara'ya gideriz.")
      expect(@tr_challenge1.sentences.second.ai_explanation).to eq("The corrected sentence uses the correct grammar geniş zaman (-ir/-er) and the verb (i) gitmek to express a habitual action that happens every year. Also, the verb ending is changed to the plural form to match the subject 'biz'.")
    end
  end
end