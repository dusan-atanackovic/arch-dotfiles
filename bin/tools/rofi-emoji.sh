#!/usr/bin/env bash
# Modification of Luke Smiths emoji script

xclip -h >/dev/null || exit  # Exit if xclip does not exist

# Code moved to a function which is called after the long string assignment
main () {
    chosen=$(echo "$EMOJI" | rofi -dmenu -i -l 20 -fn Monospace-18)

    [ "$chosen" != "" ] || exit                 # Exit if nothing is selected

    c=$(echo "$chosen" | sed "s/ .*//")
    echo "$c" | tr -d '\n' | xclip -selection clipboard
    notify-send "'$c' copied to clipboard." &

    s=$(echo "$chosen" | sed "s/.*; //" | awk '{print $1}')
    echo "$s" | tr -d '\n' | xclip
    notify-send "'$s' copied to primary." &
}

EMOJI="😀 grinning face; U+1F600
😃 grinning face with big eyes; U+1F603
😄 grinning face with smiling eyes; U+1F604
😁 beaming face with smiling eyes; U+1F601
😆 grinning squinting face; U+1F606
😅 grinning face with sweat; U+1F605
🤣 rolling on the floor laughing; U+1F923
😂 face with tears of joy; U+1F602
🙂 slightly smiling face; U+1F642
🙃 upside-down face; U+1F643
😉 winking face; U+1F609
😊 smiling face with smiling eyes; U+1F60A
😇 smiling face with halo; U+1F607
🥰 smiling face with 3 hearts; U+1F970
😍 smiling face with heart-eyes; U+1F60D
🤩 star-struck; U+1F929
😘 face blowing a kiss; U+1F618
😗 kissing face; U+1F617
☺ smiling face; U+263A
😚 kissing face with closed eyes; U+1F61A
😙 kissing face with smiling eyes; U+1F619
😋 face savoring food; U+1F60B
😛 face with tongue; U+1F61B
😜 winking face with tongue; U+1F61C
🤪 zany face; U+1F92A
😝 squinting face with tongue; U+1F61D
🤑 money-mouth face; U+1F911
🤗 hugging face; U+1F917
🤭 face with hand over mouth; U+1F92D
🤫 shushing face; U+1F92B
🤔 thinking face; U+1F914
🤐 zipper-mouth face; U+1F910
🤨 face with raised eyebrow; U+1F928
😐 neutral face; U+1F610
😑 expressionless face; U+1F611
😶 face without mouth; U+1F636
😏 smirking face; U+1F60F
😒 unamused face; U+1F612
🙄 face with rolling eyes; U+1F644
😬 grimacing face; U+1F62C
🤥 lying face; U+1F925
😌 relieved face; U+1F60C
😔 pensive face; U+1F614
😪 sleepy face; U+1F62A
🤤 drooling face; U+1F924
😴 sleeping face; U+1F634
😷 face with medical mask; U+1F637
🤒 face with thermometer; U+1F912
🤕 face with head-bandage; U+1F915
🤢 nauseated face; U+1F922
🤮 face vomiting; U+1F92E
🤧 sneezing face; U+1F927
🥵 hot face; U+1F975
🥶 cold face; U+1F976
🥴 woozy face; U+1F974
😵 dizzy face; U+1F635
🤯 exploding head; U+1F92F
🤠 cowboy hat face; U+1F920
🥳 partying face; U+1F973
😎 smiling face with sunglasses; U+1F60E
🤓 nerd face; U+1F913
🧐 face with monocle; U+1F9D0
😕 confused face; U+1F615
😟 worried face; U+1F61F
🙁 slightly frowning face; U+1F641
☹ frowning face; U+2639
😮 face with open mouth; U+1F62E
😯 hushed face; U+1F62F
😲 astonished face; U+1F632
😳 flushed face; U+1F633
🥺 pleading face; U+1F97A
😦 frowning face with open mouth; U+1F626
😧 anguished face; U+1F627
😨 fearful face; U+1F628
😰 anxious face with sweat; U+1F630
😥 sad but relieved face; U+1F625
😢 crying face; U+1F622
😭 loudly crying face; U+1F62D
😱 face screaming in fear; U+1F631
😖 confounded face; U+1F616
😣 persevering face; U+1F623
😞 disappointed face; U+1F61E
😓 downcast face with sweat; U+1F613
😩 weary face; U+1F629
😫 tired face; U+1F62B
😤 face with steam from nose; U+1F624
😡 pouting face; U+1F621
😠 angry face; U+1F620
🤬 face with symbols on mouth; U+1F92C
😈 smiling face with horns; U+1F608
👿 angry face with horns; U+1F47F
💀 skull; U+1F480
☠ skull and crossbones; U+2620
💩 pile of poo; U+1F4A9
🤡 clown face; U+1F921
👹 ogre; U+1F479
👺 goblin; U+1F47A
👻 ghost; U+1F47B
👽 alien; U+1F47D
👾 alien monster; U+1F47E
🤖 robot face; U+1F916
😺 grinning cat face; U+1F63A
😸 grinning cat face with smiling eyes; U+1F638
😹 cat face with tears of joy; U+1F639
😻 smiling cat face with heart-eyes; U+1F63B
😼 cat face with wry smile; U+1F63C
😽 kissing cat face; U+1F63D
🙀 weary cat face; U+1F640
😿 crying cat face; U+1F63F
😾 pouting cat face; U+1F63E
🙈 see-no-evil monkey; U+1F648
🙉 hear-no-evil monkey; U+1F649
🙊 speak-no-evil monkey; U+1F64A
💋 kiss mark; U+1F48B
💌 love letter; U+1F48C
💘 heart with arrow; U+1F498
💝 heart with ribbon; U+1F49D
💖 sparkling heart; U+1F496
💗 growing heart; U+1F497
💓 beating heart; U+1F493
💞 revolving hearts; U+1F49E
💕 two hearts; U+1F495
💟 heart decoration; U+1F49F
❣ heavy heart exclamation; U+2763
💔 broken heart; U+1F494
❤ red heart; U+2764
🧡 orange heart; U+1F9E1
💛 yellow heart; U+1F49B
💚 green heart; U+1F49A
💙 blue heart; U+1F499
💜 purple heart; U+1F49C
🖤 black heart; U+1F5A4
💯 hundred points; U+1F4AF
💢 anger symbol; U+1F4A2
💥 collision; U+1F4A5
💫 dizzy; U+1F4AB
💦 sweat droplets; U+1F4A6
💨 dashing away; U+1F4A8
🕳 hole; U+1F573
💣 bomb; U+1F4A3
💬 speech balloon; U+1F4AC
👁️‍🗨️ eye in speech bubble; U+1F441 U+FE0F U+200D U+1F5E8 U+FE0F
🗨 left speech bubble; U+1F5E8
🗯 right anger bubble; U+1F5EF
💭 thought balloon; U+1F4AD
💤 zzz; U+1F4A4
👋 waving hand; U+1F44B
🤚 raised back of hand; U+1F91A
🖐 hand with fingers splayed; U+1F590
✋ raised hand; U+270B
🖖 vulcan salute; U+1F596
👌 OK hand; U+1F44C
✌ victory hand; U+270C
🤞 crossed fingers; U+1F91E
🤟 love-you gesture; U+1F91F
🤘 sign of the horns; U+1F918
🤙 call me hand; U+1F919
👈 backhand index pointing left; U+1F448
👉 backhand index pointing right; U+1F449
👆 backhand index pointing up; U+1F446
🖕 middle finger; U+1F595
👇 backhand index pointing down; U+1F447
☝ index pointing up; U+261D
👍 thumbs up; U+1F44D
👎 thumbs down; U+1F44E
✊ raised fist; U+270A
👊 oncoming fist; U+1F44A
🤛 left-facing fist; U+1F91B
🤜 right-facing fist; U+1F91C
👏 clapping hands; U+1F44F
🙌 raising hands; U+1F64C
👐 open hands; U+1F450
🤲 palms up together; U+1F932
🤝 handshake; U+1F91D
🙏 folded hands; U+1F64F
✍ writing hand; U+270D
💅 nail polish; U+1F485
🤳 selfie; U+1F933
💪 flexed biceps; U+1F4AA
🦵 leg; U+1F9B5
🦶 foot; U+1F9B6
👂 ear; U+1F442
👃 nose; U+1F443
🧠 brain; U+1F9E0
🦷 tooth; U+1F9B7
🦴 bone; U+1F9B4
👀 eyes; U+1F440
👁 eye; U+1F441
👅 tongue; U+1F445
👄 mouth; U+1F444
👶 baby; U+1F476
🧒 child; U+1F9D2
👦 boy; U+1F466
👧 girl; U+1F467
🧑 person; U+1F9D1
👱 person: blond hair; U+1F471
👨 man; U+1F468
👱‍♂️ man: blond hair; U+1F471 U+200D U+2642 U+FE0F
👨‍🦰 man: red hair; U+1F468 U+200D U+1F9B0
👨‍🦱 man: curly hair; U+1F468 U+200D U+1F9B1
👨‍🦳 man: white hair; U+1F468 U+200D U+1F9B3
👨‍🦲 man: bald; U+1F468 U+200D U+1F9B2
🧔 man: beard; U+1F9D4
👩 woman; U+1F469
👱‍♀️ woman: blond hair; U+1F471 U+200D U+2640 U+FE0F
👩‍🦰 woman: red hair; U+1F469 U+200D U+1F9B0
👩‍🦱 woman: curly hair; U+1F469 U+200D U+1F9B1
👩‍🦳 woman: white hair; U+1F469 U+200D U+1F9B3
👩‍🦲 woman: bald; U+1F469 U+200D U+1F9B2
🧓 older person; U+1F9D3
👴 old man; U+1F474
👵 old woman; U+1F475
🙍 person frowning; U+1F64D
🙍‍♂️ man frowning; U+1F64D U+200D U+2642 U+FE0F
🙍‍♀️ woman frowning; U+1F64D U+200D U+2640 U+FE0F
🙎 person pouting; U+1F64E
🙎‍♂️ man pouting; U+1F64E U+200D U+2642 U+FE0F
🙎‍♀️ woman pouting; U+1F64E U+200D U+2640 U+FE0F
🙅 person gesturing NO; U+1F645
🙅‍♂️ man gesturing NO; U+1F645 U+200D U+2642 U+FE0F
🙅‍♀️ woman gesturing NO; U+1F645 U+200D U+2640 U+FE0F
🙆 person gesturing OK; U+1F646
🙆‍♂️ man gesturing OK; U+1F646 U+200D U+2642 U+FE0F
🙆‍♀️ woman gesturing OK; U+1F646 U+200D U+2640 U+FE0F
💁 person tipping hand; U+1F481
💁‍♂️ man tipping hand; U+1F481 U+200D U+2642 U+FE0F
💁‍♀️ woman tipping hand; U+1F481 U+200D U+2640 U+FE0F
🙋 person raising hand; U+1F64B
🙋‍♂️ man raising hand; U+1F64B U+200D U+2642 U+FE0F
🙋‍♀️ woman raising hand; U+1F64B U+200D U+2640 U+FE0F
🙇 person bowing; U+1F647
🙇‍♂️ man bowing; U+1F647 U+200D U+2642 U+FE0F
🙇‍♀️ woman bowing; U+1F647 U+200D U+2640 U+FE0F
🤦 person facepalming; U+1F926
🤦‍♂️ man facepalming; U+1F926 U+200D U+2642 U+FE0F
🤦‍♀️ woman facepalming; U+1F926 U+200D U+2640 U+FE0F
🤷 person shrugging; U+1F937
🤷‍♂️ man shrugging; U+1F937 U+200D U+2642 U+FE0F
🤷‍♀️ woman shrugging; U+1F937 U+200D U+2640 U+FE0F
👨‍⚕️ man health worker; U+1F468 U+200D U+2695 U+FE0F
👩‍⚕️ woman health worker; U+1F469 U+200D U+2695 U+FE0F
👨‍🎓 man student; U+1F468 U+200D U+1F393
👩‍🎓 woman student; U+1F469 U+200D U+1F393
👨‍🏫 man teacher; U+1F468 U+200D U+1F3EB
👩‍🏫 woman teacher; U+1F469 U+200D U+1F3EB
👨‍⚖️ man judge; U+1F468 U+200D U+2696 U+FE0F
👩‍⚖️ woman judge; U+1F469 U+200D U+2696 U+FE0F
👨‍🌾 man farmer; U+1F468 U+200D U+1F33E
👩‍🌾 woman farmer; U+1F469 U+200D U+1F33E
👨‍🍳 man cook; U+1F468 U+200D U+1F373
👩‍🍳 woman cook; U+1F469 U+200D U+1F373
👨‍🔧 man mechanic; U+1F468 U+200D U+1F527
👩‍🔧 woman mechanic; U+1F469 U+200D U+1F527
👨‍🏭 man factory worker; U+1F468 U+200D U+1F3ED
👩‍🏭 woman factory worker; U+1F469 U+200D U+1F3ED
👨‍💼 man office worker; U+1F468 U+200D U+1F4BC
👩‍💼 woman office worker; U+1F469 U+200D U+1F4BC
👨‍🔬 man scientist; U+1F468 U+200D U+1F52C
👩‍🔬 woman scientist; U+1F469 U+200D U+1F52C
👨‍💻 man technologist; U+1F468 U+200D U+1F4BB
👩‍💻 woman technologist; U+1F469 U+200D U+1F4BB
👨‍🎤 man singer; U+1F468 U+200D U+1F3A4
👩‍🎤 woman singer; U+1F469 U+200D U+1F3A4
👨‍🎨 man artist; U+1F468 U+200D U+1F3A8
👩‍🎨 woman artist; U+1F469 U+200D U+1F3A8
👨‍✈️ man pilot; U+1F468 U+200D U+2708 U+FE0F
👩‍✈️ woman pilot; U+1F469 U+200D U+2708 U+FE0F
👨‍🚀 man astronaut; U+1F468 U+200D U+1F680
👩‍🚀 woman astronaut; U+1F469 U+200D U+1F680
👨‍🚒 man firefighter; U+1F468 U+200D U+1F692
👩‍🚒 woman firefighter; U+1F469 U+200D U+1F692
👮 police officer; U+1F46E
👮‍♂️ man police officer; U+1F46E U+200D U+2642 U+FE0F
👮‍♀️ woman police officer; U+1F46E U+200D U+2640 U+FE0F
🕵 detective; U+1F575
🕵️‍♂️ man detective; U+1F575 U+FE0F U+200D U+2642 U+FE0F
🕵️‍♀️ woman detective; U+1F575 U+FE0F U+200D U+2640 U+FE0F
💂 guard; U+1F482
💂‍♂️ man guard; U+1F482 U+200D U+2642 U+FE0F
💂‍♀️ woman guard; U+1F482 U+200D U+2640 U+FE0F
👷 construction worker; U+1F477
👷‍♂️ man construction worker; U+1F477 U+200D U+2642 U+FE0F
👷‍♀️ woman construction worker; U+1F477 U+200D U+2640 U+FE0F
🤴 prince; U+1F934
👸 princess; U+1F478
👳 person wearing turban; U+1F473
👳‍♂️ man wearing turban; U+1F473 U+200D U+2642 U+FE0F
👳‍♀️ woman wearing turban; U+1F473 U+200D U+2640 U+FE0F
👲 man with Chinese cap; U+1F472
🧕 woman with headscarf; U+1F9D5
🤵 man in tuxedo; U+1F935
👰 bride with veil; U+1F470
🤰 pregnant woman; U+1F930
🤱 breast-feeding; U+1F931
👼 baby angel; U+1F47C
🎅 Santa Claus; U+1F385
🤶 Mrs. Claus; U+1F936
🦸 superhero; U+1F9B8
🦸‍♂️ man superhero; U+1F9B8 U+200D U+2642 U+FE0F
🦸‍♀️ woman superhero; U+1F9B8 U+200D U+2640 U+FE0F
🦹 supervillain; U+1F9B9
🦹‍♂️ man supervillain; U+1F9B9 U+200D U+2642 U+FE0F
🦹‍♀️ woman supervillain; U+1F9B9 U+200D U+2640 U+FE0F
🧙 mage; U+1F9D9
🧙‍♂️ man mage; U+1F9D9 U+200D U+2642 U+FE0F
🧙‍♀️ woman mage; U+1F9D9 U+200D U+2640 U+FE0F
🧚 fairy; U+1F9DA
🧚‍♂️ man fairy; U+1F9DA U+200D U+2642 U+FE0F
🧚‍♀️ woman fairy; U+1F9DA U+200D U+2640 U+FE0F
🧛 vampire; U+1F9DB
🧛‍♂️ man vampire; U+1F9DB U+200D U+2642 U+FE0F
🧛‍♀️ woman vampire; U+1F9DB U+200D U+2640 U+FE0F
🧜 merperson; U+1F9DC
🧜‍♂️ merman; U+1F9DC U+200D U+2642 U+FE0F
🧜‍♀️ mermaid; U+1F9DC U+200D U+2640 U+FE0F
🧝 elf; U+1F9DD
🧝‍♂️ man elf; U+1F9DD U+200D U+2642 U+FE0F
🧝‍♀️ woman elf; U+1F9DD U+200D U+2640 U+FE0F
🧞 genie; U+1F9DE
🧞‍♂️ man genie; U+1F9DE U+200D U+2642 U+FE0F
🧞‍♀️ woman genie; U+1F9DE U+200D U+2640 U+FE0F
🧟 zombie; U+1F9DF
🧟‍♂️ man zombie; U+1F9DF U+200D U+2642 U+FE0F
🧟‍♀️ woman zombie; U+1F9DF U+200D U+2640 U+FE0F
💆 person getting massage; U+1F486
💆‍♂️ man getting massage; U+1F486 U+200D U+2642 U+FE0F
💆‍♀️ woman getting massage; U+1F486 U+200D U+2640 U+FE0F
💇 person getting haircut; U+1F487
💇‍♂️ man getting haircut; U+1F487 U+200D U+2642 U+FE0F
💇‍♀️ woman getting haircut; U+1F487 U+200D U+2640 U+FE0F
🚶 person walking; U+1F6B6
🚶‍♂️ man walking; U+1F6B6 U+200D U+2642 U+FE0F
🚶‍♀️ woman walking; U+1F6B6 U+200D U+2640 U+FE0F
🏃 person running; U+1F3C3
🏃‍♂️ man running; U+1F3C3 U+200D U+2642 U+FE0F
🏃‍♀️ woman running; U+1F3C3 U+200D U+2640 U+FE0F
💃 woman dancing; U+1F483
🕺 man dancing; U+1F57A
🕴 man in suit levitating; U+1F574
👯 people with bunny ears; U+1F46F
👯‍♂️ men with bunny ears; U+1F46F U+200D U+2642 U+FE0F
👯‍♀️ women with bunny ears; U+1F46F U+200D U+2640 U+FE0F
🧖 person in steamy room; U+1F9D6
🧖‍♂️ man in steamy room; U+1F9D6 U+200D U+2642 U+FE0F
🧖‍♀️ woman in steamy room; U+1F9D6 U+200D U+2640 U+FE0F
🧗 person climbing; U+1F9D7
🧗‍♂️ man climbing; U+1F9D7 U+200D U+2642 U+FE0F
🧗‍♀️ woman climbing; U+1F9D7 U+200D U+2640 U+FE0F
🤺 person fencing; U+1F93A
🏇 horse racing; U+1F3C7
⛷ skier; U+26F7
🏂 snowboarder; U+1F3C2
🏌 person golfing; U+1F3CC
🏌️‍♂️ man golfing; U+1F3CC U+FE0F U+200D U+2642 U+FE0F
🏌️‍♀️ woman golfing; U+1F3CC U+FE0F U+200D U+2640 U+FE0F
🏄 person surfing; U+1F3C4
🏄‍♂️ man surfing; U+1F3C4 U+200D U+2642 U+FE0F
🏄‍♀️ woman surfing; U+1F3C4 U+200D U+2640 U+FE0F
🚣 person rowing boat; U+1F6A3
🚣‍♂️ man rowing boat; U+1F6A3 U+200D U+2642 U+FE0F
🚣‍♀️ woman rowing boat; U+1F6A3 U+200D U+2640 U+FE0F
🏊 person swimming; U+1F3CA
🏊‍♂️ man swimming; U+1F3CA U+200D U+2642 U+FE0F
🏊‍♀️ woman swimming; U+1F3CA U+200D U+2640 U+FE0F
⛹ person bouncing ball; U+26F9
⛹️‍♂️ man bouncing ball; U+26F9 U+FE0F U+200D U+2642 U+FE0F
⛹️‍♀️ woman bouncing ball; U+26F9 U+FE0F U+200D U+2640 U+FE0F
🏋 person lifting weights; U+1F3CB
🏋️‍♂️ man lifting weights; U+1F3CB U+FE0F U+200D U+2642 U+FE0F
🏋️‍♀️ woman lifting weights; U+1F3CB U+FE0F U+200D U+2640 U+FE0F
🚴 person biking; U+1F6B4
🚴‍♂️ man biking; U+1F6B4 U+200D U+2642 U+FE0F
🚴‍♀️ woman biking; U+1F6B4 U+200D U+2640 U+FE0F
🚵 person mountain biking; U+1F6B5
🚵‍♂️ man mountain biking; U+1F6B5 U+200D U+2642 U+FE0F
🚵‍♀️ woman mountain biking; U+1F6B5 U+200D U+2640 U+FE0F
🤸 person cartwheeling; U+1F938
🤸‍♂️ man cartwheeling; U+1F938 U+200D U+2642 U+FE0F
🤸‍♀️ woman cartwheeling; U+1F938 U+200D U+2640 U+FE0F
🤼 people wrestling; U+1F93C
🤼‍♂️ men wrestling; U+1F93C U+200D U+2642 U+FE0F
🤼‍♀️ women wrestling; U+1F93C U+200D U+2640 U+FE0F
🤽 person playing water polo; U+1F93D
🤽‍♂️ man playing water polo; U+1F93D U+200D U+2642 U+FE0F
🤽‍♀️ woman playing water polo; U+1F93D U+200D U+2640 U+FE0F
🤾 person playing handball; U+1F93E
🤾‍♂️ man playing handball; U+1F93E U+200D U+2642 U+FE0F
🤾‍♀️ woman playing handball; U+1F93E U+200D U+2640 U+FE0F
🤹 person juggling; U+1F939
🤹‍♂️ man juggling; U+1F939 U+200D U+2642 U+FE0F
🤹‍♀️ woman juggling; U+1F939 U+200D U+2640 U+FE0F
🧘 person in lotus position; U+1F9D8
🧘‍♂️ man in lotus position; U+1F9D8 U+200D U+2642 U+FE0F
🧘‍♀️ woman in lotus position; U+1F9D8 U+200D U+2640 U+FE0F
🛀 person taking bath; U+1F6C0
🛌 person in bed; U+1F6CC
👭 women holding hands; U+1F46D
👫 woman and man holding hands; U+1F46B
👬 men holding hands; U+1F46C
💏 kiss; U+1F48F
👩‍❤️‍💋‍👨 kiss: woman, man; U+1F469 U+200D U+2764 U+FE0F U+200D U+1F48B U+200D U+1F468
👨‍❤️‍💋‍👨 kiss: man, man; U+1F468 U+200D U+2764 U+FE0F U+200D U+1F48B U+200D U+1F468
👩‍❤️‍💋‍👩 kiss: woman, woman; U+1F469 U+200D U+2764 U+FE0F U+200D U+1F48B U+200D U+1F469
💑 couple with heart; U+1F491
👩‍❤️‍👨 couple with heart: woman, man; U+1F469 U+200D U+2764 U+FE0F U+200D U+1F468
👨‍❤️‍👨 couple with heart: man, man; U+1F468 U+200D U+2764 U+FE0F U+200D U+1F468
👩‍❤️‍👩 couple with heart: woman, woman; U+1F469 U+200D U+2764 U+FE0F U+200D U+1F469
👪 family; U+1F46A
👨‍👩‍👦 family: man, woman, boy; U+1F468 U+200D U+1F469 U+200D U+1F466
👨‍👩‍👧 family: man, woman, girl; U+1F468 U+200D U+1F469 U+200D U+1F467
👨‍👩‍👧‍👦 family: man, woman, girl, boy; U+1F468 U+200D U+1F469 U+200D U+1F467 U+200D U+1F466
👨‍👩‍👦‍👦 family: man, woman, boy, boy; U+1F468 U+200D U+1F469 U+200D U+1F466 U+200D U+1F466
👨‍👩‍👧‍👧 family: man, woman, girl, girl; U+1F468 U+200D U+1F469 U+200D U+1F467 U+200D U+1F467
👨‍👨‍👦 family: man, man, boy; U+1F468 U+200D U+1F468 U+200D U+1F466
👨‍👨‍👧 family: man, man, girl; U+1F468 U+200D U+1F468 U+200D U+1F467
👨‍👨‍👧‍👦 family: man, man, girl, boy; U+1F468 U+200D U+1F468 U+200D U+1F467 U+200D U+1F466
👨‍👨‍👦‍👦 family: man, man, boy, boy; U+1F468 U+200D U+1F468 U+200D U+1F466 U+200D U+1F466
👨‍👨‍👧‍👧 family: man, man, girl, girl; U+1F468 U+200D U+1F468 U+200D U+1F467 U+200D U+1F467
👩‍👩‍👦 family: woman, woman, boy; U+1F469 U+200D U+1F469 U+200D U+1F466
👩‍👩‍👧 family: woman, woman, girl; U+1F469 U+200D U+1F469 U+200D U+1F467
👩‍👩‍👧‍👦 family: woman, woman, girl, boy; U+1F469 U+200D U+1F469 U+200D U+1F467 U+200D U+1F466
👩‍👩‍👦‍👦 family: woman, woman, boy, boy; U+1F469 U+200D U+1F469 U+200D U+1F466 U+200D U+1F466
👩‍👩‍👧‍👧 family: woman, woman, girl, girl; U+1F469 U+200D U+1F469 U+200D U+1F467 U+200D U+1F467
👨‍👦 family: man, boy; U+1F468 U+200D U+1F466
👨‍👦‍👦 family: man, boy, boy; U+1F468 U+200D U+1F466 U+200D U+1F466
👨‍👧 family: man, girl; U+1F468 U+200D U+1F467
👨‍👧‍👦 family: man, girl, boy; U+1F468 U+200D U+1F467 U+200D U+1F466
👨‍👧‍👧 family: man, girl, girl; U+1F468 U+200D U+1F467 U+200D U+1F467
👩‍👦 family: woman, boy; U+1F469 U+200D U+1F466
👩‍👦‍👦 family: woman, boy, boy; U+1F469 U+200D U+1F466 U+200D U+1F466
👩‍👧 family: woman, girl; U+1F469 U+200D U+1F467
👩‍👧‍👦 family: woman, girl, boy; U+1F469 U+200D U+1F467 U+200D U+1F466
👩‍👧‍👧 family: woman, girl, girl; U+1F469 U+200D U+1F467 U+200D U+1F467
🗣 speaking head; U+1F5E3
👤 bust in silhouette; U+1F464
👥 busts in silhouette; U+1F465
👣 footprints; U+1F463
🦰 red hair; U+1F9B0
🦱 curly hair; U+1F9B1
🦳 white hair; U+1F9B3
🦲 bald; U+1F9B2
🐵 monkey face; U+1F435
🐒 monkey; U+1F412
🦍 gorilla; U+1F98D
🐶 dog face; U+1F436
🐕 dog; U+1F415
🐩 poodle; U+1F429
🐺 wolf face; U+1F43A
🦊 fox face; U+1F98A
🦝 raccoon; U+1F99D
🐱 cat face; U+1F431
🐈 cat; U+1F408
🦁 lion face; U+1F981
🐯 tiger face; U+1F42F
🐅 tiger; U+1F405
🐆 leopard; U+1F406
🐴 horse face; U+1F434
🐎 horse; U+1F40E
🦄 unicorn face; U+1F984
🦓 zebra; U+1F993
🦌 deer; U+1F98C
🐮 cow face; U+1F42E
🐂 ox; U+1F402
🐃 water buffalo; U+1F403
🐄 cow; U+1F404
🐷 pig face; U+1F437
🐖 pig; U+1F416
🐗 boar; U+1F417
🐽 pig nose; U+1F43D
🐏 ram; U+1F40F
🐑 ewe; U+1F411
🐐 goat; U+1F410
🐪 camel; U+1F42A
🐫 two-hump camel; U+1F42B
🦙 llama; U+1F999
🦒 giraffe; U+1F992
🐘 elephant; U+1F418
🦏 rhinoceros; U+1F98F
🦛 hippopotamus; U+1F99B
🐭 mouse face; U+1F42D
🐁 mouse; U+1F401
🐀 rat; U+1F400
🐹 hamster face; U+1F439
🐰 rabbit face; U+1F430
🐇 rabbit; U+1F407
🐿 chipmunk; U+1F43F
🦔 hedgehog; U+1F994
🦇 bat; U+1F987
🐻 bear face; U+1F43B
🐨 koala; U+1F428
🐼 panda face; U+1F43C
🦘 kangaroo; U+1F998
🦡 badger; U+1F9A1
🐾 paw prints; U+1F43E
🦃 turkey; U+1F983
🐔 chicken; U+1F414
🐓 rooster; U+1F413
🐣 hatching chick; U+1F423
🐤 baby chick; U+1F424
🐥 front-facing baby chick; U+1F425
🐦 bird; U+1F426
🐧 penguin; U+1F427
🕊 dove; U+1F54A
🦅 eagle; U+1F985
🦆 duck; U+1F986
🦢 swan; U+1F9A2
🦉 owl; U+1F989
🦚 peacock; U+1F99A
🦜 parrot; U+1F99C
🐸 frog face; U+1F438
🐊 crocodile; U+1F40A
🐢 turtle; U+1F422
🦎 lizard; U+1F98E
🐍 snake; U+1F40D
🐲 dragon face; U+1F432
🐉 dragon; U+1F409
🦕 sauropod; U+1F995
🦖 T-Rex; U+1F996
🐳 spouting whale; U+1F433
🐋 whale; U+1F40B
🐬 dolphin; U+1F42C
🐟 fish; U+1F41F
🐠 tropical fish; U+1F420
🐡 blowfish; U+1F421
🦈 shark; U+1F988
🐙 octopus; U+1F419
🐚 spiral shell; U+1F41A
🐌 snail; U+1F40C
🦋 butterfly; U+1F98B
🐛 bug; U+1F41B
🐜 ant; U+1F41C
🐝 honeybee; U+1F41D
🐞 lady beetle; U+1F41E
🦗 cricket; U+1F997
🕷 spider; U+1F577
🕸 spider web; U+1F578
🦂 scorpion; U+1F982
🦟 mosquito; U+1F99F
🦠 microbe; U+1F9A0
💐 bouquet; U+1F490
🌸 cherry blossom; U+1F338
💮 white flower; U+1F4AE
🏵 rosette; U+1F3F5
🌹 rose; U+1F339
🥀 wilted flower; U+1F940
🌺 hibiscus; U+1F33A
🌻 sunflower; U+1F33B
🌼 blossom; U+1F33C
🌷 tulip; U+1F337
🌱 seedling; U+1F331
🌲 evergreen tree; U+1F332
🌳 deciduous tree; U+1F333
🌴 palm tree; U+1F334
🌵 cactus; U+1F335
🌾 sheaf of rice; U+1F33E
🌿 herb; U+1F33F
☘ shamrock; U+2618
🍀 four leaf clover; U+1F340
🍁 maple leaf; U+1F341
🍂 fallen leaf; U+1F342
🍃 leaf fluttering in wind; U+1F343
🍇 grapes; U+1F347
🍈 melon; U+1F348
🍉 watermelon; U+1F349
🍊 tangerine; U+1F34A
🍋 lemon; U+1F34B
🍌 banana; U+1F34C
🍍 pineapple; U+1F34D
🥭 mango; U+1F96D
🍎 red apple; U+1F34E
🍏 green apple; U+1F34F
🍐 pear; U+1F350
🍑 peach; U+1F351
🍒 cherries; U+1F352
🍓 strawberry; U+1F353
🥝 kiwi fruit; U+1F95D
🍅 tomato; U+1F345
🥥 coconut; U+1F965
🥑 avocado; U+1F951
🍆 eggplant; U+1F346
🥔 potato; U+1F954
🥕 carrot; U+1F955
🌽 ear of corn; U+1F33D
🌶 hot pepper; U+1F336
🥒 cucumber; U+1F952
🥬 leafy green; U+1F96C
🥦 broccoli; U+1F966
🍄 mushroom; U+1F344
🥜 peanuts; U+1F95C
🌰 chestnut; U+1F330
🍞 bread; U+1F35E
🥐 croissant; U+1F950
🥖 baguette bread; U+1F956
🥨 pretzel; U+1F968
🥯 bagel; U+1F96F
🥞 pancakes; U+1F95E
🧀 cheese wedge; U+1F9C0
🍖 meat on bone; U+1F356
🍗 poultry leg; U+1F357
🥩 cut of meat; U+1F969
🥓 bacon; U+1F953
🍔 hamburger; U+1F354
🍟 french fries; U+1F35F
🍕 pizza; U+1F355
🌭 hot dog; U+1F32D
🥪 sandwich; U+1F96A
🌮 taco; U+1F32E
🌯 burrito; U+1F32F
🥙 stuffed flatbread; U+1F959
🥚 egg; U+1F95A
🍳 cooking; U+1F373
🥘 shallow pan of food; U+1F958
🍲 pot of food; U+1F372
🥣 bowl with spoon; U+1F963
🥗 green salad; U+1F957
🍿 popcorn; U+1F37F
🧂 salt; U+1F9C2
🥫 canned food; U+1F96B
🍱 bento box; U+1F371
🍘 rice cracker; U+1F358
🍙 rice ball; U+1F359
🍚 cooked rice; U+1F35A
🍛 curry rice; U+1F35B
🍜 steaming bowl; U+1F35C
🍝 spaghetti; U+1F35D
🍠 roasted sweet potato; U+1F360
🍢 oden; U+1F362
🍣 sushi; U+1F363
🍤 fried shrimp; U+1F364
🍥 fish cake with swirl; U+1F365
🥮 moon cake; U+1F96E
🍡 dango; U+1F361
🥟 dumpling; U+1F95F
🥠 fortune cookie; U+1F960
🥡 takeout box; U+1F961
🦀 crab; U+1F980
🦞 lobster; U+1F99E
🦐 shrimp; U+1F990
🦑 squid; U+1F991
🍦 soft ice cream; U+1F366
🍧 shaved ice; U+1F367
🍨 ice cream; U+1F368
🍩 doughnut; U+1F369
🍪 cookie; U+1F36A
🎂 birthday cake; U+1F382
🍰 shortcake; U+1F370
🧁 cupcake; U+1F9C1
🥧 pie; U+1F967
🍫 chocolate bar; U+1F36B
🍬 candy; U+1F36C
🍭 lollipop; U+1F36D
🍮 custard; U+1F36E
🍯 honey pot; U+1F36F
🍼 baby bottle; U+1F37C
🥛 glass of milk; U+1F95B
☕ hot beverage; U+2615
🍵 teacup without handle; U+1F375
🍶 sake; U+1F376
🍾 bottle with popping cork; U+1F37E
🍷 wine glass; U+1F377
🍸 cocktail glass; U+1F378
🍹 tropical drink; U+1F379
🍺 beer mug; U+1F37A
🍻 clinking beer mugs; U+1F37B
🥂 clinking glasses; U+1F942
🥃 tumbler glass; U+1F943
🥤 cup with straw; U+1F964
🥢 chopsticks; U+1F962
🍽 fork and knife with plate; U+1F37D
🍴 fork and knife; U+1F374
🥄 spoon; U+1F944
🔪 kitchen knife; U+1F52A
🏺 amphora; U+1F3FA
🌍 globe showing Europe-Africa; U+1F30D
🌎 globe showing Americas; U+1F30E
🌏 globe showing Asia-Australia; U+1F30F
🌐 globe with meridians; U+1F310
🗺 world map; U+1F5FA
🗾 map of Japan; U+1F5FE
🧭 compass; U+1F9ED
🏔 snow-capped mountain; U+1F3D4
⛰ mountain; U+26F0
🌋 volcano; U+1F30B
🗻 mount fuji; U+1F5FB
🏕 camping; U+1F3D5
🏖 beach with umbrella; U+1F3D6
🏜 desert; U+1F3DC
🏝 desert island; U+1F3DD
🏞 national park; U+1F3DE
🏟 stadium; U+1F3DF
🏛 classical building; U+1F3DB
🏗 building construction; U+1F3D7
🧱 brick; U+1F9F1
🏘 houses; U+1F3D8
🏚 derelict house; U+1F3DA
🏠 house; U+1F3E0
🏡 house with garden; U+1F3E1
🏢 office building; U+1F3E2
🏣 Japanese post office; U+1F3E3
🏤 post office; U+1F3E4
🏥 hospital; U+1F3E5
🏦 bank; U+1F3E6
🏨 hotel; U+1F3E8
🏩 love hotel; U+1F3E9
🏪 convenience store; U+1F3EA
🏫 school; U+1F3EB
🏬 department store; U+1F3EC
🏭 factory; U+1F3ED
🏯 Japanese castle; U+1F3EF
🏰 castle; U+1F3F0
💒 wedding; U+1F492
🗼 Tokyo tower; U+1F5FC
🗽 Statue of Liberty; U+1F5FD
⛪ church; U+26EA
🕌 mosque; U+1F54C
🕍 synagogue; U+1F54D
⛩ shinto shrine; U+26E9
🕋 kaaba; U+1F54B
⛲ fountain; U+26F2
⛺ tent; U+26FA
🌁 foggy; U+1F301
🌃 night with stars; U+1F303
🏙 cityscape; U+1F3D9
🌄 sunrise over mountains; U+1F304
🌅 sunrise; U+1F305
🌆 cityscape at dusk; U+1F306
🌇 sunset; U+1F307
🌉 bridge at night; U+1F309
♨ hot springs; U+2668
🌌 milky way; U+1F30C
🎠 carousel horse; U+1F3A0
🎡 ferris wheel; U+1F3A1
🎢 roller coaster; U+1F3A2
💈 barber pole; U+1F488
🎪 circus tent; U+1F3AA
🚂 locomotive; U+1F682
🚃 railway car; U+1F683
🚄 high-speed train; U+1F684
🚅 bullet train; U+1F685
🚆 train; U+1F686
🚇 metro; U+1F687
🚈 light rail; U+1F688
🚉 station; U+1F689
🚊 tram; U+1F68A
🚝 monorail; U+1F69D
🚞 mountain railway; U+1F69E
🚋 tram car; U+1F68B
🚌 bus; U+1F68C
🚍 oncoming bus; U+1F68D
🚎 trolleybus; U+1F68E
🚐 minibus; U+1F690
🚑 ambulance; U+1F691
🚒 fire engine; U+1F692
🚓 police car; U+1F693
🚔 oncoming police car; U+1F694
🚕 taxi; U+1F695
🚖 oncoming taxi; U+1F696
🚗 automobile; U+1F697
🚘 oncoming automobile; U+1F698
🚙 sport utility vehicle; U+1F699
🚚 delivery truck; U+1F69A
🚛 articulated lorry; U+1F69B
🚜 tractor; U+1F69C
🏎 racing car; U+1F3CE
🏍 motorcycle; U+1F3CD
🛵 motor scooter; U+1F6F5
🚲 bicycle; U+1F6B2
🛴 kick scooter; U+1F6F4
🛹 skateboard; U+1F6F9
🚏 bus stop; U+1F68F
🛣 motorway; U+1F6E3
🛤 railway track; U+1F6E4
🛢 oil drum; U+1F6E2
⛽ fuel pump; U+26FD
🚨 police car light; U+1F6A8
🚥 horizontal traffic light; U+1F6A5
🚦 vertical traffic light; U+1F6A6
🛑 stop sign; U+1F6D1
🚧 construction; U+1F6A7
⚓ anchor; U+2693
⛵ sailboat; U+26F5
🛶 canoe; U+1F6F6
🚤 speedboat; U+1F6A4
🛳 passenger ship; U+1F6F3
⛴ ferry; U+26F4
🛥 motor boat; U+1F6E5
🚢 ship; U+1F6A2
✈ airplane; U+2708
🛩 small airplane; U+1F6E9
🛫 airplane departure; U+1F6EB
🛬 airplane arrival; U+1F6EC
💺 seat; U+1F4BA
🚁 helicopter; U+1F681
🚟 suspension railway; U+1F69F
🚠 mountain cableway; U+1F6A0
🚡 aerial tramway; U+1F6A1
🛰 satellite; U+1F6F0
🚀 rocket; U+1F680
🛸 flying saucer; U+1F6F8
🛎 bellhop bell; U+1F6CE
🧳 luggage; U+1F9F3
⌛ hourglass done; U+231B
⏳ hourglass not done; U+23F3
⌚ watch; U+231A
⏰ alarm clock; U+23F0
⏱ stopwatch; U+23F1
⏲ timer clock; U+23F2
🕰 mantelpiece clock; U+1F570
🕛 twelve o’clock; U+1F55B
🕧 twelve-thirty; U+1F567
🕐 one o’clock; U+1F550
🕜 one-thirty; U+1F55C
🕑 two o’clock; U+1F551
🕝 two-thirty; U+1F55D
🕒 three o’clock; U+1F552
🕞 three-thirty; U+1F55E
🕓 four o’clock; U+1F553
🕟 four-thirty; U+1F55F
🕔 five o’clock; U+1F554
🕠 five-thirty; U+1F560
🕕 six o’clock; U+1F555
🕡 six-thirty; U+1F561
🕖 seven o’clock; U+1F556
🕢 seven-thirty; U+1F562
🕗 eight o’clock; U+1F557
🕣 eight-thirty; U+1F563
🕘 nine o’clock; U+1F558
🕤 nine-thirty; U+1F564
🕙 ten o’clock; U+1F559
🕥 ten-thirty; U+1F565
🕚 eleven o’clock; U+1F55A
🕦 eleven-thirty; U+1F566
🌑 new moon; U+1F311
🌒 waxing crescent moon; U+1F312
🌓 first quarter moon; U+1F313
🌔 waxing gibbous moon; U+1F314
🌕 full moon; U+1F315
🌖 waning gibbous moon; U+1F316
🌗 last quarter moon; U+1F317
🌘 waning crescent moon; U+1F318
🌙 crescent moon; U+1F319
🌚 new moon face; U+1F31A
🌛 first quarter moon face; U+1F31B
🌜 last quarter moon face; U+1F31C
🌡 thermometer; U+1F321
☀ sun; U+2600
🌝 full moon face; U+1F31D
🌞 sun with face; U+1F31E
⭐ star; U+2B50
🌟 glowing star; U+1F31F
🌠 shooting star; U+1F320
☁ cloud; U+2601
⛅ sun behind cloud; U+26C5
⛈ cloud with lightning and rain; U+26C8
🌤 sun behind small cloud; U+1F324
🌥 sun behind large cloud; U+1F325
🌦 sun behind rain cloud; U+1F326
🌧 cloud with rain; U+1F327
🌨 cloud with snow; U+1F328
🌩 cloud with lightning; U+1F329
🌪 tornado; U+1F32A
🌫 fog; U+1F32B
🌬 wind face; U+1F32C
🌀 cyclone; U+1F300
🌈 rainbow; U+1F308
🌂 closed umbrella; U+1F302
☂ umbrella; U+2602
☔ umbrella with rain drops; U+2614
⛱ umbrella on ground; U+26F1
⚡ high voltage; U+26A1
❄ snowflake; U+2744
☃ snowman; U+2603
⛄ snowman without snow; U+26C4
☄ comet; U+2604
🔥 fire; U+1F525
💧 droplet; U+1F4A7
🌊 water wave; U+1F30A
🎃 jack-o-lantern; U+1F383
🎄 Christmas tree; U+1F384
🎆 fireworks; U+1F386
🎇 sparkler; U+1F387
🧨 firecracker; U+1F9E8
✨ sparkles; U+2728
🎈 balloon; U+1F388
🎉 party popper; U+1F389
🎊 confetti ball; U+1F38A
🎋 tanabata tree; U+1F38B
🎍 pine decoration; U+1F38D
🎎 Japanese dolls; U+1F38E
🎏 carp streamer; U+1F38F
🎐 wind chime; U+1F390
🎑 moon viewing ceremony; U+1F391
🧧 red envelope; U+1F9E7
🎀 ribbon; U+1F380
🎁 wrapped gift; U+1F381
🎗 reminder ribbon; U+1F397
🎟 admission tickets; U+1F39F
🎫 ticket; U+1F3AB
🎖 military medal; U+1F396
🏆 trophy; U+1F3C6
🏅 sports medal; U+1F3C5
1st place medal; U+1F947 🥇
2nd place medal; U+1F948 🥈
3rd place medal; U+1F949 🥉
⚽ soccer ball; U+26BD
⚾ baseball; U+26BE
🥎 softball; U+1F94E
🏀 basketball; U+1F3C0
🏐 volleyball; U+1F3D0
🏈 american football; U+1F3C8
🏉 rugby football; U+1F3C9
🎾 tennis; U+1F3BE
🥏 flying disc; U+1F94F
🎳 bowling; U+1F3B3
🏏 cricket game; U+1F3CF
🏑 field hockey; U+1F3D1
🏒 ice hockey; U+1F3D2
🥍 lacrosse; U+1F94D
🏓 ping pong; U+1F3D3
🏸 badminton; U+1F3F8
🥊 boxing glove; U+1F94A
🥋 martial arts uniform; U+1F94B
🥅 goal net; U+1F945
⛳ flag in hole; U+26F3
⛸ ice skate; U+26F8
🎣 fishing pole; U+1F3A3
🎽 running shirt; U+1F3BD
🎿 skis; U+1F3BF
🛷 sled; U+1F6F7
🥌 curling stone; U+1F94C
🎯 direct hit; U+1F3AF
🎱 pool 8 ball; U+1F3B1
🔮 crystal ball; U+1F52E
🧿 nazar amulet; U+1F9FF
🎮 video game; U+1F3AE
🕹 joystick; U+1F579
🎰 slot machine; U+1F3B0
🎲 game die; U+1F3B2
🧩 jigsaw; U+1F9E9
🧸 teddy bear; U+1F9F8
♠ spade suit; U+2660
♥ heart suit; U+2665
♦ diamond suit; U+2666
♣ club suit; U+2663
♟ chess pawn; U+265F
🃏 joker; U+1F0CF
🀄 mahjong red dragon; U+1F004
🎴 flower playing cards; U+1F3B4
🎭 performing arts; U+1F3AD
🖼 framed picture; U+1F5BC
🎨 artist palette; U+1F3A8
🧵 thread; U+1F9F5
🧶 yarn; U+1F9F6
👓 glasses; U+1F453
🕶 sunglasses; U+1F576
🥽 goggles; U+1F97D
🥼 lab coat; U+1F97C
👔 necktie; U+1F454
👕 t-shirt; U+1F455
👖 jeans; U+1F456
🧣 scarf; U+1F9E3
🧤 gloves; U+1F9E4
🧥 coat; U+1F9E5
🧦 socks; U+1F9E6
👗 dress; U+1F457
👘 kimono; U+1F458
👙 bikini; U+1F459
👚 woman’s clothes; U+1F45A
👛 purse; U+1F45B
👜 handbag; U+1F45C
👝 clutch bag; U+1F45D
🛍 shopping bags; U+1F6CD
🎒 backpack; U+1F392
👞 man’s shoe; U+1F45E
👟 running shoe; U+1F45F
🥾 hiking boot; U+1F97E
🥿 flat shoe; U+1F97F
👠 high-heeled shoe; U+1F460
👡 woman’s sandal; U+1F461
👢 woman’s boot; U+1F462
👑 crown; U+1F451
👒 woman’s hat; U+1F452
🎩 top hat; U+1F3A9
🎓 graduation cap; U+1F393
🧢 billed cap; U+1F9E2
⛑ rescue worker’s helmet; U+26D1
📿 prayer beads; U+1F4FF
💄 lipstick; U+1F484
💍 ring; U+1F48D
💎 gem stone; U+1F48E
🔇 muted speaker; U+1F507
🔈 speaker low volume; U+1F508
🔉 speaker medium volume; U+1F509
🔊 speaker high volume; U+1F50A
📢 loudspeaker; U+1F4E2
📣 megaphone; U+1F4E3
📯 postal horn; U+1F4EF
🔔 bell; U+1F514
🔕 bell with slash; U+1F515
🎼 musical score; U+1F3BC
🎵 musical note; U+1F3B5
🎶 musical notes; U+1F3B6
🎙 studio microphone; U+1F399
🎚 level slider; U+1F39A
🎛 control knobs; U+1F39B
🎤 microphone; U+1F3A4
🎧 headphone; U+1F3A7
📻 radio; U+1F4FB
🎷 saxophone; U+1F3B7
🎸 guitar; U+1F3B8
🎹 musical keyboard; U+1F3B9
🎺 trumpet; U+1F3BA
🎻 violin; U+1F3BB
🥁 drum; U+1F941
📱 mobile phone; U+1F4F1
📲 mobile phone with arrow; U+1F4F2
☎ telephone; U+260E
📞 telephone receiver; U+1F4DE
📟 pager; U+1F4DF
📠 fax machine; U+1F4E0
🔋 battery; U+1F50B
🔌 electric plug; U+1F50C
💻 laptop computer; U+1F4BB
🖥 desktop computer; U+1F5A5
🖨 printer; U+1F5A8
⌨ keyboard; U+2328
🖱 computer mouse; U+1F5B1
🖲 trackball; U+1F5B2
💽 computer disk; U+1F4BD
💾 floppy disk; U+1F4BE
💿 optical disk; U+1F4BF
📀 dvd; U+1F4C0
🧮 abacus; U+1F9EE
🎥 movie camera; U+1F3A5
🎞 film frames; U+1F39E
📽 film projector; U+1F4FD
🎬 clapper board; U+1F3AC
📺 television; U+1F4FA
📷 camera; U+1F4F7
📸 camera with flash; U+1F4F8
📹 video camera; U+1F4F9
📼 videocassette; U+1F4FC
🔍 magnifying glass tilted left; U+1F50D
🔎 magnifying glass tilted right; U+1F50E
🕯 candle; U+1F56F
💡 light bulb; U+1F4A1
🔦 flashlight; U+1F526
🏮 red paper lantern; U+1F3EE
📔 notebook with decorative cover; U+1F4D4
📕 closed book; U+1F4D5
📖 open book; U+1F4D6
📗 green book; U+1F4D7
📘 blue book; U+1F4D8
📙 orange book; U+1F4D9
📚 books; U+1F4DA
📓 notebook; U+1F4D3
📒 ledger; U+1F4D2
📃 page with curl; U+1F4C3
📜 scroll; U+1F4DC
📄 page facing up; U+1F4C4
📰 newspaper; U+1F4F0
🗞 rolled-up newspaper; U+1F5DE
📑 bookmark tabs; U+1F4D1
🔖 bookmark; U+1F516
🏷 label; U+1F3F7
💰 money bag; U+1F4B0
💴 yen banknote; U+1F4B4
💵 dollar banknote; U+1F4B5
💶 euro banknote; U+1F4B6
💷 pound banknote; U+1F4B7
💸 money with wings; U+1F4B8
💳 credit card; U+1F4B3
🧾 receipt; U+1F9FE
💹 chart increasing with yen; U+1F4B9
💱 currency exchange; U+1F4B1
💲 heavy dollar sign; U+1F4B2
✉ envelope; U+2709
📧 e-mail; U+1F4E7
📨 incoming envelope; U+1F4E8
📩 envelope with arrow; U+1F4E9
📤 outbox tray; U+1F4E4
📥 inbox tray; U+1F4E5
📦 package; U+1F4E6
📫 closed mailbox with raised flag; U+1F4EB
📪 closed mailbox with lowered flag; U+1F4EA
📬 open mailbox with raised flag; U+1F4EC
📭 open mailbox with lowered flag; U+1F4ED
📮 postbox; U+1F4EE
🗳 ballot box with ballot; U+1F5F3
✏ pencil; U+270F
✒ black nib; U+2712
🖋 fountain pen; U+1F58B
🖊 pen; U+1F58A
🖌 paintbrush; U+1F58C
🖍 crayon; U+1F58D
📝 memo; U+1F4DD
💼 briefcase; U+1F4BC
📁 file folder; U+1F4C1
📂 open file folder; U+1F4C2
🗂 card index dividers; U+1F5C2
📅 calendar; U+1F4C5
📆 tear-off calendar; U+1F4C6
🗒 spiral notepad; U+1F5D2
🗓 spiral calendar; U+1F5D3
📇 card index; U+1F4C7
📈 chart increasing; U+1F4C8
📉 chart decreasing; U+1F4C9
📊 bar chart; U+1F4CA
📋 clipboard; U+1F4CB
📌 pushpin; U+1F4CC
📍 round pushpin; U+1F4CD
📎 paperclip; U+1F4CE
🖇 linked paperclips; U+1F587
📏 straight ruler; U+1F4CF
📐 triangular ruler; U+1F4D0
✂ scissors; U+2702
🗃 card file box; U+1F5C3
🗄 file cabinet; U+1F5C4
🗑 wastebasket; U+1F5D1
🔒 locked; U+1F512
🔓 unlocked; U+1F513
🔏 locked with pen; U+1F50F
🔐 locked with key; U+1F510
🔑 key; U+1F511
🗝 old key; U+1F5DD
🔨 hammer; U+1F528
⛏ pick; U+26CF
⚒ hammer and pick; U+2692
🛠 hammer and wrench; U+1F6E0
🗡 dagger; U+1F5E1
⚔ crossed swords; U+2694
🔫 pistol; U+1F52B
🏹 bow and arrow; U+1F3F9
🛡 shield; U+1F6E1
🔧 wrench; U+1F527
🔩 nut and bolt; U+1F529
⚙ gear; U+2699
🗜 clamp; U+1F5DC
⚖ balance scale; U+2696
🔗 link; U+1F517
⛓ chains; U+26D3
🧰 toolbox; U+1F9F0
🧲 magnet; U+1F9F2
⚗ alembic; U+2697
🧪 test tube; U+1F9EA
🧫 petri dish; U+1F9EB
🧬 dna; U+1F9EC
🔬 microscope; U+1F52C
🔭 telescope; U+1F52D
📡 satellite antenna; U+1F4E1
💉 syringe; U+1F489
💊 pill; U+1F48A
🚪 door; U+1F6AA
🛏 bed; U+1F6CF
🛋 couch and lamp; U+1F6CB
🚽 toilet; U+1F6BD
🚿 shower; U+1F6BF
🛁 bathtub; U+1F6C1
🧴 lotion bottle; U+1F9F4
🧷 safety pin; U+1F9F7
🧹 broom; U+1F9F9
🧺 basket; U+1F9FA
🧻 roll of paper; U+1F9FB
🧼 soap; U+1F9FC
🧽 sponge; U+1F9FD
🧯 fire extinguisher; U+1F9EF
🛒 shopping cart; U+1F6D2
🚬 cigarette; U+1F6AC
⚰ coffin; U+26B0
⚱ funeral urn; U+26B1
🗿 moai; U+1F5FF
🏧 ATM sign; U+1F3E7
🚮 litter in bin sign; U+1F6AE
🚰 potable water; U+1F6B0
♿ wheelchair symbol; U+267F
🚹 men’s room; U+1F6B9
🚺 women’s room; U+1F6BA
🚻 restroom; U+1F6BB
🚼 baby symbol; U+1F6BC
🚾 water closet; U+1F6BE
🛂 passport control; U+1F6C2
🛃 customs; U+1F6C3
🛄 baggage claim; U+1F6C4
🛅 left luggage; U+1F6C5
⚠ warning; U+26A0
🚸 children crossing; U+1F6B8
⛔ no entry; U+26D4
🚫 prohibited; U+1F6AB
🚳 no bicycles; U+1F6B3
🚭 no smoking; U+1F6AD
🚯 no littering; U+1F6AF
🚱 non-potable water; U+1F6B1
🚷 no pedestrians; U+1F6B7
📵 no mobile phones; U+1F4F5
🔞 no one under eighteen; U+1F51E
☢ radioactive; U+2622
☣ biohazard; U+2623
⬆ up arrow; U+2B06
↗ up-right arrow; U+2197
➡ right arrow; U+27A1
↘ down-right arrow; U+2198
⬇ down arrow; U+2B07
↙ down-left arrow; U+2199
⬅ left arrow; U+2B05
↖ up-left arrow; U+2196
↕ up-down arrow; U+2195
↔ left-right arrow; U+2194
↩ right arrow curving left; U+21A9
↪ left arrow curving right; U+21AA
⤴ right arrow curving up; U+2934
⤵ right arrow curving down; U+2935
🔃 clockwise vertical arrows; U+1F503
🔄 counterclockwise arrows button; U+1F504
🔙 BACK arrow; U+1F519
🔚 END arrow; U+1F51A
🔛 ON! arrow; U+1F51B
🔜 SOON arrow; U+1F51C
🔝 TOP arrow; U+1F51D
🛐 place of worship; U+1F6D0
⚛ atom symbol; U+269B
🕉 om; U+1F549
✡ star of David; U+2721
☸ wheel of dharma; U+2638
☯ yin yang; U+262F
✝ latin cross; U+271D
☦ orthodox cross; U+2626
☪ star and crescent; U+262A
☮ peace symbol; U+262E
🕎 menorah; U+1F54E
🔯 dotted six-pointed star; U+1F52F
♈ Aries; U+2648
♉ Taurus; U+2649
♊ Gemini; U+264A
♋ Cancer; U+264B
♌ Leo; U+264C
♍ Virgo; U+264D
♎ Libra; U+264E
♏ Scorpio; U+264F
♐ Sagittarius; U+2650
♑ Capricorn; U+2651
♒ Aquarius; U+2652
♓ Pisces; U+2653
⛎ Ophiuchus; U+26CE
🔀 shuffle tracks button; U+1F500
🔁 repeat button; U+1F501
🔂 repeat single button; U+1F502
▶ play button; U+25B6
⏩ fast-forward button; U+23E9
⏭ next track button; U+23ED
⏯ play or pause button; U+23EF
◀ reverse button; U+25C0
⏪ fast reverse button; U+23EA
⏮ last track button; U+23EE
🔼 upwards button; U+1F53C
⏫ fast up button; U+23EB
🔽 downwards button; U+1F53D
⏬ fast down button; U+23EC
⏸ pause button; U+23F8
⏹ stop button; U+23F9
⏺ record button; U+23FA
⏏ eject button; U+23CF
🎦 cinema; U+1F3A6
🔅 dim button; U+1F505
🔆 bright button; U+1F506
📶 antenna bars; U+1F4F6
📳 vibration mode; U+1F4F3
📴 mobile phone off; U+1F4F4
♀ female sign; U+2640
♂ male sign; U+2642
⚕ medical symbol; U+2695
♾ infinity; U+267E
♻ recycling symbol; U+267B
⚜ fleur-de-lis; U+269C
🔱 trident emblem; U+1F531
📛 name badge; U+1F4DB
🔰 Japanese symbol for beginner; U+1F530
⭕ heavy large circle; U+2B55
✅ white heavy check mark; U+2705
☑ ballot box with check; U+2611
✔ heavy check mark; U+2714
✖ heavy multiplication x; U+2716
❌ cross mark; U+274C
❎ cross mark button; U+274E
➕ heavy plus sign; U+2795
➖ heavy minus sign; U+2796
➗ heavy division sign; U+2797
➰ curly loop; U+27B0
➿ double curly loop; U+27BF
〽 part alternation mark; U+303D
✳ eight-spoked asterisk; U+2733
✴ eight-pointed star; U+2734
❇ sparkle; U+2747
‼ double exclamation mark; U+203C
⁉ exclamation question mark; U+2049
❓ question mark; U+2753
❔ white question mark; U+2754
❕ white exclamation mark; U+2755
❗ exclamation mark; U+2757
〰 wavy dash; U+3030
© copyright; U+00A9
® registered; U+00AE
™ trade mark; U+2122
#️⃣ keycap: #; U+0023 U+FE0F U+20E3
*️⃣ keycap: *; U+002A U+FE0F U+20E3
0️⃣ keycap: 0; U+0030 U+FE0F U+20E3
1️⃣ keycap: 1; U+0031 U+FE0F U+20E3
2️⃣ keycap: 2; U+0032 U+FE0F U+20E3
3️⃣ keycap: 3; U+0033 U+FE0F U+20E3
4️⃣ keycap: 4; U+0034 U+FE0F U+20E3
5️⃣ keycap: 5; U+0035 U+FE0F U+20E3
6️⃣ keycap: 6; U+0036 U+FE0F U+20E3
7️⃣ keycap: 7; U+0037 U+FE0F U+20E3
8️⃣ keycap: 8; U+0038 U+FE0F U+20E3
9️⃣ keycap: 9; U+0039 U+FE0F U+20E3
🔟 keycap: 10; U+1F51F
🔠 input latin uppercase; U+1F520
🔡 input latin lowercase; U+1F521
🔢 input numbers; U+1F522
🔣 input symbols; U+1F523
🔤 input latin letters; U+1F524
🅰 A button (blood type); U+1F170
🆎 AB button (blood type); U+1F18E
🅱 B button (blood type); U+1F171
🆑 CL button; U+1F191
🆒 COOL button; U+1F192
🆓 FREE button; U+1F193
ℹ information; U+2139
🆔 ID button; U+1F194
Ⓜ circled M; U+24C2
🆕 NEW button; U+1F195
🆖 NG button; U+1F196
🅾 O button (blood type); U+1F17E
🆗 OK button; U+1F197
🅿 P button; U+1F17F
🆘 SOS button; U+1F198
🆙 UP! button; U+1F199
🆚 VS button; U+1F19A
🈁 Japanese “here” button; U+1F201
🈂 Japanese “service charge” button; U+1F202
🈷 Japanese “monthly amount” button; U+1F237
🈶 Japanese “not free of charge” button; U+1F236
🈯 Japanese “reserved” button; U+1F22F
🉐 Japanese “bargain” button; U+1F250
🈹 Japanese “discount” button; U+1F239
🈚 Japanese “free of charge” button; U+1F21A
🈲 Japanese “prohibited” button; U+1F232
🉑 Japanese “acceptable” button; U+1F251
🈸 Japanese “application” button; U+1F238
🈴 Japanese “passing grade” button; U+1F234
🈳 Japanese “vacancy” button; U+1F233
㊗ Japanese “congratulations” button; U+3297
㊙ Japanese “secret” button; U+3299
🈺 Japanese “open for business” button; U+1F23A
🈵 Japanese “no vacancy” button; U+1F235
🔴 red circle; U+1F534
🔵 blue circle; U+1F535
⚪ white circle; U+26AA
⚫ black circle; U+26AB
⬜ white large square; U+2B1C
⬛ black large square; U+2B1B
◼ black medium square; U+25FC
◻ white medium square; U+25FB
◽ white medium-small square; U+25FD
◾ black medium-small square; U+25FE
▫ white small square; U+25AB
▪ black small square; U+25AA
🔶 large orange diamond; U+1F536
🔷 large blue diamond; U+1F537
🔸 small orange diamond; U+1F538
🔹 small blue diamond; U+1F539
🔺 red triangle pointed up; U+1F53A
🔻 red triangle pointed down; U+1F53B
💠 diamond with a dot; U+1F4A0
🔘 radio button; U+1F518
🔲 black square button; U+1F532
🔳 white square button; U+1F533
🏁 chequered flag; U+1F3C1
🚩 triangular flag; U+1F6A9
🎌 crossed flags; U+1F38C
🏴 black flag; U+1F3F4
🏳 white flag; U+1F3F3
🏳️‍🌈 rainbow flag; U+1F3F3 U+FE0F U+200D U+1F308
🏴‍☠️ pirate flag; U+1F3F4 U+200D U+2620 U+FE0F
🇦🇨 flag: Ascension Island; U+1F1E6 U+1F1E8
🇦🇩 flag: Andorra; U+1F1E6 U+1F1E9
🇦🇪 flag: United Arab Emirates; U+1F1E6 U+1F1EA
🇦🇫 flag: Afghanistan; U+1F1E6 U+1F1EB
🇦🇬 flag: Antigua & Barbuda; U+1F1E6 U+1F1EC
🇦🇮 flag: Anguilla; U+1F1E6 U+1F1EE
🇦🇱 flag: Albania; U+1F1E6 U+1F1F1
🇦🇲 flag: Armenia; U+1F1E6 U+1F1F2
🇦🇴 flag: Angola; U+1F1E6 U+1F1F4
🇦🇶 flag: Antarctica; U+1F1E6 U+1F1F6
🇦🇷 flag: Argentina; U+1F1E6 U+1F1F7
🇦🇸 flag: American Samoa; U+1F1E6 U+1F1F8
🇦🇹 flag: Austria; U+1F1E6 U+1F1F9
🇦🇺 flag: Australia; U+1F1E6 U+1F1FA
🇦🇼 flag: Aruba; U+1F1E6 U+1F1FC
🇦🇽 flag: Åland Islands; U+1F1E6 U+1F1FD
🇦🇿 flag: Azerbaijan; U+1F1E6 U+1F1FF
🇧🇦 flag: Bosnia & Herzegovina; U+1F1E7 U+1F1E6
🇧🇧 flag: Barbados; U+1F1E7 U+1F1E7
🇧🇩 flag: Bangladesh; U+1F1E7 U+1F1E9
🇧🇪 flag: Belgium; U+1F1E7 U+1F1EA
🇧🇫 flag: Burkina Faso; U+1F1E7 U+1F1EB
🇧🇬 flag: Bulgaria; U+1F1E7 U+1F1EC
🇧🇭 flag: Bahrain; U+1F1E7 U+1F1ED
🇧🇮 flag: Burundi; U+1F1E7 U+1F1EE
🇧🇯 flag: Benin; U+1F1E7 U+1F1EF
🇧🇱 flag: St. Barthélemy; U+1F1E7 U+1F1F1
🇧🇲 flag: Bermuda; U+1F1E7 U+1F1F2
🇧🇳 flag: Brunei; U+1F1E7 U+1F1F3
🇧🇴 flag: Bolivia; U+1F1E7 U+1F1F4
🇧🇶 flag: Caribbean Netherlands; U+1F1E7 U+1F1F6
🇧🇷 flag: Brazil; U+1F1E7 U+1F1F7
🇧🇸 flag: Bahamas; U+1F1E7 U+1F1F8
🇧🇹 flag: Bhutan; U+1F1E7 U+1F1F9
🇧🇻 flag: Bouvet Island; U+1F1E7 U+1F1FB
🇧🇼 flag: Botswana; U+1F1E7 U+1F1FC
🇧🇾 flag: Belarus; U+1F1E7 U+1F1FE
🇧🇿 flag: Belize; U+1F1E7 U+1F1FF
🇨🇦 flag: Canada; U+1F1E8 U+1F1E6
🇨🇨 flag: Cocos (Keeling) Islands; U+1F1E8 U+1F1E8
🇨🇩 flag: Congo - Kinshasa; U+1F1E8 U+1F1E9
🇨🇫 flag: Central African Republic; U+1F1E8 U+1F1EB
🇨🇬 flag: Congo - Brazzaville; U+1F1E8 U+1F1EC
🇨🇭 flag: Switzerland; U+1F1E8 U+1F1ED
🇨🇮 flag: Côte d’Ivoire; U+1F1E8 U+1F1EE
🇨🇰 flag: Cook Islands; U+1F1E8 U+1F1F0
🇨🇱 flag: Chile; U+1F1E8 U+1F1F1
🇨🇲 flag: Cameroon; U+1F1E8 U+1F1F2
🇨🇳 flag: China; U+1F1E8 U+1F1F3
🇨🇴 flag: Colombia; U+1F1E8 U+1F1F4
🇨🇵 flag: Clipperton Island; U+1F1E8 U+1F1F5
🇨🇷 flag: Costa Rica; U+1F1E8 U+1F1F7
🇨🇺 flag: Cuba; U+1F1E8 U+1F1FA
🇨🇻 flag: Cape Verde; U+1F1E8 U+1F1FB
🇨🇼 flag: Curaçao; U+1F1E8 U+1F1FC
🇨🇽 flag: Christmas Island; U+1F1E8 U+1F1FD
🇨🇾 flag: Cyprus; U+1F1E8 U+1F1FE
🇨🇿 flag: Czechia; U+1F1E8 U+1F1FF
🇩🇪 flag: Germany; U+1F1E9 U+1F1EA
🇩🇬 flag: Diego Garcia; U+1F1E9 U+1F1EC
🇩🇯 flag: Djibouti; U+1F1E9 U+1F1EF
🇩🇰 flag: Denmark; U+1F1E9 U+1F1F0
🇩🇲 flag: Dominica; U+1F1E9 U+1F1F2
🇩🇴 flag: Dominican Republic; U+1F1E9 U+1F1F4
🇩🇿 flag: Algeria; U+1F1E9 U+1F1FF
🇪🇦 flag: Ceuta & Melilla; U+1F1EA U+1F1E6
🇪🇨 flag: Ecuador; U+1F1EA U+1F1E8
🇪🇪 flag: Estonia; U+1F1EA U+1F1EA
🇪🇬 flag: Egypt; U+1F1EA U+1F1EC
🇪🇭 flag: Western Sahara; U+1F1EA U+1F1ED
🇪🇷 flag: Eritrea; U+1F1EA U+1F1F7
🇪🇸 flag: Spain; U+1F1EA U+1F1F8
🇪🇹 flag: Ethiopia; U+1F1EA U+1F1F9
🇪🇺 flag: European Union; U+1F1EA U+1F1FA
🇫🇮 flag: Finland; U+1F1EB U+1F1EE
🇫🇯 flag: Fiji; U+1F1EB U+1F1EF
🇫🇰 flag: Falkland Islands; U+1F1EB U+1F1F0
🇫🇲 flag: Micronesia; U+1F1EB U+1F1F2
🇫🇴 flag: Faroe Islands; U+1F1EB U+1F1F4
🇫🇷 flag: France; U+1F1EB U+1F1F7
🇬🇦 flag: Gabon; U+1F1EC U+1F1E6
🇬🇧 flag: United Kingdom; U+1F1EC U+1F1E7
🇬🇩 flag: Grenada; U+1F1EC U+1F1E9
🇬🇪 flag: Georgia; U+1F1EC U+1F1EA
🇬🇫 flag: French Guiana; U+1F1EC U+1F1EB
🇬🇬 flag: Guernsey; U+1F1EC U+1F1EC
🇬🇭 flag: Ghana; U+1F1EC U+1F1ED
🇬🇮 flag: Gibraltar; U+1F1EC U+1F1EE
🇬🇱 flag: Greenland; U+1F1EC U+1F1F1
🇬🇲 flag: Gambia; U+1F1EC U+1F1F2
🇬🇳 flag: Guinea; U+1F1EC U+1F1F3
🇬🇵 flag: Guadeloupe; U+1F1EC U+1F1F5
🇬🇶 flag: Equatorial Guinea; U+1F1EC U+1F1F6
🇬🇷 flag: Greece; U+1F1EC U+1F1F7
🇬🇸 flag: South Georgia & South Sandwich Islands; U+1F1EC U+1F1F8
🇬🇹 flag: Guatemala; U+1F1EC U+1F1F9
🇬🇺 flag: Guam; U+1F1EC U+1F1FA
🇬🇼 flag: Guinea-Bissau; U+1F1EC U+1F1FC
🇬🇾 flag: Guyana; U+1F1EC U+1F1FE
🇭🇰 flag: Hong Kong SAR China; U+1F1ED U+1F1F0
🇭🇲 flag: Heard & McDonald Islands; U+1F1ED U+1F1F2
🇭🇳 flag: Honduras; U+1F1ED U+1F1F3
🇭🇷 flag: Croatia; U+1F1ED U+1F1F7
🇭🇹 flag: Haiti; U+1F1ED U+1F1F9
🇭🇺 flag: Hungary; U+1F1ED U+1F1FA
🇮🇨 flag: Canary Islands; U+1F1EE U+1F1E8
🇮🇩 flag: Indonesia; U+1F1EE U+1F1E9
🇮🇪 flag: Ireland; U+1F1EE U+1F1EA
🇮🇱 flag: Israel; U+1F1EE U+1F1F1
🇮🇲 flag: Isle of Man; U+1F1EE U+1F1F2
🇮🇳 flag: India; U+1F1EE U+1F1F3
🇮🇴 flag: British Indian Ocean Territory; U+1F1EE U+1F1F4
🇮🇶 flag: Iraq; U+1F1EE U+1F1F6
🇮🇷 flag: Iran; U+1F1EE U+1F1F7
🇮🇸 flag: Iceland; U+1F1EE U+1F1F8
🇮🇹 flag: Italy; U+1F1EE U+1F1F9
🇯🇪 flag: Jersey; U+1F1EF U+1F1EA
🇯🇲 flag: Jamaica; U+1F1EF U+1F1F2
🇯🇴 flag: Jordan; U+1F1EF U+1F1F4
🇯🇵 flag: Japan; U+1F1EF U+1F1F5
🇰🇪 flag: Kenya; U+1F1F0 U+1F1EA
🇰🇬 flag: Kyrgyzstan; U+1F1F0 U+1F1EC
🇰🇭 flag: Cambodia; U+1F1F0 U+1F1ED
🇰🇮 flag: Kiribati; U+1F1F0 U+1F1EE
🇰🇲 flag: Comoros; U+1F1F0 U+1F1F2
🇰🇳 flag: St. Kitts & Nevis; U+1F1F0 U+1F1F3
🇰🇵 flag: North Korea; U+1F1F0 U+1F1F5
🇰🇷 flag: South Korea; U+1F1F0 U+1F1F7
🇰🇼 flag: Kuwait; U+1F1F0 U+1F1FC
🇰🇾 flag: Cayman Islands; U+1F1F0 U+1F1FE
🇰🇿 flag: Kazakhstan; U+1F1F0 U+1F1FF
🇱🇦 flag: Laos; U+1F1F1 U+1F1E6
🇱🇧 flag: Lebanon; U+1F1F1 U+1F1E7
🇱🇨 flag: St. Lucia; U+1F1F1 U+1F1E8
🇱🇮 flag: Liechtenstein; U+1F1F1 U+1F1EE
🇱🇰 flag: Sri Lanka; U+1F1F1 U+1F1F0
🇱🇷 flag: Liberia; U+1F1F1 U+1F1F7
🇱🇸 flag: Lesotho; U+1F1F1 U+1F1F8
🇱🇹 flag: Lithuania; U+1F1F1 U+1F1F9
🇱🇺 flag: Luxembourg; U+1F1F1 U+1F1FA
🇱🇻 flag: Latvia; U+1F1F1 U+1F1FB
🇱🇾 flag: Libya; U+1F1F1 U+1F1FE
🇲🇦 flag: Morocco; U+1F1F2 U+1F1E6
🇲🇨 flag: Monaco; U+1F1F2 U+1F1E8
🇲🇩 flag: Moldova; U+1F1F2 U+1F1E9
🇲🇪 flag: Montenegro; U+1F1F2 U+1F1EA
🇲🇫 flag: St. Martin; U+1F1F2 U+1F1EB
🇲🇬 flag: Madagascar; U+1F1F2 U+1F1EC
🇲🇭 flag: Marshall Islands; U+1F1F2 U+1F1ED
🇲🇰 flag: Macedonia; U+1F1F2 U+1F1F0
🇲🇱 flag: Mali; U+1F1F2 U+1F1F1
🇲🇲 flag: Myanmar (Burma); U+1F1F2 U+1F1F2
🇲🇳 flag: Mongolia; U+1F1F2 U+1F1F3
🇲🇴 flag: Macau SAR China; U+1F1F2 U+1F1F4
🇲🇵 flag: Northern Mariana Islands; U+1F1F2 U+1F1F5
🇲🇶 flag: Martinique; U+1F1F2 U+1F1F6
🇲🇷 flag: Mauritania; U+1F1F2 U+1F1F7
🇲🇸 flag: Montserrat; U+1F1F2 U+1F1F8
🇲🇹 flag: Malta; U+1F1F2 U+1F1F9
🇲🇺 flag: Mauritius; U+1F1F2 U+1F1FA
🇲🇻 flag: Maldives; U+1F1F2 U+1F1FB
🇲🇼 flag: Malawi; U+1F1F2 U+1F1FC
🇲🇽 flag: Mexico; U+1F1F2 U+1F1FD
🇲🇾 flag: Malaysia; U+1F1F2 U+1F1FE
🇲🇿 flag: Mozambique; U+1F1F2 U+1F1FF
🇳🇦 flag: Namibia; U+1F1F3 U+1F1E6
🇳🇨 flag: New Caledonia; U+1F1F3 U+1F1E8
🇳🇪 flag: Niger; U+1F1F3 U+1F1EA
🇳🇫 flag: Norfolk Island; U+1F1F3 U+1F1EB
🇳🇬 flag: Nigeria; U+1F1F3 U+1F1EC
🇳🇮 flag: Nicaragua; U+1F1F3 U+1F1EE
🇳🇱 flag: Netherlands; U+1F1F3 U+1F1F1
🇳🇴 flag: Norway; U+1F1F3 U+1F1F4
🇳🇵 flag: Nepal; U+1F1F3 U+1F1F5
🇳🇷 flag: Nauru; U+1F1F3 U+1F1F7
🇳🇺 flag: Niue; U+1F1F3 U+1F1FA
🇳🇿 flag: New Zealand; U+1F1F3 U+1F1FF
🇴🇲 flag: Oman; U+1F1F4 U+1F1F2
🇵🇦 flag: Panama; U+1F1F5 U+1F1E6
🇵🇪 flag: Peru; U+1F1F5 U+1F1EA
🇵🇫 flag: French Polynesia; U+1F1F5 U+1F1EB
🇵🇬 flag: Papua New Guinea; U+1F1F5 U+1F1EC
🇵🇭 flag: Philippines; U+1F1F5 U+1F1ED
🇵🇰 flag: Pakistan; U+1F1F5 U+1F1F0
🇵🇱 flag: Poland; U+1F1F5 U+1F1F1
🇵🇲 flag: St. Pierre & Miquelon; U+1F1F5 U+1F1F2
🇵🇳 flag: Pitcairn Islands; U+1F1F5 U+1F1F3
🇵🇷 flag: Puerto Rico; U+1F1F5 U+1F1F7
🇵🇸 flag: Palestinian Territories; U+1F1F5 U+1F1F8
🇵🇹 flag: Portugal; U+1F1F5 U+1F1F9
🇵🇼 flag: Palau; U+1F1F5 U+1F1FC
🇵🇾 flag: Paraguay; U+1F1F5 U+1F1FE
🇶🇦 flag: Qatar; U+1F1F6 U+1F1E6
🇷🇪 flag: Réunion; U+1F1F7 U+1F1EA
🇷🇴 flag: Romania; U+1F1F7 U+1F1F4
🇷🇸 flag: Serbia; U+1F1F7 U+1F1F8
🇷🇺 flag: Russia; U+1F1F7 U+1F1FA
🇷🇼 flag: Rwanda; U+1F1F7 U+1F1FC
🇸🇦 flag: Saudi Arabia; U+1F1F8 U+1F1E6
🇸🇧 flag: Solomon Islands; U+1F1F8 U+1F1E7
🇸🇨 flag: Seychelles; U+1F1F8 U+1F1E8
🇸🇩 flag: Sudan; U+1F1F8 U+1F1E9
🇸🇪 flag: Sweden; U+1F1F8 U+1F1EA
🇸🇬 flag: Singapore; U+1F1F8 U+1F1EC
🇸🇭 flag: St. Helena; U+1F1F8 U+1F1ED
🇸🇮 flag: Slovenia; U+1F1F8 U+1F1EE
🇸🇯 flag: Svalbard & Jan Mayen; U+1F1F8 U+1F1EF
🇸🇰 flag: Slovakia; U+1F1F8 U+1F1F0
🇸🇱 flag: Sierra Leone; U+1F1F8 U+1F1F1
🇸🇲 flag: San Marino; U+1F1F8 U+1F1F2
🇸🇳 flag: Senegal; U+1F1F8 U+1F1F3
🇸🇴 flag: Somalia; U+1F1F8 U+1F1F4
🇸🇷 flag: Suriname; U+1F1F8 U+1F1F7
🇸🇸 flag: South Sudan; U+1F1F8 U+1F1F8
🇸🇹 flag: São Tomé & Príncipe; U+1F1F8 U+1F1F9
🇸🇻 flag: El Salvador; U+1F1F8 U+1F1FB
🇸🇽 flag: Sint Maarten; U+1F1F8 U+1F1FD
🇸🇾 flag: Syria; U+1F1F8 U+1F1FE
🇸🇿 flag: Swaziland; U+1F1F8 U+1F1FF
🇹🇦 flag: Tristan da Cunha; U+1F1F9 U+1F1E6
🇹🇨 flag: Turks & Caicos Islands; U+1F1F9 U+1F1E8
🇹🇩 flag: Chad; U+1F1F9 U+1F1E9
🇹🇫 flag: French Southern Territories; U+1F1F9 U+1F1EB
🇹🇬 flag: Togo; U+1F1F9 U+1F1EC
🇹🇭 flag: Thailand; U+1F1F9 U+1F1ED
🇹🇯 flag: Tajikistan; U+1F1F9 U+1F1EF
🇹🇰 flag: Tokelau; U+1F1F9 U+1F1F0
🇹🇱 flag: Timor-Leste; U+1F1F9 U+1F1F1
🇹🇲 flag: Turkmenistan; U+1F1F9 U+1F1F2
🇹🇳 flag: Tunisia; U+1F1F9 U+1F1F3
🇹🇴 flag: Tonga; U+1F1F9 U+1F1F4
🇹🇷 flag: Turkey; U+1F1F9 U+1F1F7
🇹🇹 flag: Trinidad & Tobago; U+1F1F9 U+1F1F9
🇹🇻 flag: Tuvalu; U+1F1F9 U+1F1FB
🇹🇼 flag: Taiwan; U+1F1F9 U+1F1FC
🇹🇿 flag: Tanzania; U+1F1F9 U+1F1FF
🇺🇦 flag: Ukraine; U+1F1FA U+1F1E6
🇺🇬 flag: Uganda; U+1F1FA U+1F1EC
🇺🇲 flag: U.S. Outlying Islands; U+1F1FA U+1F1F2
🇺🇳 flag: United Nations; U+1F1FA U+1F1F3
🇺🇸 flag: United States; U+1F1FA U+1F1F8
🇺🇾 flag: Uruguay; U+1F1FA U+1F1FE
🇺🇿 flag: Uzbekistan; U+1F1FA U+1F1FF
🇻🇦 flag: Vatican City; U+1F1FB U+1F1E6
🇻🇨 flag: St. Vincent & Grenadines; U+1F1FB U+1F1E8
🇻🇪 flag: Venezuela; U+1F1FB U+1F1EA
🇻🇬 flag: British Virgin Islands; U+1F1FB U+1F1EC
🇻🇮 flag: U.S. Virgin Islands; U+1F1FB U+1F1EE
🇻🇳 flag: Vietnam; U+1F1FB U+1F1F3
🇻🇺 flag: Vanuatu; U+1F1FB U+1F1FA
🇼🇫 flag: Wallis & Futuna; U+1F1FC U+1F1EB
🇼🇸 flag: Samoa; U+1F1FC U+1F1F8
🇽🇰 flag: Kosovo; U+1F1FD U+1F1F0
🇾🇪 flag: Yemen; U+1F1FE U+1F1EA
🇾🇹 flag: Mayotte; U+1F1FE U+1F1F9
🇿🇦 flag: South Africa; U+1F1FF U+1F1E6
🇿🇲 flag: Zambia; U+1F1FF U+1F1F2
🇿🇼 flag: Zimbabwe; U+1F1FF U+1F1FC
🏴󠁧󠁢󠁥󠁮󠁧󠁿 flag: England; U+1F3F4 U+E0067 U+E0062 U+E0065 U+E006E U+E0067 U+E007F
🏴󠁧󠁢󠁳󠁣󠁴󠁿 flag: Scotland; U+1F3F4 U+E0067 U+E0062 U+E0073 U+E0063 U+E0074 U+E007F
🏴󠁧󠁢󠁷󠁬󠁳󠁿 flag: Wales; U+1F3F4 U+E0067 U+E0062 U+E0077 U+E006C U+E0073 U+E007F
 fa-ad; U+F641
 fa-address-book; U+F2B9
 fa-address-card; U+F2BB
 fa-adjust; U+F042
 fa-air-freshener; U+F5D0
 fa-align-center; U+F037
 fa-align-justify; U+F039
 fa-align-left; U+F036
 fa-align-right; U+F038
 fa-allergies; U+F461
 fa-ambulance; U+F0F9
 fa-american-sign-language-interpreting; U+F2A3
 fa-anchor; U+F13D
 fa-angle-double-down; U+F103
 fa-angle-double-left; U+F100
 fa-angle-double-right; U+F101
 fa-angle-double-up; U+F102
 fa-angle-down; U+F107
 fa-angle-left; U+F104
 fa-angle-right; U+F105
 fa-angle-up; U+F106
 fa-angry; U+F556
 fa-ankh; U+F644
 fa-apple-alt; U+F5D1
 fa-archive; U+F187
 fa-archway; U+F557
 fa-arrow-alt-circle-down; U+F358
 fa-arrow-alt-circle-left; U+F359
 fa-arrow-alt-circle-right; U+F35A
 fa-arrow-alt-circle-up; U+F35B
 fa-arrow-circle-down; U+F0AB
 fa-arrow-circle-left; U+F0A8
 fa-arrow-circle-right; U+F0A9
 fa-arrow-circle-up; U+F0AA
 fa-arrow-down; U+F063
 fa-arrow-left; U+F060
 fa-arrow-right; U+F061
 fa-arrow-up; U+F062
 fa-arrows-alt; U+F0B2
 fa-arrows-alt-h; U+F337
 fa-arrows-alt-v; U+F338
 fa-assistive-listening-systems; U+F2A2
 fa-asterisk; U+F069
 fa-at; U+F1FA
 fa-atlas; U+F558
 fa-atom; U+F5D2
 fa-audio-description; U+F29E
 fa-award; U+F559
 fa-baby; U+F77C
 fa-baby-carriage; U+F77D
 fa-backspace; U+F55A
 fa-backward; U+F04A
 fa-balance-scale; U+F24E
 fa-ban; U+F05E
 fa-band-aid; U+F462
 fa-barcode; U+F02A
 fa-bars; U+F0C9
 fa-baseball-ball; U+F433
 fa-basketball-ball; U+F434
 fa-bath; U+F2CD
 fa-battery-empty; U+F244
 fa-battery-full; U+F240
 fa-battery-half; U+F242
 fa-battery-quarter; U+F243
 fa-battery-three-quarters; U+F241
 fa-bed; U+F236
 fa-beer; U+F0FC
 fa-bell; U+F0F3
 fa-bell-slash; U+F1F6
 fa-bezier-curve; U+F55B
 fa-bible; U+F647
 fa-bicycle; U+F206
 fa-binoculars; U+F1E5
 fa-biohazard; U+F780
 fa-birthday-cake; U+F1FD
 fa-blender; U+F517
 fa-blender-phone; U+F6B6
 fa-blind; U+F29D
 fa-blog; U+F781
 fa-bold; U+F032
 fa-bolt; U+F0E7
 fa-bomb; U+F1E2
 fa-bone; U+F5D7
 fa-bong; U+F55C
 fa-book; U+F02D
 fa-book-dead; U+F6B7
 fa-book-open; U+F518
 fa-book-reader; U+F5DA
 fa-bookmark; U+F02E
 fa-bowling-ball; U+F436
 fa-box; U+F466
 fa-box-open; U+F49E
 fa-boxes; U+F468
 fa-braille; U+F2A1
 fa-brain; U+F5DC
 fa-briefcase; U+F0B1
 fa-briefcase-medical; U+F469
 fa-broadcast-tower; U+F519
 fa-broom; U+F51A
 fa-brush; U+F55D
 fa-bug; U+F188
 fa-building; U+F1AD
 fa-bullhorn; U+F0A1
 fa-bullseye; U+F140
 fa-burn; U+F46A
 fa-bus; U+F207
 fa-bus-alt; U+F55E
 fa-business-time; U+F64A
 fa-calculator; U+F1EC
 fa-calendar; U+F133
 fa-calendar-alt; U+F073
 fa-calendar-check; U+F274
 fa-calendar-day; U+F783
 fa-calendar-minus; U+F272
 fa-calendar-plus; U+F271
 fa-calendar-times; U+F273
 fa-calendar-week; U+F784
 fa-camera; U+F030
 fa-camera-retro; U+F083
 fa-campground; U+F6BB
 fa-candy-cane; U+F786
 fa-cannabis; U+F55F
 fa-capsules; U+F46B
 fa-car; U+F1B9
 fa-car-alt; U+F5DE
 fa-car-battery; U+F5DF
 fa-car-crash; U+F5E1
 fa-car-side; U+F5E4
 fa-caret-down; U+F0D7
 fa-caret-left; U+F0D9
 fa-caret-right; U+F0DA
 fa-caret-square-down; U+F150
 fa-caret-square-left; U+F191
 fa-caret-square-right; U+F152
 fa-caret-square-up; U+F151
 fa-caret-up; U+F0D8
 fa-carrot; U+F787
 fa-cart-arrow-down; U+F218
 fa-cart-plus; U+F217
 fa-cash-register; U+F788
 fa-cat; U+F6BE
 fa-certificate; U+F0A3
 fa-chair; U+F6C0
 fa-chalkboard; U+F51B
 fa-chalkboard-teacher; U+F51C
 fa-charging-station; U+F5E7
 fa-chart-area; U+F1FE
 fa-chart-bar; U+F080
 fa-chart-line; U+F201
 fa-chart-pie; U+F200
 fa-check; U+F00C
 fa-check-circle; U+F058
 fa-check-double; U+F560
 fa-check-square; U+F14A
 fa-chess; U+F439
 fa-chess-bishop; U+F43A
 fa-chess-board; U+F43C
 fa-chess-king; U+F43F
 fa-chess-knight; U+F441
 fa-chess-pawn; U+F443
 fa-chess-queen; U+F445
 fa-chess-rook; U+F447
 fa-chevron-circle-down; U+F13A
 fa-chevron-circle-left; U+F137
 fa-chevron-circle-right; U+F138
 fa-chevron-circle-up; U+F139
 fa-chevron-down; U+F078
 fa-chevron-left; U+F053
 fa-chevron-right; U+F054
 fa-chevron-up; U+F077
 fa-child; U+F1AE
 fa-church; U+F51D
 fa-circle; U+F111
 fa-circle-notch; U+F1CE
 fa-city; U+F64F
 fa-clipboard; U+F328
 fa-clipboard-check; U+F46C
 fa-clipboard-list; U+F46D
 fa-clock; U+F017
 fa-clone; U+F24D
 fa-closed-captioning; U+F20A
 fa-cloud; U+F0C2
 fa-cloud-download-alt; U+F381
 fa-cloud-meatball; U+F73B
 fa-cloud-moon; U+F6C3
 fa-cloud-moon-rain; U+F73C
 fa-cloud-rain; U+F73D
 fa-cloud-showers-heavy; U+F740
 fa-cloud-sun; U+F6C4
 fa-cloud-sun-rain; U+F743
 fa-cloud-upload-alt; U+F382
 fa-cocktail; U+F561
 fa-code; U+F121
 fa-code-branch; U+F126
 fa-coffee; U+F0F4
 fa-cog; U+F013
 fa-cogs; U+F085
 fa-coins; U+F51E
 fa-columns; U+F0DB
 fa-comment; U+F075
 fa-comment-alt; U+F27A
 fa-comment-dollar; U+F651
 fa-comment-dots; U+F4AD
 fa-comment-slash; U+F4B3
 fa-comments; U+F086
 fa-comments-dollar; U+F653
 fa-compact-disc; U+F51F
 fa-compass; U+F14E
 fa-compress; U+F066
 fa-compress-arrows-alt; U+F78C
 fa-concierge-bell; U+F562
 fa-cookie; U+F563
 fa-cookie-bite; U+F564
 fa-copy; U+F0C5
 fa-copyright; U+F1F9
 fa-couch; U+F4B8
 fa-credit-card; U+F09D
 fa-crop; U+F125
 fa-crop-alt; U+F565
 fa-cross; U+F654
 fa-crosshairs; U+F05B
 fa-crow; U+F520
 fa-crown; U+F521
 fa-cube; U+F1B2
 fa-cubes; U+F1B3
 fa-cut; U+F0C4
 fa-database; U+F1C0
 fa-deaf; U+F2A4
 fa-democrat; U+F747
 fa-desktop; U+F108
 fa-dharmachakra; U+F655
 fa-diagnoses; U+F470
 fa-dice; U+F522
 fa-dice-d20; U+F6CF
 fa-dice-d6; U+F6D1
 fa-dice-five; U+F523
 fa-dice-four; U+F524
 fa-dice-one; U+F525
 fa-dice-six; U+F526
 fa-dice-three; U+F527
 fa-dice-two; U+F528
 fa-digital-tachograph; U+F566
 fa-directions; U+F5EB
 fa-divide; U+F529
 fa-dizzy; U+F567
 fa-dna; U+F471
 fa-dog; U+F6D3
 fa-dollar-sign; U+F155
 fa-dolly; U+F472
 fa-dolly-flatbed; U+F474
 fa-donate; U+F4B9
 fa-door-closed; U+F52A
 fa-door-open; U+F52B
 fa-dot-circle; U+F192
 fa-dove; U+F4BA
 fa-download; U+F019
 fa-drafting-compass; U+F568
 fa-dragon; U+F6D5
 fa-draw-polygon; U+F5EE
 fa-drum; U+F569
 fa-drum-steelpan; U+F56A
 fa-drumstick-bite; U+F6D7
 fa-dumbbell; U+F44B
 fa-dumpster; U+F793
 fa-dumpster-fire; U+F794
 fa-dungeon; U+F6D9
 fa-edit; U+F044
 fa-eject; U+F052
 fa-ellipsis-h; U+F141
 fa-ellipsis-v; U+F142
 fa-envelope; U+F0E0
 fa-envelope-open; U+F2B6
 fa-envelope-open-text; U+F658
 fa-envelope-square; U+F199
 fa-equals; U+F52C
 fa-eraser; U+F12D
 fa-ethernet; U+F796
 fa-euro-sign; U+F153
 fa-exchange-alt; U+F362
 fa-exclamation; U+F12A
 fa-exclamation-circle; U+F06A
 fa-exclamation-triangle; U+F071
 fa-expand; U+F065
 fa-expand-arrows-alt; U+F31E
 fa-external-link-alt; U+F35D
 fa-external-link-square-alt; U+F360
 fa-eye; U+F06E
 fa-eye-dropper; U+F1FB
 fa-eye-slash; U+F070
 fa-fast-backward; U+F049
 fa-fast-forward; U+F050
 fa-fax; U+F1AC
 fa-feather; U+F52D
 fa-feather-alt; U+F56B
 fa-female; U+F182
 fa-fighter-jet; U+F0FB
 fa-file; U+F15B
 fa-file-alt; U+F15C
 fa-file-archive; U+F1C6
 fa-file-audio; U+F1C7
 fa-file-code; U+F1C9
 fa-file-contract; U+F56C
 fa-file-csv; U+F6DD
 fa-file-download; U+F56D
 fa-file-excel; U+F1C3
 fa-file-export; U+F56E
 fa-file-image; U+F1C5
 fa-file-import; U+F56F
 fa-file-invoice; U+F570
 fa-file-invoice-dollar; U+F571
 fa-file-medical; U+F477
 fa-file-medical-alt; U+F478
 fa-file-pdf; U+F1C1
 fa-file-powerpoint; U+F1C4
 fa-file-prescription; U+F572
 fa-file-signature; U+F573
 fa-file-upload; U+F574
 fa-file-video; U+F1C8
 fa-file-word; U+F1C2
 fa-fill; U+F575
 fa-fill-drip; U+F576
 fa-film; U+F008
 fa-filter; U+F0B0
 fa-fingerprint; U+F577
 fa-fire; U+F06D
 fa-fire-alt; U+F7E4
 fa-fire-extinguisher; U+F134
 fa-first-aid; U+F479
 fa-fish; U+F578
 fa-fist-raised; U+F6DE
 fa-flag; U+F024
 fa-flag-checkered; U+F11E
 fa-flag-usa; U+F74D
 fa-flask; U+F0C3
 fa-flushed; U+F579
 fa-folder; U+F07B
 fa-folder-minus; U+F65D
 fa-folder-open; U+F07C
 fa-folder-plus; U+F65E
 fa-font; U+F031
 fa-font-awesome-logo-full; U+F4E6
 fa-football-ball; U+F44E
 fa-forward; U+F04E
 fa-frog; U+F52E
 fa-frown; U+F119
 fa-frown-open; U+F57A
 fa-funnel-dollar; U+F662
 fa-futbol; U+F1E3
 fa-gamepad; U+F11B
 fa-gas-pump; U+F52F
 fa-gavel; U+F0E3
 fa-gem; U+F3A5
 fa-genderless; U+F22D
 fa-ghost; U+F6E2
 fa-gift; U+F06B
 fa-gifts; U+F79C
 fa-glass-cheers; U+F79F
 fa-glass-martini; U+F000
 fa-glass-martini-alt; U+F57B
 fa-glass-whiskey; U+F7A0
 fa-glasses; U+F530
 fa-globe; U+F0AC
 fa-globe-africa; U+F57C
 fa-globe-americas; U+F57D
 fa-globe-asia; U+F57E
 fa-globe-europe; U+F7A2
 fa-golf-ball; U+F450
 fa-gopuram; U+F664
 fa-graduation-cap; U+F19D
 fa-greater-than; U+F531
 fa-greater-than-equal; U+F532
 fa-grimace; U+F57F
 fa-grin; U+F580
 fa-grin-alt; U+F581
 fa-grin-beam; U+F582
 fa-grin-beam-sweat; U+F583
 fa-grin-hearts; U+F584
 fa-grin-squint; U+F585
 fa-grin-squint-tears; U+F586
 fa-grin-stars; U+F587
 fa-grin-tears; U+F588
 fa-grin-tongue; U+F589
 fa-grin-tongue-squint; U+F58A
 fa-grin-tongue-wink; U+F58B
 fa-grin-wink; U+F58C
 fa-grip-horizontal; U+F58D
 fa-grip-lines; U+F7A4
 fa-grip-lines-vertical; U+F7A5
 fa-grip-vertical; U+F58E
 fa-guitar; U+F7A6
 fa-h-square; U+F0FD
 fa-hammer; U+F6E3
 fa-hamsa; U+F665
 fa-hand-holding; U+F4BD
 fa-hand-holding-heart; U+F4BE
 fa-hand-holding-usd; U+F4C0
 fa-hand-lizard; U+F258
 fa-hand-paper; U+F256
 fa-hand-peace; U+F25B
 fa-hand-point-down; U+F0A7
 fa-hand-point-left; U+F0A5
 fa-hand-point-right; U+F0A4
 fa-hand-point-up; U+F0A6
 fa-hand-pointer; U+F25A
 fa-hand-rock; U+F255
 fa-hand-scissors; U+F257
 fa-hand-spock; U+F259
 fa-hands; U+F4C2
 fa-hands-helping; U+F4C4
 fa-handshake; U+F2B5
 fa-hanukiah; U+F6E6
 fa-hashtag; U+F292
 fa-hat-wizard; U+F6E8
 fa-haykal; U+F666
 fa-hdd; U+F0A0
 fa-heading; U+F1DC
 fa-headphones; U+F025
 fa-headphones-alt; U+F58F
 fa-headset; U+F590
 fa-heart; U+F004
 fa-heart-broken; U+F7A9
 fa-heartbeat; U+F21E
 fa-helicopter; U+F533
 fa-highlighter; U+F591
 fa-hiking; U+F6EC
 fa-hippo; U+F6ED
 fa-history; U+F1DA
 fa-hockey-puck; U+F453
 fa-holly-berry; U+F7AA
 fa-home; U+F015
 fa-horse; U+F6F0
 fa-horse-head; U+F7AB
 fa-hospital; U+F0F8
 fa-hospital-alt; U+F47D
 fa-hospital-symbol; U+F47E
 fa-hot-tub; U+F593
 fa-hotel; U+F594
 fa-hourglass; U+F254
 fa-hourglass-end; U+F253
 fa-hourglass-half; U+F252
 fa-hourglass-start; U+F251
 fa-house-damage; U+F6F1
 fa-hryvnia; U+F6F2
 fa-i-cursor; U+F246
 fa-icicles; U+F7AD
 fa-id-badge; U+F2C1
 fa-id-card; U+F2C2
 fa-id-card-alt; U+F47F
 fa-igloo; U+F7AE
 fa-image; U+F03E
 fa-images; U+F302
 fa-inbox; U+F01C
 fa-indent; U+F03C
 fa-industry; U+F275
 fa-infinity; U+F534
 fa-info; U+F129
 fa-info-circle; U+F05A
 fa-italic; U+F033
 fa-jedi; U+F669
 fa-joint; U+F595
 fa-journal-whills; U+F66A
 fa-kaaba; U+F66B
 fa-key; U+F084
 fa-keyboard; U+F11C
 fa-khanda; U+F66D
 fa-kiss; U+F596
 fa-kiss-beam; U+F597
 fa-kiss-wink-heart; U+F598
 fa-kiwi-bird; U+F535
 fa-landmark; U+F66F
 fa-language; U+F1AB
 fa-laptop; U+F109
 fa-laptop-code; U+F5FC
 fa-laugh; U+F599
 fa-laugh-beam; U+F59A
 fa-laugh-squint; U+F59B
 fa-laugh-wink; U+F59C
 fa-layer-group; U+F5FD
 fa-leaf; U+F06C
 fa-lemon; U+F094
 fa-less-than; U+F536
 fa-less-than-equal; U+F537
 fa-level-down-alt; U+F3BE
 fa-level-up-alt; U+F3BF
 fa-life-ring; U+F1CD
 fa-lightbulb; U+F0EB
 fa-link; U+F0C1
 fa-lira-sign; U+F195
 fa-list; U+F03A
 fa-list-alt; U+F022
 fa-list-ol; U+F0CB
 fa-list-ul; U+F0CA
 fa-location-arrow; U+F124
 fa-lock; U+F023
 fa-lock-open; U+F3C1
 fa-long-arrow-alt-down; U+F309
 fa-long-arrow-alt-left; U+F30A
 fa-long-arrow-alt-right; U+F30B
 fa-long-arrow-alt-up; U+F30C
 fa-low-vision; U+F2A8
 fa-luggage-cart; U+F59D
 fa-magic; U+F0D0
 fa-magnet; U+F076
 fa-mail-bulk; U+F674
 fa-male; U+F183
 fa-map; U+F279
 fa-map-marked; U+F59F
 fa-map-marked-alt; U+F5A0
 fa-map-marker; U+F041
 fa-map-marker-alt; U+F3C5
 fa-map-pin; U+F276
 fa-map-signs; U+F277
 fa-marker; U+F5A1
 fa-mars; U+F222
 fa-mars-double; U+F227
 fa-mars-stroke; U+F229
 fa-mars-stroke-h; U+F22B
 fa-mars-stroke-v; U+F22A
 fa-mask; U+F6FA
 fa-medal; U+F5A2
 fa-medkit; U+F0FA
 fa-meh; U+F11A
 fa-meh-blank; U+F5A4
 fa-meh-rolling-eyes; U+F5A5
 fa-memory; U+F538
 fa-menorah; U+F676
 fa-mercury; U+F223
 fa-meteor; U+F753
 fa-microchip; U+F2DB
 fa-microphone; U+F130
 fa-microphone-alt; U+F3C9
 fa-microphone-alt-slash; U+F539
 fa-microphone-slash; U+F131
 fa-microscope; U+F610
 fa-minus; U+F068
 fa-minus-circle; U+F056
 fa-minus-square; U+F146
 fa-mitten; U+F7B5
 fa-mobile; U+F10B
 fa-mobile-alt; U+F3CD
 fa-money-bill; U+F0D6
 fa-money-bill-alt; U+F3D1
 fa-money-bill-wave; U+F53A
 fa-money-bill-wave-alt; U+F53B
 fa-money-check; U+F53C
 fa-money-check-alt; U+F53D
 fa-monument; U+F5A6
 fa-moon; U+F186
 fa-mortar-pestle; U+F5A7
 fa-mosque; U+F678
 fa-motorcycle; U+F21C
 fa-mountain; U+F6FC
 fa-mouse-pointer; U+F245
 fa-mug-hot; U+F7B6
 fa-music; U+F001
 fa-network-wired; U+F6FF
 fa-neuter; U+F22C
 fa-newspaper; U+F1EA
 fa-not-equal; U+F53E
 fa-notes-medical; U+F481
 fa-object-group; U+F247
 fa-object-ungroup; U+F248
 fa-oil-can; U+F613
 fa-om; U+F679
 fa-otter; U+F700
 fa-outdent; U+F03B
 fa-paint-brush; U+F1FC
 fa-paint-roller; U+F5AA
 fa-palette; U+F53F
 fa-pallet; U+F482
 fa-paper-plane; U+F1D8
 fa-paperclip; U+F0C6
 fa-parachute-box; U+F4CD
 fa-paragraph; U+F1DD
 fa-parking; U+F540
 fa-passport; U+F5AB
 fa-pastafarianism; U+F67B
 fa-paste; U+F0EA
 fa-pause; U+F04C
 fa-pause-circle; U+F28B
 fa-paw; U+F1B0
 fa-peace; U+F67C
 fa-pen; U+F304
 fa-pen-alt; U+F305
 fa-pen-fancy; U+F5AC
 fa-pen-nib; U+F5AD
 fa-pen-square; U+F14B
 fa-pencil-alt; U+F303
 fa-pencil-ruler; U+F5AE
 fa-people-carry; U+F4CE
 fa-percent; U+F295
 fa-percentage; U+F541
 fa-person-booth; U+F756
 fa-phone; U+F095
 fa-phone-slash; U+F3DD
 fa-phone-square; U+F098
 fa-phone-volume; U+F2A0
 fa-piggy-bank; U+F4D3
 fa-pills; U+F484
 fa-place-of-worship; U+F67F
 fa-plane; U+F072
 fa-plane-arrival; U+F5AF
 fa-plane-departure; U+F5B0
 fa-play; U+F04B
 fa-play-circle; U+F144
 fa-plug; U+F1E6
 fa-plus; U+F067
 fa-plus-circle; U+F055
 fa-plus-square; U+F0FE
 fa-podcast; U+F2CE
 fa-poll; U+F681
 fa-poll-h; U+F682
 fa-poo; U+F2FE
 fa-poo-storm; U+F75A
 fa-poop; U+F619
 fa-portrait; U+F3E0
 fa-pound-sign; U+F154
 fa-power-off; U+F011
 fa-pray; U+F683
 fa-praying-hands; U+F684
 fa-prescription; U+F5B1
 fa-prescription-bottle; U+F485
 fa-prescription-bottle-alt; U+F486
 fa-print; U+F02F
 fa-procedures; U+F487
 fa-project-diagram; U+F542
 fa-puzzle-piece; U+F12E
 fa-qrcode; U+F029
 fa-question; U+F128
 fa-question-circle; U+F059
 fa-quidditch; U+F458
 fa-quote-left; U+F10D
 fa-quote-right; U+F10E
 fa-quran; U+F687
 fa-radiation; U+F7B9
 fa-radiation-alt; U+F7BA
 fa-rainbow; U+F75B
 fa-random; U+F074
 fa-receipt; U+F543
 fa-recycle; U+F1B8
 fa-redo; U+F01E
 fa-redo-alt; U+F2F9
 fa-registered; U+F25D
 fa-reply; U+F3E5
 fa-reply-all; U+F122
 fa-republican; U+F75E
 fa-restroom; U+F7BD
 fa-retweet; U+F079
 fa-ribbon; U+F4D6
 fa-ring; U+F70B
 fa-road; U+F018
 fa-robot; U+F544
 fa-rocket; U+F135
 fa-route; U+F4D7
 fa-rss; U+F09E
 fa-rss-square; U+F143
 fa-ruble-sign; U+F158
 fa-ruler; U+F545
 fa-ruler-combined; U+F546
 fa-ruler-horizontal; U+F547
 fa-ruler-vertical; U+F548
 fa-running; U+F70C
 fa-rupee-sign; U+F156
 fa-sad-cry; U+F5B3
 fa-sad-tear; U+F5B4
 fa-satellite; U+F7BF
 fa-satellite-dish; U+F7C0
 fa-save; U+F0C7
 fa-school; U+F549
 fa-screwdriver; U+F54A
 fa-scroll; U+F70E
 fa-sd-card; U+F7C2
 fa-search; U+F002
 fa-search-dollar; U+F688
 fa-search-location; U+F689
 fa-search-minus; U+F010
 fa-search-plus; U+F00E
 fa-seedling; U+F4D8
 fa-server; U+F233
 fa-shapes; U+F61F
 fa-share; U+F064
 fa-share-alt; U+F1E0
 fa-share-alt-square; U+F1E1
 fa-share-square; U+F14D
 fa-shekel-sign; U+F20B
 fa-shield-alt; U+F3ED
 fa-ship; U+F21A
 fa-shipping-fast; U+F48B
 fa-shoe-prints; U+F54B
 fa-shopping-bag; U+F290
 fa-shopping-basket; U+F291
 fa-shopping-cart; U+F07A
 fa-shower; U+F2CC
 fa-shuttle-van; U+F5B6
 fa-sign; U+F4D9
 fa-sign-in-alt; U+F2F6
 fa-sign-language; U+F2A7
 fa-sign-out-alt; U+F2F5
 fa-signal; U+F012
 fa-signature; U+F5B7
 fa-sim-card; U+F7C4
 fa-sitemap; U+F0E8
 fa-skating; U+F7C5
 fa-skiing; U+F7C9
 fa-skiing-nordic; U+F7CA
 fa-skull; U+F54C
 fa-skull-crossbones; U+F714
 fa-slash; U+F715
 fa-sleigh; U+F7CC
 fa-sliders-h; U+F1DE
 fa-smile; U+F118
 fa-smile-beam; U+F5B8
 fa-smile-wink; U+F4DA
 fa-smog; U+F75F
 fa-smoking; U+F48D
 fa-smoking-ban; U+F54D
 fa-sms; U+F7CD
 fa-snowboarding; U+F7CE
 fa-snowflake; U+F2DC
 fa-snowman; U+F7D0
 fa-snowplow; U+F7D2
 fa-socks; U+F696
 fa-solar-panel; U+F5BA
 fa-sort; U+F0DC
 fa-sort-alpha-down; U+F15D
 fa-sort-alpha-up; U+F15E
 fa-sort-amount-down; U+F160
 fa-sort-amount-up; U+F161
 fa-sort-down; U+F0DD
 fa-sort-numeric-down; U+F162
 fa-sort-numeric-up; U+F163
 fa-sort-up; U+F0DE
 fa-spa; U+F5BB
 fa-space-shuttle; U+F197
 fa-spider; U+F717
 fa-spinner; U+F110
 fa-splotch; U+F5BC
 fa-spray-can; U+F5BD
 fa-square; U+F0C8
 fa-square-full; U+F45C
 fa-square-root-alt; U+F698
 fa-stamp; U+F5BF
 fa-star; U+F005
 fa-star-and-crescent; U+F699
 fa-star-half; U+F089
 fa-star-half-alt; U+F5C0
 fa-star-of-david; U+F69A
 fa-star-of-life; U+F621
 fa-step-backward; U+F048
 fa-step-forward; U+F051
 fa-stethoscope; U+F0F1
 fa-sticky-note; U+F249
 fa-stop; U+F04D
 fa-stop-circle; U+F28D
 fa-stopwatch; U+F2F2
 fa-store; U+F54E
 fa-store-alt; U+F54F
 fa-stream; U+F550
 fa-street-view; U+F21D
 fa-strikethrough; U+F0CC
 fa-stroopwafel; U+F551
 fa-subscript; U+F12C
 fa-subway; U+F239
 fa-suitcase; U+F0F2
 fa-suitcase-rolling; U+F5C1
 fa-sun; U+F185
 fa-superscript; U+F12B
 fa-surprise; U+F5C2
 fa-swatchbook; U+F5C3
 fa-swimmer; U+F5C4
 fa-swimming-pool; U+F5C5
 fa-synagogue; U+F69B
 fa-sync; U+F021
 fa-sync-alt; U+F2F1
 fa-syringe; U+F48E
 fa-table; U+F0CE
 fa-table-tennis; U+F45D
 fa-tablet; U+F10A
 fa-tablet-alt; U+F3FA
 fa-tablets; U+F490
 fa-tachometer-alt; U+F3FD
 fa-tag; U+F02B
 fa-tags; U+F02C
 fa-tape; U+F4DB
 fa-tasks; U+F0AE
 fa-taxi; U+F1BA
 fa-teeth; U+F62E
 fa-teeth-open; U+F62F
 fa-temperature-high; U+F769
 fa-temperature-low; U+F76B
 fa-tenge; U+F7D7
 fa-terminal; U+F120
 fa-text-height; U+F034
 fa-text-width; U+F035
 fa-th; U+F00A
 fa-th-large; U+F009
 fa-th-list; U+F00B
 fa-theater-masks; U+F630
 fa-thermometer; U+F491
 fa-thermometer-empty; U+F2CB
 fa-thermometer-full; U+F2C7
 fa-thermometer-half; U+F2C9
 fa-thermometer-quarter; U+F2CA
 fa-thermometer-three-quarters; U+F2C8
 fa-thumbs-down; U+F165
 fa-thumbs-up; U+F164
 fa-thumbtack; U+F08D
 fa-ticket-alt; U+F3FF
 fa-times; U+F00D
 fa-times-circle; U+F057
 fa-tint; U+F043
 fa-tint-slash; U+F5C7
 fa-tired; U+F5C8
 fa-toggle-off; U+F204
 fa-toggle-on; U+F205
 fa-toilet; U+F7D8
 fa-toilet-paper; U+F71E
 fa-toolbox; U+F552
 fa-tools; U+F7D9
 fa-tooth; U+F5C9
 fa-torah; U+F6A0
 fa-torii-gate; U+F6A1
 fa-tractor; U+F722
 fa-trademark; U+F25C
 fa-traffic-light; U+F637
 fa-train; U+F238
 fa-tram; U+F7DA
 fa-transgender; U+F224
 fa-transgender-alt; U+F225
 fa-trash; U+F1F8
 fa-trash-alt; U+F2ED
 fa-tree; U+F1BB
 fa-trophy; U+F091
 fa-truck; U+F0D1
 fa-truck-loading; U+F4DE
 fa-truck-monster; U+F63B
 fa-truck-moving; U+F4DF
 fa-truck-pickup; U+F63C
 fa-tshirt; U+F553
 fa-tty; U+F1E4
 fa-tv; U+F26C
 fa-umbrella; U+F0E9
 fa-umbrella-beach; U+F5CA
 fa-underline; U+F0CD
 fa-undo; U+F0E2
 fa-undo-alt; U+F2EA
 fa-universal-access; U+F29A
 fa-university; U+F19C
 fa-unlink; U+F127
 fa-unlock; U+F09C
 fa-unlock-alt; U+F13E
 fa-upload; U+F093
 fa-user; U+F007
 fa-user-alt; U+F406
 fa-user-alt-slash; U+F4FA
 fa-user-astronaut; U+F4FB
 fa-user-check; U+F4FC
 fa-user-circle; U+F2BD
 fa-user-clock; U+F4FD
 fa-user-cog; U+F4FE
 fa-user-edit; U+F4FF
 fa-user-friends; U+F500
 fa-user-graduate; U+F501
 fa-user-injured; U+F728
 fa-user-lock; U+F502
 fa-user-md; U+F0F0
 fa-user-minus; U+F503
 fa-user-ninja; U+F504
 fa-user-plus; U+F234
 fa-user-secret; U+F21B
 fa-user-shield; U+F505
 fa-user-slash; U+F506
 fa-user-tag; U+F507
 fa-user-tie; U+F508
 fa-user-times; U+F235
 fa-users; U+F0C0
 fa-users-cog; U+F509
 fa-utensil-spoon; U+F2E5
 fa-utensils; U+F2E7
 fa-vector-square; U+F5CB
 fa-venus; U+F221
 fa-venus-double; U+F226
 fa-venus-mars; U+F228
 fa-vial; U+F492
 fa-vials; U+F493
 fa-video; U+F03D
 fa-video-slash; U+F4E2
 fa-vihara; U+F6A7
 fa-volleyball-ball; U+F45F
 fa-volume-down; U+F027
 fa-volume-mute; U+F6A9
 fa-volume-off; U+F026
 fa-volume-up; U+F028
 fa-vote-yea; U+F772
 fa-vr-cardboard; U+F729
 fa-walking; U+F554
 fa-wallet; U+F555
 fa-warehouse; U+F494
 fa-water; U+F773
 fa-weight; U+F496
 fa-weight-hanging; U+F5CD
 fa-wheelchair; U+F193
 fa-wifi; U+F1EB
 fa-wind; U+F72E
 fa-window-close; U+F410
 fa-window-maximize; U+F2D0
 fa-window-minimize; U+F2D1
 fa-window-restore; U+F2D2
 fa-wine-bottle; U+F72F
 fa-wine-glass; U+F4E3
 fa-wine-glass-alt; U+F5CE
 fa-won-sign; U+F159
 fa-wrench; U+F0AD
 fa-x-ray; U+F497
 fa-yen-sign; U+F157
 fa-yin-yang; U+F6AD
 fa-address-book; U+F2B9
 fa-address-card; U+F2BB
 fa-angry; U+F556
 fa-arrow-alt-circle-down; U+F358
 fa-arrow-alt-circle-left; U+F359
 fa-arrow-alt-circle-right; U+F35A
 fa-arrow-alt-circle-up; U+F35B
 fa-bell; U+F0F3
 fa-bell-slash; U+F1F6
 fa-bookmark; U+F02E
 fa-building; U+F1AD
 fa-calendar; U+F133
 fa-calendar-alt; U+F073
 fa-calendar-check; U+F274
 fa-calendar-minus; U+F272
 fa-calendar-plus; U+F271
 fa-calendar-times; U+F273
 fa-caret-square-down; U+F150
 fa-caret-square-left; U+F191
 fa-caret-square-right; U+F152
 fa-caret-square-up; U+F151
 fa-chart-bar; U+F080
 fa-check-circle; U+F058
 fa-check-square; U+F14A
 fa-circle; U+F111
 fa-clipboard; U+F328
 fa-clock; U+F017
 fa-clone; U+F24D
 fa-closed-captioning; U+F20A
 fa-comment; U+F075
 fa-comment-alt; U+F27A
 fa-comment-dots; U+F4AD
 fa-comments; U+F086
 fa-compass; U+F14E
 fa-copy; U+F0C5
 fa-copyright; U+F1F9
 fa-credit-card; U+F09D
 fa-dizzy; U+F567
 fa-dot-circle; U+F192
 fa-edit; U+F044
 fa-envelope; U+F0E0
 fa-envelope-open; U+F2B6
 fa-eye; U+F06E
 fa-eye-slash; U+F070
 fa-file; U+F15B
 fa-file-alt; U+F15C
 fa-file-archive; U+F1C6
 fa-file-audio; U+F1C7
 fa-file-code; U+F1C9
 fa-file-excel; U+F1C3
 fa-file-image; U+F1C5
 fa-file-pdf; U+F1C1
 fa-file-powerpoint; U+F1C4
 fa-file-video; U+F1C8
 fa-file-word; U+F1C2
 fa-flag; U+F024
 fa-flushed; U+F579
 fa-folder; U+F07B
 fa-folder-open; U+F07C
 fa-font-awesome-logo-full; U+F4E6
 fa-frown; U+F119
 fa-frown-open; U+F57A
 fa-futbol; U+F1E3
 fa-gem; U+F3A5
 fa-grimace; U+F57F
 fa-grin; U+F580
 fa-grin-alt; U+F581
 fa-grin-beam; U+F582
 fa-grin-beam-sweat; U+F583
 fa-grin-hearts; U+F584
 fa-grin-squint; U+F585
 fa-grin-squint-tears; U+F586
 fa-grin-stars; U+F587
 fa-grin-tears; U+F588
 fa-grin-tongue; U+F589
 fa-grin-tongue-squint; U+F58A
 fa-grin-tongue-wink; U+F58B
 fa-grin-wink; U+F58C
 fa-hand-lizard; U+F258
 fa-hand-paper; U+F256
 fa-hand-peace; U+F25B
 fa-hand-point-down; U+F0A7
 fa-hand-point-left; U+F0A5
 fa-hand-point-right; U+F0A4
 fa-hand-point-up; U+F0A6
 fa-hand-pointer; U+F25A
 fa-hand-rock; U+F255
 fa-hand-scissors; U+F257
 fa-hand-spock; U+F259
 fa-handshake; U+F2B5
 fa-hdd; U+F0A0
 fa-heart; U+F004
 fa-hospital; U+F0F8
 fa-hourglass; U+F254
 fa-id-badge; U+F2C1
 fa-id-card; U+F2C2
 fa-image; U+F03E
 fa-images; U+F302
 fa-keyboard; U+F11C
 fa-kiss; U+F596
 fa-kiss-beam; U+F597
 fa-kiss-wink-heart; U+F598
 fa-laugh; U+F599
 fa-laugh-beam; U+F59A
 fa-laugh-squint; U+F59B
 fa-laugh-wink; U+F59C
 fa-lemon; U+F094
 fa-life-ring; U+F1CD
 fa-lightbulb; U+F0EB
 fa-list-alt; U+F022
 fa-map; U+F279
 fa-meh; U+F11A
 fa-meh-blank; U+F5A4
 fa-meh-rolling-eyes; U+F5A5
 fa-minus-square; U+F146
 fa-money-bill-alt; U+F3D1
 fa-moon; U+F186
 fa-newspaper; U+F1EA
 fa-object-group; U+F247
 fa-object-ungroup; U+F248
 fa-paper-plane; U+F1D8
 fa-pause-circle; U+F28B
 fa-play-circle; U+F144
 fa-plus-square; U+F0FE
 fa-question-circle; U+F059
 fa-registered; U+F25D
 fa-sad-cry; U+F5B3
 fa-sad-tear; U+F5B4
 fa-save; U+F0C7
 fa-share-square; U+F14D
 fa-smile; U+F118
 fa-smile-beam; U+F5B8
 fa-smile-wink; U+F4DA
 fa-snowflake; U+F2DC
 fa-square; U+F0C8
 fa-star; U+F005
 fa-star-half; U+F089
 fa-sticky-note; U+F249
 fa-stop-circle; U+F28D
 fa-sun; U+F185
 fa-surprise; U+F5C2
 fa-thumbs-down; U+F165
 fa-thumbs-up; U+F164
 fa-times-circle; U+F057
 fa-tired; U+F5C8
 fa-trash-alt; U+F2ED
 fa-user; U+F007
 fa-user-circle; U+F2BD
 fa-window-close; U+F410
 fa-window-maximize; U+F2D0
 fa-window-minimize; U+F2D1
 fa-window-restore; U+F2D2
 fa-500px; U+F26E
 fa-accessible-icon; U+F368
 fa-accusoft; U+F369
 fa-acquisitions-incorporated; U+F6AF
 fa-adn; U+F170
 fa-adobe; U+F778
 fa-adversal; U+F36A
 fa-affiliatetheme; U+F36B
 fa-algolia; U+F36C
 fa-alipay; U+F642
 fa-amazon; U+F270
 fa-amazon-pay; U+F42C
 fa-amilia; U+F36D
 fa-android; U+F17B
 fa-angellist; U+F209
 fa-angrycreative; U+F36E
 fa-angular; U+F420
 fa-app-store; U+F36F
 fa-app-store-ios; U+F370
 fa-apper; U+F371
 fa-apple; U+F179
 fa-apple-pay; U+F415
 fa-artstation; U+F77A
 fa-asymmetrik; U+F372
 fa-atlassian; U+F77B
 fa-audible; U+F373
 fa-autoprefixer; U+F41C
 fa-avianex; U+F374
 fa-aviato; U+F421
 fa-aws; U+F375
 fa-bandcamp; U+F2D5
 fa-behance; U+F1B4
 fa-behance-square; U+F1B5
 fa-bimobject; U+F378
 fa-bitbucket; U+F171
 fa-bitcoin; U+F379
 fa-bity; U+F37A
 fa-black-tie; U+F27E
 fa-blackberry; U+F37B
 fa-blogger; U+F37C
 fa-blogger-b; U+F37D
 fa-bluetooth; U+F293
 fa-bluetooth-b; U+F294
 fa-btc; U+F15A
 fa-buromobelexperte; U+F37F
 fa-buysellads; U+F20D
 fa-canadian-maple-leaf; U+F785
 fa-cc-amazon-pay; U+F42D
 fa-cc-amex; U+F1F3
 fa-cc-apple-pay; U+F416
 fa-cc-diners-club; U+F24C
 fa-cc-discover; U+F1F2
 fa-cc-jcb; U+F24B
 fa-cc-mastercard; U+F1F1
 fa-cc-paypal; U+F1F4
 fa-cc-stripe; U+F1F5
 fa-cc-visa; U+F1F0
 fa-centercode; U+F380
 fa-centos; U+F789
 fa-chrome; U+F268
 fa-cloudscale; U+F383
 fa-cloudsmith; U+F384
 fa-cloudversify; U+F385
 fa-codepen; U+F1CB
 fa-codiepie; U+F284
 fa-confluence; U+F78D
 fa-connectdevelop; U+F20E
 fa-contao; U+F26D
 fa-cpanel; U+F388
 fa-creative-commons; U+F25E
 fa-creative-commons-by; U+F4E7
 fa-creative-commons-nc; U+F4E8
 fa-creative-commons-nc-eu; U+F4E9
 fa-creative-commons-nc-jp; U+F4EA
 fa-creative-commons-nd; U+F4EB
 fa-creative-commons-pd; U+F4EC
 fa-creative-commons-pd-alt; U+F4ED
 fa-creative-commons-remix; U+F4EE
 fa-creative-commons-sa; U+F4EF
 fa-creative-commons-sampling; U+F4F0
 fa-creative-commons-sampling-plus; U+F4F1
 fa-creative-commons-share; U+F4F2
 fa-creative-commons-zero; U+F4F3
 fa-critical-role; U+F6C9
 fa-css3; U+F13C
 fa-css3-alt; U+F38B
 fa-cuttlefish; U+F38C
 fa-d-and-d; U+F38D
 fa-d-and-d-beyond; U+F6CA
 fa-dashcube; U+F210
 fa-delicious; U+F1A5
 fa-deploydog; U+F38E
 fa-deskpro; U+F38F
 fa-dev; U+F6CC
 fa-deviantart; U+F1BD
 fa-dhl; U+F790
 fa-diaspora; U+F791
 fa-digg; U+F1A6
 fa-digital-ocean; U+F391
 fa-discord; U+F392
 fa-discourse; U+F393
 fa-dochub; U+F394
 fa-docker; U+F395
 fa-draft2digital; U+F396
 fa-dribbble; U+F17D
 fa-dribbble-square; U+F397
 fa-dropbox; U+F16B
 fa-drupal; U+F1A9
 fa-dyalog; U+F399
 fa-earlybirds; U+F39A
 fa-ebay; U+F4F4
 fa-edge; U+F282
 fa-elementor; U+F430
 fa-ello; U+F5F1
 fa-ember; U+F423
 fa-empire; U+F1D1
 fa-envira; U+F299
 fa-erlang; U+F39D
 fa-ethereum; U+F42E
 fa-etsy; U+F2D7
 fa-expeditedssl; U+F23E
 fa-facebook; U+F09A
 fa-facebook-f; U+F39E
 fa-facebook-messenger; U+F39F
 fa-facebook-square; U+F082
 fa-fantasy-flight-games; U+F6DC
 fa-fedex; U+F797
 fa-fedora; U+F798
 fa-figma; U+F799
 fa-firefox; U+F269
 fa-first-order; U+F2B0
 fa-first-order-alt; U+F50A
 fa-firstdraft; U+F3A1
 fa-flickr; U+F16E
 fa-flipboard; U+F44D
 fa-fly; U+F417
 fa-font-awesome; U+F2B4
 fa-font-awesome-alt; U+F35C
 fa-font-awesome-flag; U+F425
 fa-font-awesome-logo-full; U+F4E6
 fa-fonticons; U+F280
 fa-fonticons-fi; U+F3A2
 fa-fort-awesome; U+F286
 fa-fort-awesome-alt; U+F3A3
 fa-forumbee; U+F211
 fa-foursquare; U+F180
 fa-free-code-camp; U+F2C5
 fa-freebsd; U+F3A4
 fa-fulcrum; U+F50B
 fa-galactic-republic; U+F50C
 fa-galactic-senate; U+F50D
 fa-get-pocket; U+F265
 fa-gg; U+F260
 fa-gg-circle; U+F261
 fa-git; U+F1D3
 fa-git-square; U+F1D2
 fa-github; U+F09B
 fa-github-alt; U+F113
 fa-github-square; U+F092
 fa-gitkraken; U+F3A6
 fa-gitlab; U+F296
 fa-gitter; U+F426
 fa-glide; U+F2A5
 fa-glide-g; U+F2A6
 fa-gofore; U+F3A7
 fa-goodreads; U+F3A8
 fa-goodreads-g; U+F3A9
 fa-google; U+F1A0
 fa-google-drive; U+F3AA
 fa-google-play; U+F3AB
 fa-google-plus; U+F2B3
 fa-google-plus-g; U+F0D5
 fa-google-plus-square; U+F0D4
 fa-google-wallet; U+F1EE
 fa-gratipay; U+F184
 fa-grav; U+F2D6
 fa-gripfire; U+F3AC
 fa-grunt; U+F3AD
 fa-gulp; U+F3AE
 fa-hacker-news; U+F1D4
 fa-hacker-news-square; U+F3AF
 fa-hackerrank; U+F5F7
 fa-hips; U+F452
 fa-hire-a-helper; U+F3B0
 fa-hooli; U+F427
 fa-hornbill; U+F592
 fa-hotjar; U+F3B1
 fa-houzz; U+F27C
 fa-html5; U+F13B
 fa-hubspot; U+F3B2
 fa-imdb; U+F2D8
 fa-instagram; U+F16D
 fa-intercom; U+F7AF
 fa-internet-explorer; U+F26B
 fa-invision; U+F7B0
 fa-ioxhost; U+F208
 fa-itunes; U+F3B4
 fa-itunes-note; U+F3B5
 fa-java; U+F4E4
 fa-jedi-order; U+F50E
 fa-jenkins; U+F3B6
 fa-jira; U+F7B1
 fa-joget; U+F3B7
 fa-joomla; U+F1AA
 fa-js; U+F3B8
 fa-js-square; U+F3B9
 fa-jsfiddle; U+F1CC
 fa-kaggle; U+F5FA
 fa-keybase; U+F4F5
 fa-keycdn; U+F3BA
 fa-kickstarter; U+F3BB
 fa-kickstarter-k; U+F3BC
 fa-korvue; U+F42F
 fa-laravel; U+F3BD
 fa-lastfm; U+F202
 fa-lastfm-square; U+F203
 fa-leanpub; U+F212
 fa-less; U+F41D
 fa-line; U+F3C0
 fa-linkedin; U+F08C
 fa-linkedin-in; U+F0E1
 fa-linode; U+F2B8
 fa-linux; U+F17C
 fa-lyft; U+F3C3
 fa-magento; U+F3C4
 fa-mailchimp; U+F59E
 fa-mandalorian; U+F50F
 fa-markdown; U+F60F
 fa-mastodon; U+F4F6
 fa-maxcdn; U+F136
 fa-medapps; U+F3C6
 fa-medium; U+F23A
 fa-medium-m; U+F3C7
 fa-medrt; U+F3C8
 fa-meetup; U+F2E0
 fa-megaport; U+F5A3
 fa-mendeley; U+F7B3
 fa-microsoft; U+F3CA
 fa-mix; U+F3CB
 fa-mixcloud; U+F289
 fa-mizuni; U+F3CC
 fa-modx; U+F285
 fa-monero; U+F3D0
 fa-napster; U+F3D2
 fa-neos; U+F612
 fa-nimblr; U+F5A8
 fa-nintendo-switch; U+F418
 fa-node; U+F419
 fa-node-js; U+F3D3
 fa-npm; U+F3D4
 fa-ns8; U+F3D5
 fa-nutritionix; U+F3D6
 fa-odnoklassniki; U+F263
 fa-odnoklassniki-square; U+F264
 fa-old-republic; U+F510
 fa-opencart; U+F23D
 fa-openid; U+F19B
 fa-opera; U+F26A
 fa-optin-monster; U+F23C
 fa-osi; U+F41A
 fa-page4; U+F3D7
 fa-pagelines; U+F18C
 fa-palfed; U+F3D8
 fa-patreon; U+F3D9
 fa-paypal; U+F1ED
 fa-penny-arcade; U+F704
 fa-periscope; U+F3DA
 fa-phabricator; U+F3DB
 fa-phoenix-framework; U+F3DC
 fa-phoenix-squadron; U+F511
 fa-php; U+F457
 fa-pied-piper; U+F2AE
 fa-pied-piper-alt; U+F1A8
 fa-pied-piper-hat; U+F4E5
 fa-pied-piper-pp; U+F1A7
 fa-pinterest; U+F0D2
 fa-pinterest-p; U+F231
 fa-pinterest-square; U+F0D3
 fa-playstation; U+F3DF
 fa-product-hunt; U+F288
 fa-pushed; U+F3E1
 fa-python; U+F3E2
 fa-qq; U+F1D6
 fa-quinscape; U+F459
 fa-quora; U+F2C4
 fa-r-project; U+F4F7
 fa-raspberry-pi; U+F7BB
 fa-ravelry; U+F2D9
 fa-react; U+F41B
 fa-reacteurope; U+F75D
 fa-readme; U+F4D5
 fa-rebel; U+F1D0
 fa-red-river; U+F3E3
 fa-reddit; U+F1A1
 fa-reddit-alien; U+F281
 fa-reddit-square; U+F1A2
 fa-redhat; U+F7BC
 fa-renren; U+F18B
 fa-replyd; U+F3E6
 fa-researchgate; U+F4F8
 fa-resolving; U+F3E7
 fa-rev; U+F5B2
 fa-rocketchat; U+F3E8
 fa-rockrms; U+F3E9
 fa-safari; U+F267
 fa-sass; U+F41E
 fa-schlix; U+F3EA
 fa-scribd; U+F28A
 fa-searchengin; U+F3EB
 fa-sellcast; U+F2DA
 fa-sellsy; U+F213
 fa-servicestack; U+F3EC
 fa-shirtsinbulk; U+F214
 fa-shopware; U+F5B5
 fa-simplybuilt; U+F215
 fa-sistrix; U+F3EE
 fa-sith; U+F512
 fa-sketch; U+F7C6
 fa-skyatlas; U+F216
 fa-skype; U+F17E
 fa-slack; U+F198
 fa-slack-hash; U+F3EF
 fa-slideshare; U+F1E7
 fa-snapchat; U+F2AB
 fa-snapchat-ghost; U+F2AC
 fa-snapchat-square; U+F2AD
 fa-soundcloud; U+F1BE
 fa-sourcetree; U+F7D3
 fa-speakap; U+F3F3
 fa-spotify; U+F1BC
 fa-squarespace; U+F5BE
 fa-stack-exchange; U+F18D
 fa-stack-overflow; U+F16C
 fa-staylinked; U+F3F5
 fa-steam; U+F1B6
 fa-steam-square; U+F1B7
 fa-steam-symbol; U+F3F6
 fa-sticker-mule; U+F3F7
 fa-strava; U+F428
 fa-stripe; U+F429
 fa-stripe-s; U+F42A
 fa-studiovinari; U+F3F8
 fa-stumbleupon; U+F1A4
 fa-stumbleupon-circle; U+F1A3
 fa-superpowers; U+F2DD
 fa-supple; U+F3F9
 fa-suse; U+F7D6
 fa-teamspeak; U+F4F9
 fa-telegram; U+F2C6
 fa-telegram-plane; U+F3FE
 fa-tencent-weibo; U+F1D5
 fa-the-red-yeti; U+F69D
 fa-themeco; U+F5C6
 fa-themeisle; U+F2B2
 fa-think-peaks; U+F731
 fa-trade-federation; U+F513
 fa-trello; U+F181
 fa-tripadvisor; U+F262
 fa-tumblr; U+F173
 fa-tumblr-square; U+F174
 fa-twitch; U+F1E8
 fa-twitter; U+F099
 fa-twitter-square; U+F081
 fa-typo3; U+F42B
 fa-uber; U+F402
 fa-ubuntu; U+F7DF
 fa-uikit; U+F403
 fa-uniregistry; U+F404
 fa-untappd; U+F405
 fa-ups; U+F7E0
 fa-usb; U+F287
 fa-usps; U+F7E1
 fa-ussunnah; U+F407
 fa-vaadin; U+F408
 fa-viacoin; U+F237
 fa-viadeo; U+F2A9
 fa-viadeo-square; U+F2AA
 fa-viber; U+F409
 fa-vimeo; U+F40A
 fa-vimeo-square; U+F194
 fa-vimeo-v; U+F27D
 fa-vine; U+F1CA
 fa-vk; U+F189
 fa-vnv; U+F40B
 fa-vuejs; U+F41F
 fa-weebly; U+F5CC
 fa-weibo; U+F18A
 fa-weixin; U+F1D7
 fa-whatsapp; U+F232
 fa-whatsapp-square; U+F40C
 fa-whmcs; U+F40D
 fa-wikipedia-w; U+F266
 fa-windows; U+F17A
 fa-wix; U+F5CF
 fa-wizards-of-the-coast; U+F730
 fa-wolf-pack-battalion; U+F514
 fa-wordpress; U+F19A
 fa-wordpress-simple; U+F411
 fa-wpbeginner; U+F297
 fa-wpexplorer; U+F2DE
 fa-wpforms; U+F298
 fa-wpressr; U+F3E4
 fa-xbox; U+F412
 fa-xing; U+F168
 fa-xing-square; U+F169
 fa-y-combinator; U+F23B
 fa-yahoo; U+F19E
 fa-yandex; U+F413
 fa-yandex-international; U+F414
 fa-yarn; U+F7E3
 fa-yelp; U+F1E9
 fa-yoast; U+F2B1
 fa-youtube; U+F167
 fa-youtube-square; U+F431
 fa-zhihu; U+F63F
"
main