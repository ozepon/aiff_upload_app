#!/bin/bash
# 引数にbeatとマージしたいaiffが入ったディレクトリを指定
# ./tmpディレクトリにマージしたaiffファイルを配置

BEAT1_LENGTH=`./soxi -s ./beat_aiff/beatsound_all1.aiff`
BEAT2_LENGTH=`./soxi -s ./beat_aiff/beatsound_all2.aiff`
BEAT3_LENGTH=`./soxi -s ./beat_aiff/beatsound_all3.aiff`
BEAT4_LENGTH=`./soxi -s ./beat_aiff/beatsound_all4.aiff`
BEAT7_LENGTH=`./soxi -s ./beat_aiff/beatsound_all7.aiff`
BEAT8_LENGTH=`./soxi -s ./beat_aiff/beatsound_all8.aiff`

echo ${BEAT1_LENGTH} ${BEAT2_LENGTH} ${BEAT3_LENGTH} ${BEAT4_LENGTH} ${BEAT7_LENGTH}

INPUT_FILENAME=`basename ${1} | sed 's/\.[^\.]*$//'`
USE_BEAT="abc"

LENGTH=`./soxi -s ${1}`
if [ ${LENGTH} -gt ${BEAT4_LENGTH} ]; then
USE_BEAT=7
elif [ ${LENGTH} -gt ${BEAT3_LENGTH} ]; then
USE_BEAT=4
elif [ ${LENGTH} -gt ${BEAT2_LENGTH} ]; then
USE_BEAT=3
elif [ ${LENGTH} -gt ${BEAT1_LENGTH} ]; then
USE_BEAT=2
else
USE_BEAT=1
fi

OUTPUT_FILENAME="./aiff_all/${INPUT_FILENAME}_all.aiff"

echo "input: ${INPUT_FILENAME}, output: ${OUTPUT_FILENAME}_all.aiff"
./sox -m ./beat_aiff/beatsound_all${USE_BEAT}.aiff ${1} ${OUTPUT_FILENAME}
result=$?

