class Numbers
  def check_entry(entered_sequence)
    entered_sequence = entered_sequence.gsub(/ /,'')
    entered_sequence == '4815162342'
  end
end
