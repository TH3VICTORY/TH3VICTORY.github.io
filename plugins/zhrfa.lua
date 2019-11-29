local function Zhrfa(msg,MsgText)

if msg.type ~= "pv" then

if MsgText[1] == "زخرفه" then

redis:setex(rambo..":ZhrfNow:"..msg.sender_user_id_..msg.chat_id_,500,true)

sendMsg(msg.chat_id_,msg.id_,"📑| حسننا , الان يمكنك ارسال الاسم 💯")    

return false

end

end

end

local function TextRes(msg)

if msg.text and msg.type ~= "pv" and redis:get(rambo..":ZhrfNow:"..msg.sender_user_id_..msg.chat_id_) then

redis:del(rambo..":ZhrfNow:"..msg.sender_user_id_..msg.chat_id_)

if utf8.len(msg.text) > 20 then

sendMsg(msg.chat_id_,msg.id_,"📛| لا يمكنك زخرفه اكثر من 20 حرف \n📑| ارسل امر زخرفه وحاول مجددا بحروف اقل")    

return false

elseif msg.text:match("\n") then

sendMsg(msg.chat_id_,msg.id_,"📛| لا يمكن زخرفه نص يحتوي على اكثر من سطر .")

return false

end

local EmojeS = {

' •🌱💚﴿ֆ ❥',

'🍿﴿ֆ ❥',

'• 🌸💸 ❥˓  ',

'🖤🌞﴿ֆ',

' • 🐼🌿﴾ֆ',

' •🙊💙﴿ֆ ❥', 

'-💁🏼‍♂️✨﴿ֆ ❥ ', 

'•|• 〄💖‘',

' ⚡️🌞 •|•℡', 

'- ⁽🙆‍♂️✨₎ֆ', 

'❥┇💁🏼‍♂️🔥“', 

'💜💭℡ֆ', 

'-┆💙🙋🏼‍♂️♕', 

'- ⁽🙆🏻🍿₎ֆ',

'“̯ 🐼💗 |℡',

'⁞ 🐝🍷',

'┋⁽❥̚͢₎ 🐣💗', 

'•|• ✨🌸‘',

'  ֆ 💭💔ۦ',

'ֆ 💛💭ۦ', 

'ֆ ⚡️🔱ۦ',

'℡ᴖ̈💜✨⋮', 

'⋮⁽🌔☄️₎ۦ˛',

'⁞❉💥┋♩',

' ⁞✦⁽☻🔥₎“ٰۦ',

'℡ ̇₎ ✨🐯⇣✦',

'⁞♩⁽🌞🌩₎⇣✿',

'ۦٰ‏┋❥ ͢˓🦁💛ۦ‏',

'⚡️♛ֆ₎',

'♛⇣🐰☄️₎✦',

'⁾⇣✿💖┊❥',

' ₎✿💥😈 ⁞“❥', 

'😴🌸✿⇣',

'❥┊⁽ ℡🦁🌸'

}

local Emoje = {

'║👹💥ᵛ͢ᵎᵖ ⌯﴾❥',

'₎🐳🍥۶ֆ',

'♩┊💎🌸❥ ₎',

'₎❁😻🌸⇣',

'┊🏻“👄🌺) ℡',

'❥ֆ☄⚡️ ᴗ̈',

'❥•َ⚡️ْ🦇️͢ֆ⸽',

'♜🌸🐝 ⁞',

'║♜💛⚡️͢₎⇣✿ ⁞',

'⌯⇣✿💙☄ ⁞﴾❥',

'¦⇣👽♜͢ ⁞',

'❥•َْ👻⚡️͢⸽۶ֆ',

'ֆ⸽♜👹🔥͢₎⇣',

'⌯⇣✿💙☄ ⁞﴾❥',

'♛⌗👽ᵛ🚀﴾⌯',

' ❀🎼🌸℡³¹³',

' ⁞ 🐝🍷',

'• 🐼🌿﴾ֆ',

'🐳🍥۶',

'┊※🏎️‘’💛',

'❥┊⁽ ℡🦁🌸',

'😴🌸✿⇣',

'₎❁😻🌸⇣',

'💁🏼‍♂️✨﴿ֆ ❥',

'┆💙🙋🏼‍♂️♕',

'➤🙇🏼ֆ﴾',

'˛⁽💆🏻‍♂🌙₎⇣✿',

'ཻ ☫ٰ⇣🐼💙ֆ℠',

'℡ 🌞🔥‎‏ ⁾┊',

'┊💎🌸❥ ₎',

'∬💛✨ֆ',

'🌸💸 ❥˓',

' ⁽࿑♚꫶😼ֆ﴾',

'❥•َ⚡️🦇️ֆ⸽',

'🍿﴿ֆ ❥',

'ᵛ͢ᵎᵖ📯💛﴾'

}

Text = msg.text

local Zhrf = Text:gsub('ض','ضِٰـِۢ')

Zhrf = Zhrf:gsub('ص','صِٰـِۢ')

Zhrf = Zhrf:gsub('ث','ثِٰـِۢ')

Zhrf = Zhrf:gsub('ق','قِٰـِۢ')

Zhrf = Zhrf:gsub('ف','فِٰ͒ـِۢ')

Zhrf = Zhrf:gsub('غ','غِٰـِۢ')

Zhrf = Zhrf:gsub('ع','عِٰـِۢ')

Zhrf = Zhrf:gsub('خ','خِٰ̐ـِۢ')

Zhrf = Zhrf:gsub('ح','حِٰـِۢ')

Zhrf = Zhrf:gsub('ج','جِٰـِۢ')

Zhrf = Zhrf:gsub('ش','شِٰـِۢ')

Zhrf = Zhrf:gsub('س','سِٰـِۢ')

Zhrf = Zhrf:gsub('ي','يِٰـِۢ')

Zhrf = Zhrf:gsub('ب','بِٰـِۢ')

Zhrf = Zhrf:gsub('ل','لِٰـِۢ')

Zhrf = Zhrf:gsub('ا','آ')

Zhrf = Zhrf:gsub('ت','تِٰـِۢ')

Zhrf = Zhrf:gsub('ن','نِٰـِۢ')

Zhrf = Zhrf:gsub('م','مِٰـِۢ')

Zhrf = Zhrf:gsub('ك','ڪِٰـِۢ')

Zhrf = Zhrf:gsub('ط','طِٰـِۢ')

Zhrf = Zhrf:gsub('ظ','ظِٰـِۢ')

Zhrf = Zhrf:gsub('ء','ء')

Zhrf = Zhrf:gsub('ؤ','ؤ')

Zhrf = Zhrf:gsub('ر','ر')

Zhrf = Zhrf:gsub('ى','ى')

Zhrf = Zhrf:gsub('ز','ز')

Zhrf = Zhrf:gsub('و','ﯛ̲୭')

Zhrf = Zhrf:gsub('ه','ۿۿہ')

Zhrf = Zhrf:gsub('a','𝒂')

Zhrf = Zhrf:gsub('A','𝑨')

Zhrf = Zhrf:gsub("b","𝒃")

Zhrf = Zhrf:gsub("B","𝑩")

