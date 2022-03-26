module Bug1366 ( CanT(..) ) where

-- | A monad transformer for the pointed product,
-- parameterized by:
--
--   * @a@ - the value on the left
--   * @b@ - the value on the right
--   * @m@ - The monad over a pointed product (see: 'Can').
--
-- This monad transformer is similar to 'TheseT',
-- except with the possibility of an empty unital value.
--
newtype CanT a m b = CanT { runCanT :: m (Can a b) }

data Can a b = Non | One a | Eno b | Two a b
