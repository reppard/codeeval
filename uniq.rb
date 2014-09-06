samples = File.open(ARGV[0],'r')
samples.each{ |s|
 puts s.chomp.split(',').uniq.join(',')
}
samples.close