Zhrf = Zhrf:gsub("c","𝒄")

Zhrf = Zhrf:gsub("C","𝑪")

Zhrf = Zhrf:gsub("d","𝒅")

Zhrf = Zhrf:gsub("D","𝑫")

Zhrf = Zhrf:gsub("e","𝒆")

Zhrf = Zhrf:gsub("E","𝑬")

Zhrf = Zhrf:gsub("f","𝒇")

Zhrf = Zhrf:gsub("F","𝑭")

Zhrf = Zhrf:gsub("g","𝒈")

Zhrf = Zhrf:gsub("G","𝑮")

Zhrf = Zhrf:gsub("h","𝒉")

Zhrf = Zhrf:gsub("H","𝑯")

Zhrf = Zhrf:gsub("i","𝒊")

Zhrf = Zhrf:gsub("I","𝑰")

Zhrf = Zhrf:gsub("j","𝒋")

Zhrf = Zhrf:gsub("J","𝑱")

Zhrf = Zhrf:gsub("k","𝒌")

Zhrf = Zhrf:gsub("K","𝑲")

Zhrf = Zhrf:gsub("l","𝒍")

Zhrf = Zhrf:gsub("L","𝑳")

Zhrf = Zhrf:gsub("m","𝒎")

Zhrf = Zhrf:gsub("M","𝑴")

Zhrf = Zhrf:gsub("n","𝒏")

Zhrf = Zhrf:gsub("N","𝑵")

Zhrf = Zhrf:gsub("o","𝒐")

Zhrf = Zhrf:gsub("O","𝑶")

Zhrf = Zhrf:gsub("p","𝒑")

Zhrf = Zhrf:gsub("P","𝑷")

Zhrf = Zhrf:gsub("q","𝒒")

Zhrf = Zhrf:gsub("Q","𝑸")

Zhrf = Zhrf:gsub("r","𝒓")

Zhrf = Zhrf:gsub("R","𝑹")

Zhrf = Zhrf:gsub("s","𝒔")

Zhrf = Zhrf:gsub("S","𝑺")

Zhrf = Zhrf:gsub("t","𝒕")

Zhrf = Zhrf:gsub("T","𝑻")

Zhrf = Zhrf:gsub("u","𝒖")

Zhrf = Zhrf:gsub("U","𝑼")

Zhrf = Zhrf:gsub("v","𝒗")

Zhrf = Zhrf:gsub("V","𝑽")

Zhrf = Zhrf:gsub("w","𝒘")

Zhrf = Zhrf:gsub("W","𝑾")

Zhrf = Zhrf:gsub("x","𝒙")

Zhrf = Zhrf:gsub("X","𝑿")

Zhrf = Zhrf:gsub("y","𝒚")

Zhrf = Zhrf:gsub("Y","𝒀")

Zhrf = Zhrf:gsub("z","𝒛")

Zhrf = Zhrf:gsub("Z","𝒁")

local Zhrf2 = Text:gsub('ض','ضَٰـُـٰٓ')

Zhrf2 = Zhrf2:gsub('ص','صَٰـُـٰٓ')

Zhrf2 = Zhrf2:gsub('ث','ثَٰـُـٰٓ')

Zhrf2 = Zhrf2:gsub('ق','قَٰـُـٰٓ')

Zhrf2 = Zhrf2:gsub('ف','فَٰ͒ـُـٰٓ')

Zhrf2 = Zhrf2:gsub('غ','غَٰـُـٰٓ')

Zhrf2 = Zhrf2:gsub('ع','عَٰـُـٰٓ')

Zhrf2 = Zhrf2:gsub('خ','خَٰ̐ـُـٰٓ')

Zhrf2 = Zhrf2:gsub('ح','حَٰـُـٰٓ')

Zhrf2 = Zhrf2:gsub('ج','جَٰـُـٰٓ')

Zhrf2 = Zhrf2:gsub('ش','شَٰـُـٰٓ')

Zhrf2 = Zhrf2:gsub('س','سَٰـُـٰٓ')

Zhrf2 = Zhrf2:gsub('ي','يَٰـُـٰٓ')

Zhrf2 = Zhrf2:gsub('ب','بَٰـُـٰٓ')

Zhrf2 = Zhrf2:gsub('ل','لَٰـُـٰٓ')

Zhrf2 = Zhrf2:gsub('ا','آ')

Zhrf2 = Zhrf2:gsub('ت','تَٰـُـٰٓ')

Zhrf2 = Zhrf2:gsub('ن','نَٰـُـٰٓ')

Zhrf2 = Zhrf2:gsub('م','مَٰـُـٰٓ')

Zhrf2 = Zhrf2:gsub('ك','ڪَٰـُـٰٓ')

Zhrf2 = Zhrf2:gsub('ط','طَٰـُـٰٓ')

Zhrf2 = Zhrf2:gsub('ظ','ظَٰـُـٰٓ')

Zhrf2 = Zhrf2:gsub('ء','ء')

Zhrf2 = Zhrf2:gsub('ؤ','ؤ')

Zhrf2 = Zhrf2:gsub('ر','ر')

Zhrf2 = Zhrf2:gsub('ى','ى')

Zhrf2 = Zhrf2:gsub('ز','ز')

Zhrf2 = Zhrf2:gsub('و','ﯛ̲୭')

Zhrf2 = Zhrf2:gsub("ه", "ۿۿہ")

Zhrf2 = Zhrf2:gsub('a',"ᵃ")

Zhrf2 = Zhrf2:gsub('A',"ᴬ")

Zhrf2 = Zhrf2:gsub("b","ᵇ")

Zhrf2 = Zhrf2:gsub("B","ᴮ")

Zhrf2 = Zhrf2:gsub("c","ᶜ")

Zhrf2 = Zhrf2:gsub("C","ᶜ")

Zhrf2 = Zhrf2:gsub("d","ᵈ")

Zhrf2 = Zhrf2:gsub("D","ᴰ")

Zhrf2 = Zhrf2:gsub("e","ᵉ")

Zhrf2 = Zhrf2:gsub("E","ᴱ")

Zhrf2 = Zhrf2:gsub("f","ᶠ")

Zhrf2 = Zhrf2:gsub("F","ᶠ")

Zhrf2 = Zhrf2:gsub("g","ᵍ")

Zhrf2 = Zhrf2:gsub("G","ᴳ")

Zhrf2 = Zhrf2:gsub("h","ʰ")

Zhrf2 = Zhrf2:gsub("H","ᴴ")

Zhrf2 = Zhrf2:gsub("i","ᶤ")

Zhrf2 = Zhrf2:gsub("I","ᴵ")

Zhrf2 = Zhrf2:gsub("j","ʲ")

Zhrf2 = Zhrf2:gsub("J","ᴶ")

Zhrf2 = Zhrf2:gsub("k","ᵏ")

Zhrf2 = Zhrf2:gsub("K","ᴷ")

Zhrf2 = Zhrf2:gsub("l","ˡ")

Zhrf2 = Zhrf2:gsub("L","ᴸ")

Zhrf2 = Zhrf2:gsub("m","ᵐ")

Zhrf2 = Zhrf2:gsub("M","ᴹ")