echo "ttttttt1111111111111iiiiiiiiiiiiiii;;;;;;;;;;;;;:;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;i;iiiiiiiiiiiiiiiii1111111111"
echo "ttttt111111111111iiiiiiiiiiiiiiiii;;;;;;;;;;;;;;;;;;;;:;;;;;;;:;;:;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;iiiiiiiiiii;;iiiiiiii111111"
echo "tt1111111111111iiiiiiiiiiiiiiii;;;;;;;;;;;;;,;;;;;;;;;;:::;:::::::::::::::::;;;::;;;;;;;;;;;;;;;;;;;;;;iiiiiiiiiiiiiiiii1i111"
echo "t111111111111iiiiiiiiiiiiii;;;;;;;;;;;;;;;;;;;;;:::::::::::::::::::::::::::::::::::;;:;;;:;;;;;;;;;;;;;;;;iiiiiiiiiiiiiiii111"
echo "11111111111iiiiiiiiiiiiiii;;;;;;;;;;;;;;;;;;:::::::::::::::::::::::,::::::::::::::::::;::,:;;;:;;;;;;;;;;;;i;iiiiiiiiiiii;ii1"
echo "1111111111iiiiiiiiiii;;;;;;;;;;;;;;;;;;;;:::::::::::::::::::::::,::,:::::::::::::::::::::;;;;;;;;;;;;;;;;;;;;iiii;iiiiiiiiiii"
echo "1111111iiiiiiiiiiiiiii;;;;;;:;;;;;;;;:::::::::::::::::::::::::::,:::::::::::::::::::::::::::;;;;;;;;;;;;;;;;;;;i;iiiiiiiiiiii"
echo "1111111iiiiiiiiiiiii;;;;;;;;;;;;;;;;::::::::::::::::::::::::,,,:,,,::::,::::::::::::,::::::::::::;;;;;;;;;;;;;;;;iiiiiiiiiiii"
echo "1111i;iiiiiiiiiiii;;;;;;;;;it;;;;::::::::::::::::::,::,:,,,,,,,,,,,,,,,,,,:::,:,,,::::::::::::::;;;;:;;;;;;;;;;;;;iiiiiiiiiii"
echo "1111iiiiiiiiiiiiii;;;;;;;;,;;1f;;;:::::::::::::,,:,:,,,,,,,,,,,,,,,,,,,,,,,,.,::::::,,:::::::::::::;;;;;;;;;;;;;;;;;iiiiiiiii"
echo "1111iiiiiiiiiiii;;;;;;i;::f808GCGC:::,::::::::::,:,,,,,,,,,,,,,,,,,,,,,,,,,,,.,,,,::::::::::::..:::;;:;;:;;;;;;;;;;;;iiii;iii"
echo "1111iiiiiiiii;;;i;;;;;;if;fC0Gi:;C0:::::::::::,1i,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,:,::::::,,...,:::;;;;;;;;;;;;;;;;;;;iiiiii"
echo "11iiiii;iiiii;;i;;;;;;;;CtffL:,,,,i0:::::,.,if:tL:,,,,,,,,,,,::t:;,,,,,,,ti,,,,,,,,,,:::::880000..,,:;;;;;;;;;;;;;;;;i;;iiiii"
echo "ii:iiiiiiiiiiii;;;;;;;;;0LfL,.,C:,;0::::;1i:8LL0G0G8,,,,,,,t0C8C88Gt.,,,.11f80GG0,,,,,,::0000GGG0.;;::;;;;;;;;;;;;,;;;;;iiiii"
echo ":,iiiiiiii;;iii;;;;;;;;;0GfL,..,.,.00::::08@LGf;:00fG,,,,,,GfGC8GG0,,,,1tC00000GG8,,,,,:GGCLCGLG001f::;;;;;;:;;;;;;;;;;;iiiii"
echo "i1iiiiiiiiiii;;;;;t1t;;;CLLG:.G: ,88:,.,,G8,G1::i,,L0,,,,,,CG:;CCGG,,,t1;f,GGGGG088,,,,::i..,.,;LC80:::;::;::;;;;;;;;;;;iiiii"
echo "1i1iii;iiiiiii;;;iitLtf:i10C1,,,t800;,,:iGG:;;,,,,:L,,,,,,.,,;C.1:::,,,tiLf,.f;,CL0,,,,,:G,:,,,:L0880:::;:;;;;;;;;;;;;;;iiiii"
echo "1ii1iiiiii;i;;;;tLLCf8tf0GCLL:88000C1i::CGG0f:,,,:,,,,,,,,,.,.,.,.,,,,,,,,.,.:.,i0,,,,,,,1:i::.;L008C,;::;;;;;;;;;;;;;;;iiiii"
echo "111iiiiiiiiiiii;1LL0i;::1f1i0CGG800CGCtt1G0,ti,,;f,,,,,;1;itG,:::C.,..,t,,,.;;,:1:i;,,,,1:G0.,;f001:G.,,:;;;;;;;;;;;;;;;iiiii"
echo ".;. :iiiiii;iii;;ttf1;:,:1t100fi000CtLL1:::ftt:;;,:,i;itt11t1tf::ff:;;itff,,,:::1ifLtt111CiGGG00tC0:.,;,;;:;;;;;;;;;;;;;iiiii"
echo "11iiiiiiiiiiiii;;;;1Ci;:,,GC000GG000fGt11:i::,..,:;;;it1i:f1111t1fffL1iti::tL;i1;;1i1LGfCL0C.,.t,,,,:;t,:;;::;;;;;;;;;;iiiiii"
echo "1111iiiiiiiiiiii;;;:Li;:,,tL0000f1t00C11i;1;i,,,,,::,tt,..1;:t1111;111tC1,1ifi;i1;1ff:fCG0C.,:......,if:;::,;;;;;;;;iiiiiiiii"
echo "ii111ii;iiiii;i;ii;;:ii;,,:CGG000fi1000:,,t;.,..,,,,:ii...;;i:i,i1:;i;f:i.iii,:;,1Ci,,1f0G.,,.,.,..,;t1;;;:;:;;;;;;;;iiiiiiii"
echo ":ii11;iii,:iiiii;;;;CCti:,:f8880000000i ,... .....,...:....,: .::;::ii1 ; :;:;:. :,,,,iL:......,.,,;tf1;;;:;;;;;;;;;iiiiiiiii"
echo "ii1111i1iiiiiiiii;ii,:;1i:,,,,,,....tt1....,........  . ...,,,,,,:,.,:;,   :.,.:  .::.G,........,:itt1;:,:;;;;;;;;;;iiiiiiiii"
echo "111111111iiiiii;t;t;;i1tf1i::,,,....,..,:,,:,,,;,.  .......   .......,:::.. .,..  .....,,;::::;:;if,,.:,;:;1;;;;;;;;iiiiiiiii"
echo " i111111i111i;iiiLLC1G;1CiGtL:,;:,:,,.:,,,,:,......... ...      ........,:,:......,:,........,:;1,,..,,::,,,,,::;;iiiiiiiiii"
echo "11111111111itLL;:iff:i;1;;fC1;::,.i:...........          .         .  . ...,,:::...,,.  ......,;;..:,,,.,:,,:;;iiiiiiiiiiiii"
echo "ttt111111CtffLLfLLL:f:i;0LCfC,,.::,.....,.. ,                              ....,;:.:...  ... ...,,.,,.....,;;:;::::i;:;ii1111"
echo "ttttt1111tLffftLLCGfLtiCft1;i1.i,,:,,,,,..,..               ..           ....,,,,::,     .......,...:..::.:,::;,::ii;ii1i1111"
echo "ttttt1t1111fLLCG1CffftCCC1fi.,:,;,:;;,,..,..                .             .......,,:     .  ........,:.,:,,,;::,,iiii:i111111"
echo "tttttttt1111;tG000i1CLL1G0GLt1:;::,,;,.,,. .    ....         ..          ...........,       ......,.,:,,,,.:;;;;;iiii11111111"
echo "ffttttttttt1LGG8L.;fLft1fCLft1;:,....,,....    .... .......            .. ....  ...... .. .......,,,,,::::::::;;;;i1i11111111"
echo "fffftttttt1LG008000GCC:1tttit;;;;:,:;:,....    ......,.,...           . . ..       ....  . ......,,,;;;iii;:::;;11i11111111t1"
echo "fffttttftttit1L880GCL;Lttt11;,.::..;::,...     ......,.....     ..                  ..,.  ..  ....,,:;i;;;iiitt11111111111ttt"
echo "ffffffffffttttttti,,,,i;:,,:;;:i,..::,,..     .........  ..               ...        ...........,,,;;tiitCLLt111111111;1ttttt"
echo "fffffffff1fftttttti1t;Ci;,,...i::..;::........ ..... .....,. .  ..    ..   .        ...,,,..   ...,::fCiii1111i11ii1tt1;1tttt"
echo "LffLffffftfftf1ittt0000GCLLt1i;:::::.,...   .. ..      ........            .        .....,,, ..,;::tttiiii111iittttiittttffff"
echo "LLLLLLffffffft;ttttfii;::,..1ii;;;:,,..... ......      .............                .....,,....,::;1fiii1111ttttt1.;1tffft;1f"
echo "LLLLLLLLLLffffffffft1iii:,..;,....:,,...     .. ....  ........,......       .........,:,,::,.,...,;tfi11111ttttttfttfff;fffLf"
echo "fLLLLLLLLLftifffffff1iii;:,,;:,..,,,,,,......  .....,........  .........   .  ......,,,,::::,,...:itLi111ttttttffffftfffffLLL"
echo "LLLLLLL1LLLLLLLLLftft1ii;:,:;:,..;::,:,:,,,.    ........,.,..    .,.....   ........,::,::::;:,,.,:itL111tttttttfffffffLLLLLLL"
echo "LLLLLLLLLLLLLLLLfLLft1ii;::;::,,:;;:;:::,,,......:....,.,,,.... .....,.    .......,::::::;;;;,,,,;i;f11tt1ttftftfLLffLLfLLLLL"
echo "LLCCLLLLLLLLLLLLLLLLL111i;:i;;::i;;;;;;:;:,:.,...,,,,.,,:,,,,..             ....,,:;:;:::;;;;;::;;itLtttttfffLL;1LLLLifLLLLLL"
echo "パワボ"

exit ${result}