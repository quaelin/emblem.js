@import "../whitespace.pegjs" as _

start = subexpression

subexpression
= _ p:$(OPEN_PAREN inParensChar* subexpression* inParensChar* CLOSE_PAREN) _ {
  return p;
}

inParensChar = [^\(\)]

OPEN_PAREN = '('
CLOSE_PAREN = ')'