Zhrf2 = Zhrf2:gsub("n","ᶰ")

Zhrf2 = Zhrf2:gsub("N","ᴺ")

Zhrf2 = Zhrf2:gsub("o","ᵒ")

Zhrf2 = Zhrf2:gsub("O","ᴼ")

Zhrf2 = Zhrf2:gsub("p","ᵖ")

Zhrf2 = Zhrf2:gsub("P","ᴾ")

Zhrf2 = Zhrf2:gsub("q","q")

Zhrf2 = Zhrf2:gsub("Q","Q")

Zhrf2 = Zhrf2:gsub("r","ʳ")

Zhrf2 = Zhrf2:gsub("R","ᴿ")

Zhrf2 = Zhrf2:gsub("s","ˢ")

Zhrf2 = Zhrf2:gsub("S","ˢ")

Zhrf2 = Zhrf2:gsub("t","ᵗ")

Zhrf2 = Zhrf2:gsub("T","ᵀ")

Zhrf2 = Zhrf2:gsub("u","ᵘ")

Zhrf2 = Zhrf2:gsub("U","ᵁ")

Zhrf2 = Zhrf2:gsub("v","ᵛ")

Zhrf2 = Zhrf2:gsub("V","ⱽ")

Zhrf2 = Zhrf2:gsub("w","ʷ")

Zhrf2 = Zhrf2:gsub("W","ᵂ")

Zhrf2 = Zhrf2:gsub("x","ˣ")

Zhrf2 = Zhrf2:gsub("X","ˣ")

Zhrf2 = Zhrf2:gsub("y","ʸ")

Zhrf2 = Zhrf2:gsub("Y","ʸ")

Zhrf2 = Zhrf2:gsub("z","ᶻ")

Zhrf2 = Zhrf2:gsub("Z","ᶻ")

local Zhrf3= Text:gsub('ض','ض')

Zhrf3= Zhrf3:gsub('ص','ص')

Zhrf3= Zhrf3:gsub('ث','ثہ')

Zhrf3= Zhrf3:gsub('ق','ق')

Zhrf3= Zhrf3:gsub('ف','فُہ')

Zhrf3= Zhrf3:gsub('غ','غہ')

Zhrf3= Zhrf3:gsub('ع','عہ')

Zhrf3= Zhrf3:gsub('ه','هٰہٰٖ')

Zhrf3= Zhrf3:gsub('خ','خہ')

Zhrf3= Zhrf3:gsub('ح','حہ')

Zhrf3= Zhrf3:gsub('ج','جہ')

Zhrf3= Zhrf3:gsub('د','د')

Zhrf3= Zhrf3:gsub('ذ','ذ')

Zhrf3= Zhrf3:gsub('ش','شہ')

Zhrf3= Zhrf3:gsub('س','سہ')

Zhrf3= Zhrf3:gsub('ي','يہ')

Zhrf3= Zhrf3:gsub('ب','بّ')

Zhrf3= Zhrf3:gsub('ل','لہ')

Zhrf3= Zhrf3:gsub('ا','ا')

Zhrf3= Zhrf3:gsub('ت','تہ')

Zhrf3= Zhrf3:gsub('ن','نٰہٰٖ')

Zhrf3= Zhrf3:gsub('م','مٰہٰٖ')

Zhrf3= Zhrf3:gsub('ك','كُہ')

Zhrf3= Zhrf3:gsub('ط','طہ')

Zhrf3= Zhrf3:gsub('ئ','ئ ْٰ')

Zhrf3= Zhrf3:gsub('ء','ء')

Zhrf3= Zhrf3:gsub('ؤ','ؤ')

Zhrf3= Zhrf3:gsub('ر','رَ')

Zhrf3= Zhrf3:gsub('لا','لہا')

Zhrf3= Zhrf3:gsub('ى','ىْ')

Zhrf3= Zhrf3:gsub('ة','ة')

Zhrf3= Zhrf3:gsub('و','و')

Zhrf3= Zhrf3:gsub('ز','ز')

Zhrf3= Zhrf3:gsub('ظ','ظۗہٰٰ')

Zhrf3= Zhrf3:gsub('q','𝚚')

Zhrf3= Zhrf3:gsub('Q','𝚀')

Zhrf3= Zhrf3:gsub('w','𝚠')

Zhrf3= Zhrf3:gsub('W','𝚆')

Zhrf3= Zhrf3:gsub('e','𝚎')

Zhrf3= Zhrf3:gsub('E','𝙴')

Zhrf3= Zhrf3:gsub('r','𝚛')

Zhrf3= Zhrf3:gsub('R','𝚁')

Zhrf3= Zhrf3:gsub('t','𝚝')

Zhrf3= Zhrf3:gsub('T','𝚃')

Zhrf3= Zhrf3:gsub('y','𝚢')

Zhrf3= Zhrf3:gsub('Y','𝚈')

Zhrf3= Zhrf3:gsub('u','𝚞')

Zhrf3= Zhrf3:gsub('i','𝚒')

Zhrf3= Zhrf3:gsub('o','𝚘')

Zhrf3= Zhrf3:gsub('p','𝚙')

Zhrf3= Zhrf3:gsub('a','𝚊')

Zhrf3= Zhrf3:gsub('s','𝚜')

Zhrf3= Zhrf3:gsub('d','𝚍')

Zhrf3= Zhrf3:gsub('f','𝚏')

Zhrf3= Zhrf3:gsub('g','𝚐')

Zhrf3= Zhrf3:gsub('h','𝚑')

Zhrf3= Zhrf3:gsub('j','𝚓')

Zhrf3= Zhrf3:gsub('k','𝚔')

Zhrf3= Zhrf3:gsub('U','𝚞')

Zhrf3= Zhrf3:gsub('I','𝙸')

Zhrf3= Zhrf3:gsub('O','𝙾')

Zhrf3= Zhrf3:gsub('P','𝙿')

Zhrf3= Zhrf3:gsub('A','𝙰')

Zhrf3= Zhrf3:gsub('S','𝚂')

Zhrf3= Zhrf3:gsub('D','𝙳')

Zhrf3= Zhrf3:gsub('F','𝙵')

Zhrf3= Zhrf3:gsub('G','𝙶')

Zhrf3= Zhrf3:gsub('H','𝙷')

Zhrf3= Zhrf3:gsub('J','𝙹')

Zhrf3= Zhrf3:gsub('K','𝙺')

Zhrf3= Zhrf3:gsub('L','𝙻')

Zhrf3= Zhrf3:gsub('l','𝚕')

Zhrf3= Zhrf3:gsub('z','𝚣')

Zhrf3= Zhrf3:gsub('Z','𝚉')

Zhrf3= Zhrf3:gsub('x','𝚡')

Zhrf3= Zhrf3:gsub('X','𝚇')

Zhrf3= Zhrf3:gsub('c','𝚌')

Zhrf3= Zhrf3:gsub('C','𝙲')

Zhrf3= Zhrf3:gsub('v','𝚟')

Zhrf3= Zhrf3:gsub('V','𝚅')

Zhrf3= Zhrf3:gsub('b','𝚋')

