
family = {  uncles: %w(jorge samuel steve),
            sisters: %w(angelica mago julia),
            brothers: %w(polo rob david),
            aunts: %w(maria minerva susana)
}

def family_members(family)
  family[:sisters] + family[:brothers]
end

# test
p family_members(family) == %w(angelica mago julia polo rob david)