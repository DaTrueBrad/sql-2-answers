-- #2
ALTER TABLE animals
ADD COLUMN location VARCHAR(30)
-- #3
insert into animals (
  name,
  type,
  location,
  age
) values (
  'ricky',
  'koala',
  'san diego',
  5
), (
  'bobby',
  'kangaroo',
  'salt lake',
  4
), (
  'nascar',
  'jackrabbit',
  'sydney',
  2
)
-- #4
ALTER TABLE animals
RENAME COLUMN type to species
-- #5
ALTER TABLE animals
ALTER COLUMN species TYPE VARCHAR(30)