Zhrf3= Zhrf3:gsub('B','𝙱')

Zhrf3= Zhrf3:gsub('n','𝚗')

Zhrf3= Zhrf3:gsub('N','𝙽')

Zhrf3= Zhrf3:gsub('m','𝚖')

Zhrf3= Zhrf3:gsub('M','𝙼')

local Zhrf4= Text:gsub('ض','ضۜہٰٰ')

Zhrf4= Zhrf4:gsub('ص','ضۜہٰٰ')

Zhrf4= Zhrf4:gsub('ث','ثہٰٰ')

Zhrf4= Zhrf4:gsub('ق','قྀ̲ہٰٰ')

Zhrf4= Zhrf4:gsub('ف','ف͒ہٰٰ')

Zhrf4= Zhrf4:gsub('غ','غہٰٰ')

Zhrf4= Zhrf4:gsub('ع','عہٰٰ')

Zhrf4= Zhrf4:gsub('ه','هٰہٰٖ')

Zhrf4= Zhrf4:gsub('خ','خٰ̐ہ ')

Zhrf4= Zhrf4:gsub('ح','حہٰٰ')

Zhrf4= Zhrf4:gsub('ج','جـٰ̲ـہْۧ')

Zhrf4= Zhrf4:gsub('د','دٰ')

Zhrf4= Zhrf4:gsub('ذ','ذِٰ')

Zhrf4= Zhrf4:gsub('ش','شِٰہٰٰ')

Zhrf4= Zhrf4:gsub('س','سٰٓ')

Zhrf4= Zhrf4:gsub('ي','يِٰہ')

Zhrf4= Zhrf4:gsub('ب','بّہ')

Zhrf4= Zhrf4:gsub('ل','لـٰ̲ـہ')

Zhrf4= Zhrf4:gsub('ا','آ')

Zhrf4= Zhrf4:gsub('ت','تَہَٰ')

Zhrf4= Zhrf4:gsub('ن','نَِہ')

Zhrf4= Zhrf4:gsub('م','مٰ̲ہ')

Zhrf4= Zhrf4:gsub('ك','ڪٰྀہٰٰ')

Zhrf4= Zhrf4:gsub('ط','طۨہٰٰ')

Zhrf4= Zhrf4:gsub('ئ','ئ ْٰ')

Zhrf4= Zhrf4:gsub('ء','ء')

Zhrf4= Zhrf4:gsub('ؤ','ؤ')

Zhrf4= Zhrf4:gsub('ر','رَ')

Zhrf4= Zhrf4:gsub('لا','لہا')

Zhrf4= Zhrf4:gsub('ى','ىْ')

Zhrf4= Zhrf4:gsub('ة','ة')

Zhrf4= Zhrf4:gsub('و','وِٰ')

Zhrf4= Zhrf4:gsub('ز','زَٰ')

Zhrf4= Zhrf4:gsub('ظ','ظۗہٰٰ')

Zhrf4= Zhrf4:gsub('q','ℚ')

Zhrf4= Zhrf4:gsub('Q','ℚ')

Zhrf4= Zhrf4:gsub('w','𝕎')

Zhrf4= Zhrf4:gsub('W','𝕎')

Zhrf4= Zhrf4:gsub('e','𝔼')

Zhrf4= Zhrf4:gsub('E','𝔼')

Zhrf4= Zhrf4:gsub('r','ℝ')

Zhrf4= Zhrf4:gsub('R','ℝ')

Zhrf4= Zhrf4:gsub('t','𝕋')

Zhrf4= Zhrf4:gsub('T','𝕋')

Zhrf4= Zhrf4:gsub('y','𝕐')

Zhrf4= Zhrf4:gsub('Y','𝕐')

Zhrf4= Zhrf4:gsub('u','𝕌')

Zhrf4= Zhrf4:gsub('i','𝕀')

Zhrf4= Zhrf4:gsub('o','𝕆')

Zhrf4= Zhrf4:gsub('p','ℙ')

Zhrf4= Zhrf4:gsub('a','𝔸')

Zhrf4= Zhrf4:gsub('s','𝕊')

Zhrf4= Zhrf4:gsub('d','𝔻')

Zhrf4= Zhrf4:gsub('f','𝔽')

Zhrf4= Zhrf4:gsub('g','𝔾')

Zhrf4= Zhrf4:gsub('h','ℍ')

Zhrf4= Zhrf4:gsub('j','𝕁')

Zhrf4= Zhrf4:gsub('k','𝕂')

Zhrf4= Zhrf4:gsub('U','𝕌')

Zhrf4= Zhrf4:gsub('I','𝕀')

Zhrf4= Zhrf4:gsub('O','𝕆')

Zhrf4= Zhrf4:gsub('P','ℙ')

Zhrf4= Zhrf4:gsub('A','𝔸')

Zhrf4= Zhrf4:gsub('S','𝕊')

Zhrf4= Zhrf4:gsub('D','𝔻')

Zhrf4= Zhrf4:gsub('F','𝔽')

Zhrf4= Zhrf4:gsub('G','𝔾')

Zhrf4= Zhrf4:gsub('H','ℍ')

Zhrf4= Zhrf4:gsub('J','𝕁')

Zhrf4= Zhrf4:gsub('K','𝕂')

Zhrf4= Zhrf4:gsub('L','𝕃')

Zhrf4= Zhrf4:gsub('l','𝕃')

Zhrf4= Zhrf4:gsub('z','ℤ')

Zhrf4= Zhrf4:gsub('Z','ℤ')

Zhrf4= Zhrf4:gsub('x','𝕏')

Zhrf4= Zhrf4:gsub('X','𝕏')

Zhrf4= Zhrf4:gsub('c','ℂ')

Zhrf4= Zhrf4:gsub('C','ℂ')

Zhrf4= Zhrf4:gsub('v','𝕍')

Zhrf4= Zhrf4:gsub('V','𝕍')

Zhrf4= Zhrf4:gsub('b','𝔹')

Zhrf4= Zhrf4:gsub('B','𝔹')

Zhrf4= Zhrf4:gsub('n','ℕ')

Zhrf4= Zhrf4:gsub('N','ℕ')

Zhrf4= Zhrf4:gsub('m','𝕄')

Zhrf4= Zhrf4:gsub('M','𝕄')

local Zhrf5= Text:gsub('ض','ضَ')

Zhrf5= Zhrf5:gsub('ص','صً')

Zhrf5= Zhrf5:gsub('ث','ثَ')

Zhrf5= Zhrf5:gsub('ق','قُ')

Zhrf5= Zhrf5:gsub('ف','فّ')

Zhrf5= Zhrf5:gsub('غ','غِ')

Zhrf5= Zhrf5:gsub('ع','عُ')

Zhrf5= Zhrf5:gsub('ه','ﮭ')

Zhrf5= Zhrf5:gsub('خ','خِ')

Zhrf5= Zhrf5:gsub('ح','حٌ')

Zhrf5= Zhrf5:gsub('ج','جُ')

Zhrf5= Zhrf5:gsub('د','دِ')

Zhrf5= Zhrf5:gsub('ذ','ذَ')

Zhrf5= Zhrf5:gsub('ش','شِ')

