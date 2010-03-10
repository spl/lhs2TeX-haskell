% This file is in the public domain.
% Sean Leather, 2010 March 10

\documentclass{article}

\usepackage{xcolor}

%include haskell.fmt

%-------------------------------------------------------------------------------

\title{Examples using \texttt{haskell.fmt}}

%-------------------------------------------------------------------------------

\begin{document}

%-------------------------------------------------------------------------------

\maketitle

%-------------------------------------------------------------------------------

\begin{code}
{-# LANGUAGE ScopedTypeVariables #-}

module Example where

import Prelude hiding (lookup)
import Data.Set (Set)
import qualified Data.Set as_ S
\end{code}

%if style /= newcode
%format MySett = "\TConId{MySet}"
%format S.empty = "\VarId{S.empty}"
%format prodsym = ":\!\!*\!\!:"
%format :**: = "\TConSym{" prodsym "}"
%format :*: = "\ConSym{" prodsym "}"
%format MyClass = "\TClassId{MyClass}"
%endif

\begin{code}
newtype MySett aa = MySet (Set aa)
>-<
a = 5 :: (Num aa) => aa
b = 'a' :: Char
c = "hello" :: String
d (a:as) = a
>-<
e3 :: forall tt..MySett tt
e3 = MySet S.empty
>-<
{- Variable symbol -}
(&*) = const
infixr &*
>-<
-- Symbolic type and data constructors
data aa0 :**: bb1 = aa0 :*: bb1
>-<
class MyClass aa where
  a2a :: aa -> aa
>-<
dots
\end{code}

%-------------------------------------------------------------------------------

\end{document}

