# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
  t_hash = Hash.new{|hash, key| hash[key] = 0}
  s_hash = Hash.new{|hash, key| hash[key] = 0}
  s.split('').each do |chr|
    s_hash[chr] += 1
  end

  t.split('').each do |chr|
    t_hash[chr] += 1
  end
  t_hash == s_hash
end

p is_anagram('rat', 'tar')
p is_anagram('casd', 'cd')
p is_anagram('dgqztusjuu', 'dqugjzutsu')