Zhrf5= Zhrf5:gsub('س','سً')

Zhrf5= Zhrf5:gsub('ي','يْ')

Zhrf5= Zhrf5:gsub('ب','بّ')

Zhrf5= Zhrf5:gsub('ل','لَ')

Zhrf5= Zhrf5:gsub('ا','أُ')

Zhrf5= Zhrf5:gsub('ت','تٌ')

Zhrf5= Zhrf5:gsub('ن','نً')

Zhrf5= Zhrf5:gsub('م','مِ')

Zhrf5= Zhrf5:gsub('ك','ڳّ')

Zhrf5= Zhrf5:gsub('ط','طٌ')

Zhrf5= Zhrf5:gsub('ئ','ئ')

Zhrf5= Zhrf5:gsub('ء','ء')

Zhrf5= Zhrf5:gsub('ؤ','ؤ')

Zhrf5= Zhrf5:gsub('ر','رٌ')

Zhrf5= Zhrf5:gsub('لا','لٌأً')

Zhrf5= Zhrf5:gsub('ى','ى')

Zhrf5= Zhrf5:gsub('ة','ةَ')

Zhrf5= Zhrf5:gsub('و','وِ')

Zhrf5= Zhrf5:gsub('ز','زُ')

Zhrf5= Zhrf5:gsub('ظ','ظ')

Zhrf5= Zhrf5:gsub('q','q')

Zhrf5= Zhrf5:gsub('Q','Q')

Zhrf5= Zhrf5:gsub('w','ᴡ')

Zhrf5= Zhrf5:gsub('W','ᴡ')

Zhrf5= Zhrf5:gsub('e','ᴇ')

Zhrf5= Zhrf5:gsub('E','ᴇ')

Zhrf5= Zhrf5:gsub('r','ʀ')

Zhrf5= Zhrf5:gsub('R','ʀ')

Zhrf5= Zhrf5:gsub('t','ᴛ')

Zhrf5= Zhrf5:gsub('T','ᴛ')

Zhrf5= Zhrf5:gsub('y','y')

Zhrf5= Zhrf5:gsub('Y','Y')

Zhrf5= Zhrf5:gsub('u','ᴜ')

Zhrf5= Zhrf5:gsub('U','ᴜ')

Zhrf5= Zhrf5:gsub('i','ɪ')

Zhrf5= Zhrf5:gsub('I','ɪ')

Zhrf5= Zhrf5:gsub('o','ᴏ')

Zhrf5= Zhrf5:gsub('O','ᴏ')

Zhrf5= Zhrf5:gsub('p','ᴩ')

Zhrf5= Zhrf5:gsub('P','ᴩ')

Zhrf5= Zhrf5:gsub('a','ᴀ')

Zhrf5= Zhrf5:gsub('A','ᴀ')

Zhrf5= Zhrf5:gsub('s','ꜱ')

Zhrf5= Zhrf5:gsub('S','ꜱ')

Zhrf5= Zhrf5:gsub('d','ᴅ')

Zhrf5= Zhrf5:gsub('D','ᴅ')

Zhrf5= Zhrf5:gsub('f','ꜰ')

Zhrf5= Zhrf5:gsub('F','ꜰ')

Zhrf5= Zhrf5:gsub('g','ɢ')

Zhrf5= Zhrf5:gsub('G','ɢ')

Zhrf5= Zhrf5:gsub('h','ʜ')

Zhrf5= Zhrf5:gsub('H','ʜ')

Zhrf5= Zhrf5:gsub('j','ᴊ')

Zhrf5= Zhrf5:gsub('J','ᴊ')

Zhrf5= Zhrf5:gsub('L','ʟ')

Zhrf5= Zhrf5:gsub('l','ʟ')

Zhrf5= Zhrf5:gsub('z','ᴢ')

Zhrf5= Zhrf5:gsub('Z','ᴢ')

Zhrf5= Zhrf5:gsub('x','x')

Zhrf5= Zhrf5:gsub('X','x')

Zhrf5= Zhrf5:gsub('c','ᴄ')

Zhrf5= Zhrf5:gsub('C','ᴄ')

Zhrf5= Zhrf5:gsub('v','ᴠ')

Zhrf5= Zhrf5:gsub('V','ᴠ')

Zhrf5= Zhrf5:gsub('b','ʙ')

Zhrf5= Zhrf5:gsub('B','ʙ')

Zhrf5= Zhrf5:gsub('n','ɴ')

Zhrf5= Zhrf5:gsub('N','ɴ')

Zhrf5= Zhrf5:gsub('m','ᴍ')

Zhrf5= Zhrf5:gsub('M','ᴍ')

local Zhrf6= Text:gsub('ض','ﺿ̭͠')

Zhrf6= Zhrf6:gsub('ص','ﺻ͡')

Zhrf6= Zhrf6:gsub('ث','ﺜ̲')

Zhrf6= Zhrf6:gsub('ق','ﭰ')

Zhrf6= Zhrf6:gsub('ف','ﻓ̲')

Zhrf6= Zhrf6:gsub('غ','ﻏ̲')

Zhrf6= Zhrf6:gsub('ع','ﻌ̲')

Zhrf6= Zhrf6:gsub('ه','ﮬ̲̌')

Zhrf6= Zhrf6:gsub('خ','خٌ')

Zhrf6= Zhrf6:gsub('ح','ﺣ̅')

Zhrf6= Zhrf6:gsub('ج','جُ')

Zhrf6= Zhrf6:gsub('د','ډ̝')

Zhrf6= Zhrf6:gsub('ذ','ذً')

Zhrf6= Zhrf6:gsub('ش','ﺷ̲')

Zhrf6= Zhrf6:gsub('س','ﺳ̉')

Zhrf6= Zhrf6:gsub('ي','ﯾ̃̐')

Zhrf6= Zhrf6:gsub('ب','ﺑ̲')

Zhrf6= Zhrf6:gsub('ل','ا̄ﻟ')

Zhrf6= Zhrf6:gsub('ا','ﺈ̃')

Zhrf6= Zhrf6:gsub('ت','ټُ')

Zhrf6= Zhrf6:gsub('ن','ﻧ̲')

Zhrf6= Zhrf6:gsub('م','ﻣ̲̉')

Zhrf6= Zhrf6:gsub('ك','گ')

Zhrf6= Zhrf6:gsub('ط','ﻁ̲')

Zhrf6= Zhrf6:gsub('ئ',' ْٰئ')

Zhrf6= Zhrf6:gsub('ء','ء')

Zhrf6= Zhrf6:gsub('ؤ','ؤ')

Zhrf6= Zhrf6:gsub('ر','ہڕ')

Zhrf6= Zhrf6:gsub('لا','ﻟ̲ﺂ̲')

Zhrf6= Zhrf6:gsub('ى','ى')

Zhrf6= Zhrf6:gsub('ة','ة')

Zhrf6= Zhrf6:gsub('و','ۇۈۉ')

Zhrf6= Zhrf6:gsub('ز','زُ')

Zhrf6= Zhrf6:gsub('ظ','ﻇ̲')

Zhrf6= Zhrf6:gsub('q','𝘲')

