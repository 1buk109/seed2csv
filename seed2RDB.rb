require_relative 'common'

family = ''
File.foreach('./data/Rfam.seed') do |line|
  if line.start_with?('#=GF ID')
    family = line.chomp.split[-1]
    next
  elsif line.start_with?(/[#, \/]/)
    next
  elsif line.chomp.empty?
    next
  else
    sequence_list = line.chomp.split
    name = sequence_list[0]
    sequence = sequence_list[1].gsub(/[^AUGC]/, '')
    sequence_hash = {
      source: 'Rfam',
      family: family,
      name: name,
      sequence: sequence,
      length: sequence.length,
    }
    Sequence.create(sequence_hash)
  end
end
