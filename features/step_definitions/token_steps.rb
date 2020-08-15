When('I fill the tokenNumber') do
  @token ||= TokenScreen.new
  @token.autenticationPin
end