Zhrf6= Zhrf6:gsub('Q','𝘘')

Zhrf6= Zhrf6:gsub('w','𝘸')

Zhrf6= Zhrf6:gsub('W','𝘞')

Zhrf6= Zhrf6:gsub('e','𝘦')

Zhrf6= Zhrf6:gsub('E','𝘌')

Zhrf6= Zhrf6:gsub('r','𝘳')

Zhrf6= Zhrf6:gsub('R','𝘙')

Zhrf6= Zhrf6:gsub('t','𝘵')

Zhrf6= Zhrf6:gsub('T','𝘛')

Zhrf6= Zhrf6:gsub('y','𝘺')

Zhrf6= Zhrf6:gsub('Y','𝘠')

Zhrf6= Zhrf6:gsub('u','𝘶')

Zhrf6= Zhrf6:gsub('U','𝘜')

Zhrf6= Zhrf6:gsub('i','𝘪')

Zhrf6= Zhrf6:gsub('I','𝘐')

Zhrf6= Zhrf6:gsub('o','𝘰')

Zhrf6= Zhrf6:gsub('O','𝘖')

Zhrf6= Zhrf6:gsub('p','𝘱')

Zhrf6= Zhrf6:gsub('P','𝘗')

Zhrf6= Zhrf6:gsub('a','𝘢')

Zhrf6= Zhrf6:gsub('A','𝘈')

Zhrf6= Zhrf6:gsub('s','𝘴')

Zhrf6= Zhrf6:gsub('S','𝘚')

Zhrf6= Zhrf6:gsub('d','𝘥')

Zhrf6= Zhrf6:gsub('D','𝘋')

Zhrf6= Zhrf6:gsub('f','𝘧')

Zhrf6= Zhrf6:gsub('F','𝘍')

Zhrf6= Zhrf6:gsub('g','𝘨')

Zhrf6= Zhrf6:gsub('G','𝘎')

Zhrf6= Zhrf6:gsub('h','𝘩')

Zhrf6= Zhrf6:gsub('H','𝘏')

Zhrf6= Zhrf6:gsub('j','𝘫')

Zhrf6= Zhrf6:gsub('J','𝘑')

Zhrf6= Zhrf6:gsub('L','𝘓')

Zhrf6= Zhrf6:gsub('l','𝘭')

Zhrf6= Zhrf6:gsub('z','𝘻')

Zhrf6= Zhrf6:gsub('Z','𝘡')

Zhrf6= Zhrf6:gsub('x','𝘹')

Zhrf6= Zhrf6:gsub('X','𝘟')

Zhrf6= Zhrf6:gsub('c','𝘤')

Zhrf6= Zhrf6:gsub('C','𝘊')

Zhrf6= Zhrf6:gsub('v','𝘷')

Zhrf6= Zhrf6:gsub('V','𝘝')

Zhrf6= Zhrf6:gsub('b','𝘣')

Zhrf6= Zhrf6:gsub('B','𝘉')

Zhrf6= Zhrf6:gsub('n','𝘯')

Zhrf6= Zhrf6:gsub('N','𝘕')

Zhrf6= Zhrf6:gsub('m','𝘮')

Zhrf6= Zhrf6:gsub('M','𝘔')

local Zhrf7= Text:gsub('ض','ﺿ')

Zhrf7= Zhrf7:gsub('ص','ﺻ')

Zhrf7= Zhrf7:gsub('ث','ﭥ')

Zhrf7= Zhrf7:gsub('ق','ﻗ̮ـ̃')

Zhrf7= Zhrf7:gsub('ف','ﭬ')

Zhrf7= Zhrf7:gsub('غ','ﻏ̣̐')

Zhrf7= Zhrf7:gsub('ع','ﻋ')

Zhrf7= Zhrf7:gsub('ه','ھَہّ')

Zhrf7= Zhrf7:gsub('خ','ﺧ')

Zhrf7= Zhrf7:gsub('ح','פ')

Zhrf7= Zhrf7:gsub('ج','ﭴ')

Zhrf7= Zhrf7:gsub('د','ﮃ')

Zhrf7= Zhrf7:gsub('ذ','ذ')

Zhrf7= Zhrf7:gsub('ش','ﺷ')

Zhrf7= Zhrf7:gsub('س','ﺳ')

Zhrf7= Zhrf7:gsub('ي','ﯾ')

Zhrf7= Zhrf7:gsub('ب','ﺑ')

Zhrf7= Zhrf7:gsub('ل','ﻟ')

Zhrf7= Zhrf7:gsub('ا','ﺂ')

Zhrf7= Zhrf7:gsub('ت','ﭠ')

Zhrf7= Zhrf7:gsub('ن','ﻧ')

Zhrf7= Zhrf7:gsub('م','ﻣ̝̚')

Zhrf7= Zhrf7:gsub('ك','گـ')

Zhrf7= Zhrf7:gsub('ط','ﻁْ')

Zhrf7= Zhrf7:gsub('ئ','ٰئـ')

Zhrf7= Zhrf7:gsub('ء','ء')

Zhrf7= Zhrf7:gsub('ؤ','ﯗ')

Zhrf7= Zhrf7:gsub('ر','ړُ')

Zhrf7= Zhrf7:gsub('لا','ﻟآ')

Zhrf7= Zhrf7:gsub('ى','ـﮯ')

Zhrf7= Zhrf7:gsub('ة','ة')

Zhrf7= Zhrf7:gsub('و','ۆ')

Zhrf7= Zhrf7:gsub('ز','ژ')

Zhrf7= Zhrf7:gsub('ظ','ﻅ')

Zhrf7= Zhrf7:gsub('q','𝓺')

Zhrf7= Zhrf7:gsub('Q','𝓠')

Zhrf7= Zhrf7:gsub('w','𝔀')

Zhrf7= Zhrf7:gsub('W','𝓦')

Zhrf7= Zhrf7:gsub('e','𝓮')

Zhrf7= Zhrf7:gsub('E','𝓔')

Zhrf7= Zhrf7:gsub('r','𝓻')

Zhrf7= Zhrf7:gsub('R','𝓡')

Zhrf7= Zhrf7:gsub('t','𝓽')

Zhrf7= Zhrf7:gsub('T','𝓣')

Zhrf7= Zhrf7:gsub('y','𝔂')

Zhrf7= Zhrf7:gsub('Y','𝓨')

Zhrf7= Zhrf7:gsub('u','𝓾')

Zhrf7= Zhrf7:gsub('U','𝓤')

Zhrf7= Zhrf7:gsub('i','𝓲')

Zhrf7= Zhrf7:gsub('I','𝓘')

Zhrf7= Zhrf7:gsub('o','𝓸')

Zhrf7= Zhrf7:gsub('O','𝓞')

Zhrf7= Zhrf7:gsub('p','𝓹')

Zhrf7= Zhrf7:gsub('P','𝓟')

Zhrf7= Zhrf7:gsub('a','𝓪')

Zhrf7= Zhrf7:gsub('A','𝓐')

Zhrf7= Zhrf7:gsub('s','𝓼')

Zhrf7= Zhrf7:gsub('S','𝓢')

