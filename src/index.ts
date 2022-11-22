#!/usr/bin/env node

import { randomInt } from "crypto";

////////////////////////////////////////
// Define Constants

const prefixes = 'dozmarbinwansamlitsighidfidlissogdirwacsabwissibrigsoldopmodfoglidhopdardorlorhodfolrintogsilmirholpaslacrovlivdalsatlibtabhanticpidtorbolfosdotlosdilforpilramtirwintadbicdifrocwidbisdasmidloprilnardapmolsanlocnovsitnidtipsicropwitnatpanminritpodmottamtolsavposnapnopsomfinfonbanmorworsipronnorbotwicsocwatdolmagpicdavbidbaltimtasmalligsivtagpadsaldivdactansidfabtarmonranniswolmispallasdismaprabtobrollatlonnodnavfignomnibpagsopralbilhaddocridmocpacravripfaltodtiltinhapmicfanpattaclabmogsimsonpinlomrictapfirhasbosbatpochactidhavsaplindibhosdabbitbarracparloddosbortochilmactomdigfilfasmithobharmighinradmashalraglagfadtopmophabnilnosmilfopfamdatnoldinhatnacrisfotribhocnimlarfitwalrapsarnalmoslandondanladdovrivbacpollaptalpitnambonrostonfodponsovnocsorlavmatmipfip'

const suffixes = 'zodnecbudwessevpersutletfulpensytdurwepserwylsunrypsyxdyrnuphebpeglupdepdysputlughecryttyvsydnexlunmeplutseppesdelsulpedtemledtulmetwenbynhexfebpyldulhetmevruttylwydtepbesdexsefwycburderneppurrysrebdennutsubpetrulsynregtydsupsemwynrecmegnetsecmulnymtevwebsummutnyxrextebfushepbenmuswyxsymselrucdecwexsyrwetdylmynmesdetbetbeltuxtugmyrpelsyptermebsetdutdegtexsurfeltudnuxruxrenwytnubmedlytdusnebrumtynseglyxpunresredfunrevrefmectedrusbexlebduxrynnumpyxrygryxfeptyrtustyclegnemfermertenlusnussyltecmexpubrymtucfyllepdebbermughuttunbylsudpemdevlurdefbusbeprunmelpexdytbyttyplevmylwedducfurfexnulluclennerlexrupnedlecrydlydfenwelnydhusrelrudneshesfetdesretdunlernyrsebhulrylludremlysfynwerrycsugnysnyllyndyndemluxfedsedbecmunlyrtesmudnytbyrsenwegfyrmurtelreptegpecnelnevfes'

////////////////////////////////////////
// Parse CLI Args

let nwords = process.argv[2];
if (!nwords) {
  nwords = "4";
}
try {
  nwords = parseInt(nwords.toString());
  if (isNaN(nwords)) throw new Error();
} catch (e) {
  console.log(`Got invalid number of words: "${nwords}", expected a number eg "4"`);
  process.exit(1);
}

const verbose = process.argv[3] === "--verbose";

if (verbose) {
  console.log(`Creating a random phonetic phrase with ${nwords} words`);
  const space = (65536 ** nwords).toString();
  console.log(`dictionary of 65536 ^ ${nwords} words = ${space} aka ${space.substr(0, 1)} * 10 ^ ${space.length} options`);
  const btcHashrate = 250000000000000 // * 10^6 but that's too big so round to nearest billion
}

verbose && console.log(`Creating a random phonetic phrase with ${nwords} words`);

////////////////////////////////////////
// Define helper function

const word = (): string => {
  const i = randomInt(0, 255) * 3;
  const j = randomInt(0, 255) * 3;
  const name = `${prefixes.substring(i, i+3)}${suffixes.substring(j, j+3)}`;
  verbose && console.log(`${i} + ${j} = ${name}`)
  return name;
};

////////////////////////////////////////
// Do the thing

const randomName = (Array(nwords) as any[]).fill(0).map(word).join("-");
verbose && console.log();
console.log(randomName)
