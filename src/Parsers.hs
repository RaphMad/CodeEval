module Parsers where

import Control.Applicative ((<$>), many)
import Control.Monad (void)
import Text.Parsec (parse)
import Text.Parsec.String (Parser)
import Text.Parsec.Char (oneOf, digit)
import Text.Parsec.Combinator (many1)

decimal :: Parser Int
decimal = read <$> many1 digit

whitespace :: Parser ()
whitespace = void $ many $ oneOf " \n\t"

parseSuccess :: Parser a -> String -> a
parseSuccess parser input = let (Right result) = parse parser "" input in result