Zhrf7= Zhrf7:gsub('d','𝓭')

Zhrf7= Zhrf7:gsub('D','𝓓')

Zhrf7= Zhrf7:gsub('f','𝓯')

Zhrf7= Zhrf7:gsub('F','𝓕')

Zhrf7= Zhrf7:gsub('g','𝓰')

Zhrf7= Zhrf7:gsub('G','𝓖')

Zhrf7= Zhrf7:gsub('h','𝓱')

Zhrf7= Zhrf7:gsub('H','𝓗')

Zhrf7= Zhrf7:gsub('j','𝓳')

Zhrf7= Zhrf7:gsub('J','𝓙')

Zhrf7= Zhrf7:gsub('k','𝓴')

Zhrf7= Zhrf7:gsub('K','𝓚')

Zhrf7= Zhrf7:gsub('L','𝓛')

Zhrf7= Zhrf7:gsub('l','𝓵')

Zhrf7= Zhrf7:gsub('z','𝔃')

Zhrf7= Zhrf7:gsub('Z','𝓩')

Zhrf7= Zhrf7:gsub('x','𝔁')

Zhrf7= Zhrf7:gsub('X','𝓧')

Zhrf7= Zhrf7:gsub('c','𝓬')

Zhrf7= Zhrf7:gsub('C','𝓒')

Zhrf7= Zhrf7:gsub('v','𝓿')

Zhrf7= Zhrf7:gsub('V','𝓥')

Zhrf7= Zhrf7:gsub('b','𝓫')

Zhrf7= Zhrf7:gsub('B','𝓑')

Zhrf7= Zhrf7:gsub('n','𝓷')

Zhrf7= Zhrf7:gsub('N','𝓝')

Zhrf7= Zhrf7:gsub('m','𝓶')

Zhrf7= Zhrf7:gsub('M','𝓜')

local Zhrf8= Text:gsub('ض','ض');

Zhrf8= Zhrf8:gsub('ص','صہٰ')

Zhrf8= Zhrf8:gsub('ث','ثہٰـ')

Zhrf8= Zhrf8:gsub('ق','قہٰ')

Zhrf8= Zhrf8:gsub('ف','فہٰ')

Zhrf8= Zhrf8:gsub('غ','غـْ')

Zhrf8= Zhrf8:gsub('ع','ع')

Zhrf8= Zhrf8:gsub('ه','هٰہٰٖ')

Zhrf8= Zhrf8:gsub('خ','خخَـ')

Zhrf8= Zhrf8:gsub('ح','حہٰ')

Zhrf8= Zhrf8:gsub('ج','ججہٰ')

Zhrf8= Zhrf8:gsub('د','دَ')

Zhrf8= Zhrf8:gsub('ذ','ذّ')

Zhrf8= Zhrf8:gsub('ش','ششہٰ')

Zhrf8= Zhrf8:gsub('س','سہٰ')

Zhrf8= Zhrf8:gsub('ي','يٰ')

Zhrf8= Zhrf8:gsub('ب','بٰٰ')

Zhrf8= Zhrf8:gsub('ل','لہٰ')

Zhrf8= Zhrf8:gsub('ا','آ')

Zhrf8= Zhrf8:gsub('ت','تہٰ')

Zhrf8= Zhrf8:gsub('ن','نہٰ')

Zhrf8= Zhrf8:gsub('م','مہٰ')

Zhrf8= Zhrf8:gsub('ك','ككہٰ')

Zhrf8= Zhrf8:gsub('ط','طہٰ')

Zhrf8= Zhrf8:gsub('ئ',' ْئٰ')

Zhrf8= Zhrf8:gsub('ء','ء')

Zhrf8= Zhrf8:gsub('ؤ','ؤؤَ')

Zhrf8= Zhrf8:gsub('ر','رَ')

Zhrf8= Zhrf8:gsub('لا','لہٰا')

Zhrf8= Zhrf8:gsub('ى','ىہٰ')

Zhrf8= Zhrf8:gsub('ة','ة')

Zhrf8= Zhrf8:gsub('و','ہٰو')

Zhrf8= Zhrf8:gsub('ز','ز')

Zhrf8= Zhrf8:gsub('ظ','ظہٰ')

Zhrf8= Zhrf8:gsub('q','զ')

Zhrf8= Zhrf8:gsub('Q','զ')

Zhrf8= Zhrf8:gsub('w','ա')

Zhrf8= Zhrf8:gsub('W','ա')

Zhrf8= Zhrf8:gsub('e','ɛ')

Zhrf8= Zhrf8:gsub('E','ɛ')

Zhrf8= Zhrf8:gsub('r','ʀ')

Zhrf8= Zhrf8:gsub('R','ʀ')

Zhrf8= Zhrf8:gsub('t','ȶ')

Zhrf8= Zhrf8:gsub('T','ȶ')

Zhrf8= Zhrf8:gsub('y','ʏ')

Zhrf8= Zhrf8:gsub('Y','ʏ')

Zhrf8= Zhrf8:gsub('u','ʊ')

Zhrf8= Zhrf8:gsub('U','ʊ')

Zhrf8= Zhrf8:gsub('i','ɨ')

Zhrf8= Zhrf8:gsub('I','ɨ')

Zhrf8= Zhrf8:gsub('o','օ')

Zhrf8= Zhrf8:gsub('O','օ')

Zhrf8= Zhrf8:gsub('p','ք')

Zhrf8= Zhrf8:gsub('P','ք')

Zhrf8= Zhrf8:gsub('a','ǟ')

Zhrf8= Zhrf8:gsub('A','ǟ')

Zhrf8= Zhrf8:gsub('s','ֆ')

Zhrf8= Zhrf8:gsub('S','ֆ')

Zhrf8= Zhrf8:gsub('d','ɖ')

Zhrf8= Zhrf8:gsub('D','ɖ')

Zhrf8= Zhrf8:gsub('f','ʄ')

Zhrf8= Zhrf8:gsub('F','ʄ')

Zhrf8= Zhrf8:gsub('g','ɢ')

Zhrf8= Zhrf8:gsub('G','ɢ')

Zhrf8= Zhrf8:gsub('h','ɦ')

Zhrf8= Zhrf8:gsub('H','ɦ')

Zhrf8= Zhrf8:gsub('j','ʝ')

Zhrf8= Zhrf8:gsub('J','ʝ')

Zhrf8= Zhrf8:gsub('k','ӄ')

Zhrf8= Zhrf8:gsub('K','ӄ')

Zhrf8= Zhrf8:gsub('L','ʟ')

Zhrf8= Zhrf8:gsub('l','ʟ')

Zhrf8= Zhrf8:gsub('z','ʐ')

Zhrf8= Zhrf8:gsub('Z','ʐ')

Zhrf8= Zhrf8:gsub('x','Ӽ')

Zhrf8= Zhrf8:gsub('X','Ӽ')

Zhrf8= Zhrf8:gsub('c','ƈ')

Zhrf8= Zhrf8:gsub('C','ƈ')

Zhrf8= Zhrf8:gsub('v','ʋ')

Zhrf8= Zhrf8:gsub('V','ʋ')

