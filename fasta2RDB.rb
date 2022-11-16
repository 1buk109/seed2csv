require_relative 'common'

family = '16S_rRNA'
source = 'RT988_demo'
File.open('./data/RT988_demo.fasta') do |file|
  file.each_slice(2) do |lines|
    name = lines[0].gsub('>', '').chomp
    sequence = lines[1].gsub(/[^ATGC]/, '').gsub('T', 'U').chomp
    sequence_hash = {
      source: source,
      family: family,
      name: name,
      sequence: sequence,
      length: sequence.length,
    }
    Sequence.create(sequence_hash)
  end
end
