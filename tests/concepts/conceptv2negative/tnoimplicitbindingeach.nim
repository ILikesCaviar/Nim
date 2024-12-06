discard """
action: "reject"
"""
type
  Sizeable = concept
    proc size(s: Self): int
  Buffer = concept
    proc w(s: Self, data: Sizeable)
  Serializable = concept
    proc w(b: each Buffer, s: Self)
  ArrayLike = concept
    proc size(s: Self): int
  ArrayImpl = object

proc size(x: ArrayImpl): int= discard

proc spring(data: Serializable)= discard
spring(ArrayImpl())