Zhrf8= Zhrf8:gsub('b','ɮ')

Zhrf8= Zhrf8:gsub('B','ɮ')

Zhrf8= Zhrf8:gsub('n','ռ')

Zhrf8= Zhrf8:gsub('N','ռ')

Zhrf8= Zhrf8:gsub('m','ʍ')

Zhrf8= Zhrf8:gsub('M','ʍ')

local Zhrf9= Text:gsub('ض','ض')

Zhrf9= Zhrf9:gsub('ص','ص')

Zhrf9= Zhrf9:gsub('ث','ث')

Zhrf9= Zhrf9:gsub('ق','قٌ')

Zhrf9= Zhrf9:gsub('ف','فُ')

Zhrf9= Zhrf9:gsub('غ','غ')

Zhrf9= Zhrf9:gsub('ع','عٍ')

Zhrf9= Zhrf9:gsub('ه','هـ')

Zhrf9= Zhrf9:gsub('خ','خـ')

Zhrf9= Zhrf9:gsub('ح','حٍ')

Zhrf9= Zhrf9:gsub('ج','جٍ')

Zhrf9= Zhrf9:gsub('د','دِ')

Zhrf9= Zhrf9:gsub('ذ','ذَ')

Zhrf9= Zhrf9:gsub('ش','شُ')

Zhrf9= Zhrf9:gsub('س','س')

Zhrf9= Zhrf9:gsub('ي','ي')

Zhrf9= Zhrf9:gsub('ب','بَ')

Zhrf9= Zhrf9:gsub('ل','لُِ')

Zhrf9= Zhrf9:gsub('ا','آ')

Zhrf9= Zhrf9:gsub('ت','ت')

Zhrf9= Zhrf9:gsub('ن','ن')

Zhrf9= Zhrf9:gsub('م','م')

Zhrf9= Zhrf9:gsub('ك','ڪ')

Zhrf9= Zhrf9:gsub('ط','طُ')

Zhrf9= Zhrf9:gsub('ئ','ئ ْٰ')

Zhrf9= Zhrf9:gsub('ء','ء')

Zhrf9= Zhrf9:gsub('ؤ','ؤ')

Zhrf9= Zhrf9:gsub('ر','ر')

Zhrf9= Zhrf9:gsub('لا','لُِآ')

Zhrf9= Zhrf9:gsub('ى','ىْ')

Zhrf9= Zhrf9:gsub('ة','ة')

Zhrf9= Zhrf9:gsub('و','وو')

Zhrf9= Zhrf9:gsub('ز','ز')

Zhrf9= Zhrf9:gsub('ظ','ظهُ')

Zhrf9= Zhrf9:gsub('q','𝗾')

Zhrf9= Zhrf9:gsub('Q','𝗤')

Zhrf9= Zhrf9:gsub('w','𝘄')

Zhrf9= Zhrf9:gsub('W','𝗪')

Zhrf9= Zhrf9:gsub('e','𝗲')

Zhrf9= Zhrf9:gsub('E','𝗘')

Zhrf9= Zhrf9:gsub('r','𝗿')

Zhrf9= Zhrf9:gsub('R','𝗥')

Zhrf9= Zhrf9:gsub('t','𝘁')

Zhrf9= Zhrf9:gsub('T','𝗧')

Zhrf9= Zhrf9:gsub('y','𝘆')

Zhrf9= Zhrf9:gsub('Y','𝗬')

Zhrf9= Zhrf9:gsub('u','𝘂')

Zhrf9= Zhrf9:gsub('U','𝗨')

Zhrf9= Zhrf9:gsub('i','𝗶')

Zhrf9= Zhrf9:gsub('I','𝗜')

Zhrf9= Zhrf9:gsub('o','𝗼')

Zhrf9= Zhrf9:gsub('O','𝗢')

Zhrf9= Zhrf9:gsub('p','𝗽')

Zhrf9= Zhrf9:gsub('P','𝗣')

Zhrf9= Zhrf9:gsub('a','𝗮')

Zhrf9= Zhrf9:gsub('A','𝗔')

Zhrf9= Zhrf9:gsub('s','𝘀')

Zhrf9= Zhrf9:gsub('S','𝗦')

Zhrf9= Zhrf9:gsub('d','𝗱')

Zhrf9= Zhrf9:gsub('D','𝗗')

Zhrf9= Zhrf9:gsub('f','𝗳')

Zhrf9= Zhrf9:gsub('F','𝗙')

Zhrf9= Zhrf9:gsub('g','𝗴')

Zhrf9= Zhrf9:gsub('G','𝗚')

Zhrf9= Zhrf9:gsub('h','𝗵')

Zhrf9= Zhrf9:gsub('H','𝗛')

Zhrf9= Zhrf9:gsub('j','𝗷')

Zhrf9= Zhrf9:gsub('J','𝗝')

Zhrf9= Zhrf9:gsub('k','𝗸')

Zhrf9= Zhrf9:gsub('K','𝗞')

Zhrf9= Zhrf9:gsub('L','𝗟')

Zhrf9= Zhrf9:gsub('l','𝗹')

Zhrf9= Zhrf9:gsub('z','𝘇')

Zhrf9= Zhrf9:gsub('Z','𝗭')

Zhrf9= Zhrf9:gsub('x','𝘅')

Zhrf9= Zhrf9:gsub('X','𝗫')

Zhrf9= Zhrf9:gsub('c','𝗰')

Zhrf9= Zhrf9:gsub('C','𝗖')

Zhrf9= Zhrf9:gsub('v','𝘃')

Zhrf9= Zhrf9:gsub('V','𝗩')

Zhrf9= Zhrf9:gsub('b','𝗯')

Zhrf9= Zhrf9:gsub('B','𝗕')

Zhrf9= Zhrf9:gsub('n','𝗻')

Zhrf9= Zhrf9:gsub('N','𝗡')

Zhrf9= Zhrf9:gsub('m','𝗺')

Zhrf9= Zhrf9:gsub('M','𝗠')

local Text_Zhrfa = "1- `"..Zhrf..EmojeS[math.random(#EmojeS)]

.."`\n2- `"..Zhrf2..EmojeS[math.random(#EmojeS)]

.."`\n3- `"..Zhrf3..EmojeS[math.random(#EmojeS)]

.."`\n4- `"..Zhrf4..EmojeS[math.random(#EmojeS)]

.."`\n5- `"..Zhrf5..EmojeS[math.random(#EmojeS)]

.."`\n6- `"..Zhrf6..EmojeS[math.random(#EmojeS)]

.."`\n7- `"..Zhrf7..EmojeS[math.random(#EmojeS)]

.."`\n8- `"..Zhrf8..Emoje[math.random(#Emoje)]

.."`\n9- `"..Zhrf9..Emoje[math.random(#Emoje)]

Text_Zhrfa = Text_Zhrfa.."`\n\n📑| اضغط ع الاسم ليتم النسخ \n✓"

sendMsg(msg.chat_id_,msg.id_,Text_Zhrfa)

return false

end

end

return {

Rambo = {

"^(زخرفه)$"

 },

 iRambo = Zhrfa,

 dRambo = TextRes,

 }
