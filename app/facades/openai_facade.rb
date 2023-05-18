class OpenaiFacade

  def self.check_challenge_with_ai(new_challenge)
    parsed_data = scrub_response(new_challenge)
    # James & Dave
    # if returns false raise an exception? catch that %10 AI is wrong
    update_sentences(new_challenge, parsed_data)
    new_challenge
  end

  def self.scrub_response(new_challenge)
    content = OpenaiService.get_response(new_challenge)
    x = content.delete("\n")
    # James catching errors if 4 keys don't match??
    JSON.parse(x, symbolize_names: true)
  end

  def self.update_sentences(new_challenge, parsed_data)
    # make more dynamic Caleb
    sent_array = new_challenge.sentences
    sent_array[0].update(ai_sent: parsed_data[:correction1], ai_explanation: parsed_data[:explanation1])
    sent_array[1].update(ai_sent: parsed_data[:correction2], ai_explanation: parsed_data[:explanation2])
  end
end