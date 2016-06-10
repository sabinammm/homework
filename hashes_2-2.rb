languages = {
  :de => 'German',
  :en => 'English',
  :es => 'Spanish',
}
dictionary = {
  :de => { :one => 'eins', :two => 'zwei', :three => 'drei' },
  :en => { :one => 'one', :two => 'two', :three => 'three' },
  :es => { :one => 'uno', :two => 'dos', :three => 'tres' }
}

def formatLanguage(language, languages, dictionary)
	dictionary = dictionary[language]
	sentence = dictionary.map {|key, value| value }.join(" ")
	puts "#{language} #{sentence}"
end

formatLanguage(:de, languages, dictionary)
formatLanguage(:en, languages, dictionary)
formatLanguage(:es, languages, dictionary)




=begin
Output:

	de eins zwei drei
	en one two three
	es uno dos tres	

	
=end

