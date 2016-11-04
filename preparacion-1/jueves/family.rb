
 family = {  uncles: ["jorge", "samuel", "steve"],
            sisters: ["angelica", "mago", "julia"],
            brothers: ["polo","rob","david"],
            aunts: ["maria","minerva","susana"]
          }
def family_members(family)
  family[:sisters] + family[:brothers]
end

#test
p family_members(family) == ["angelica", "mago", "julia", "polo", "rob", "david"]
