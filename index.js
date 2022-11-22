#!/usr/bin/env node

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

verbose && console.log(`Creating a random phonetic phrase with ${nwords} words`);

////////////////////////////////////////
// Define helper function

const word = () => {
  const getRandomByte = () => Math.floor(Math.random() * 256);
  const i = getRandomByte() * 3;
  const j = getRandomByte() * 3;
  const name = `${prefixes.substring(i, i+3)}${suffixes.substring(j, j+3)}`;
  verbose && console.log(`${i} + ${j} = ${name}`)
  return name;
};

////////////////////////////////////////
// Do the thing

const randomName = Array(nwords).fill(0).map(word).join("-");
verbose && console.log();
console.log(randomName)
