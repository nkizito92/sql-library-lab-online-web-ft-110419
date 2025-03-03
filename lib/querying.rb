def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year
   FROM books 
   INNER JOIN series 
   ON books.series_id = series.id 
   GROUP BY books.year LIMIT 3;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, characters.motto 
  FROM characters
  WHERE id = 2;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT characters.species, COUNT(characters.species) 
  FROM characters
  GROUP BY characters.species 
  ORDER BY species DESC LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name 
  FROM authors
  JOIN series 
  ON authors.id = series.author_id
  JOIN subgenres 
  ON series.subgenre_id = subgenres.id 
  GROUP BY authors.name;"
end

def select_series_title_with_most_human_characters
  "SELECT series.title 
  FROM series
  JOIN characters 
  ON series.author_id = characters.author_id
  GROUP BY series.title 
  ORDER BY characters.species DESC LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(character_books.id) AS amount
  FROM characters
  JOIN character_books
  ON characters.id = character_books.character_id
  GROUP BY characters.name
  ORDER BY amount DESC;"
end
