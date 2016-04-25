 "iNvEsTiGaTiOn".<upcase>
# => “InVeStIgAtIoN”

"zom".insert(1, 'o')
# => “zoom”

 "enhance".center(15)
# => "    enhance    "

"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

"the usual".insert(9, " suspects")
#=> "the usual suspects"

" suspects".prepend("the usual")
# => "the usual suspects"

"The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

"The mystery of the missing first letter".slice(1..-1)
# => "he mystery of the missing first letter"

"Elementary,    my   dear        Watson!".squeeze(" ")
# => "Elementary, my dear Watson!"

"z".getbyte(0)
# => 122 

# (What is the significance of the number 122 in relation to the character z?)
# 122 is the aplhpaneurmeric value of z in Ruby

# "How many times does the letter 'a' appear in this string?".<???>
# => nil (?)