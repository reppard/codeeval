samples = File.open(ARGV[0],'r')

samples.each{ |s|
  first,second = s.split(';')
  first = first.split(',')
  second = second.split(',')

  matches = first & second
  puts matches.join(',')

}

samples.close
