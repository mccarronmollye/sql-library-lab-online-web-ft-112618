def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title, year
   FROM books
   WHERE series_id = 1"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto 
   FROM characters
   ORDER BY motto
   LIMIT 1"
end


def select_value_and_count_of_most_prolific_species
  "SELECT characters.species, COUNT (*)
  FROM characters
  GROUP BY species
  ORDER BY COUNT (*) DESC
  LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
 "SELECT authors.name, subgenres.name
  FROM authors
  JOIN series on authors.id = series.author_id
  JOIN subgenres on series.subgenre_id = subgenres.id
  GROUP BY authors.name"
end

def select_series_title_with_most_human_characters
 "SELECT series.title
  FROM series
  JOIN characters on series.id = characters.series_id
  WHERE characters.species = 'human'
  GROUP BY series.title
  HAVING COUNT(*)
  ORDER BY characters.species
  LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, count(*)
   FROM characters
   JOIN character_books ON characters.id = character_books.character_id
   GROUP BY characters.id
   HAVING COUNT(*)
   ORDER BY COUNT(*) DESC, charters.name"
end
