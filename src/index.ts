#!/usr/bin/env node

import { randomInt } from "crypto";
import { BigNumber } from "@ethersproject/bignumber";
import { commify, formatUnits } from "@ethersproject/units";

////////////////////////////////////////
// Define Constants

const prefixes = 'dozmarbinwansamlitsighidfidlissogdirwacsabwissibrigsoldopmodfoglidhopdardorlorhodfolrintogsilmirholpaslacrovlivdalsatlibtabhanticpidtorbolfosdotlosdilforpilramtirwintadbicdifrocwidbisdasmidloprilnardapmolsanlocnovsitnidtipsicropwitnatpanminritpodmottamtolsavposnapnopsomfinfonbanmorworsipronnorbotwicsocwatdolmagpicdavbidbaltimtasmalligsivtagpadsaldivdactansidfabtarmonranniswolmispallasdismaprabtobrollatlonnodnavfignomnibpagsopralbilhaddocridmocpacravripfaltodtiltinhapmicfanpattaclabmogsimsonpinlomrictapfirhasbosbatpochactidhavsaplindibhosdabbitbarracparloddosbortochilmactomdigfilfasmithobharmighinradmashalraglagfadtopmophabnilnosmilfopfamdatnoldinhatnacrisfotribhocnimlarfitwalrapsarnalmoslandondanladdovrivbacpollaptalpitnambonrostonfodponsovnocsorlavmatmipfip'

const suffixes = 'zodnecbudwessevpersutletfulpensytdurwepserwylsunrypsyxdyrnuphebpeglupdepdysputlughecryttyvsydnexlunmeplutseppesdelsulpedtemledtulmetwenbynhexfebpyldulhetmevruttylwydtepbesdexsefwycburderneppurrysrebdennutsubpetrulsynregtydsupsemwynrecmegnetsecmulnymtevwebsummutnyxrextebfushepbenmuswyxsymselrucdecwexsyrwetdylmynmesdetbetbeltuxtugmyrpelsyptermebsetdutdegtexsurfeltudnuxruxrenwytnubmedlytdusnebrumtynseglyxpunresredfunrevrefmectedrusbexlebduxrynnumpyxrygryxfeptyrtustyclegnemfermertenlusnussyltecmexpubrymtucfyllepdebbermughuttunbylsudpemdevlurdefbusbeprunmelpexdytbyttyplevmylwedducfurfexnulluclennerlexrupnedlecrydlydfenwelnydhusrelrudneshesfetdesretdunlernyrsebhulrylludremlysfynwerrycsugnysnyllyndyndemluxfedsedbecmunlyrtesmudnytbyrsenwegfyrmurtelreptegpecnelnevfes'

////////////////////////////////////////
// Parse CLI Args

const nwords = process.argv[2] ? parseInt(process.argv[2]) : 4;
if (isNaN(nwords)) {
  console.log(`Got invalid number of words: "${nwords}", expected a number eg "4"`);
  process.exit(1);
}

const verbose = process.argv[3] === "--verbose";

if (verbose) {
  console.log(`Creating a random phonetic phrase with ${nwords} words`);
  const options = BigNumber.from("65536").pow(nwords);
  const sciOptions = `${options.toString().substr(0, 2).split("").join(".")}e${options.toString().length - 1}`;
  // Bitcoin hashrate is currently ~250 Exahashes per second
  const crackTime = options.mul(1000).div(BigNumber.from("250000000000000000000")); // ms
  // 6.25 BTC per 10 minutes. At $10k/BTC, profit is $6.25k/minute or ~ $100/second
  const crackCostPerSecond = BigNumber.from(100);
  const crackCost = crackTime.mul(crackCostPerSecond);
  const prettify = (num) => commify(formatUnits(num, 3));
  console.log(`dictionary of 65536 ^ ${nwords} words = ${sciOptions} options`);
  console.log(`Bitcoin miners could crack this password in ${prettify(crackTime)} seconds`);
  console.log(`This password would cost about $${prettify(crackCost)} to crack`);
  console.log();
}


////////////////////////////////////////
// Define helper function

const word = (): string => {
  const i = randomInt(0, 255) * 3;
  const j = randomInt(0, 255) * 3;
  const name = `${prefixes.substring(i, i+3)}${suffixes.substring(j, j+3)}`;
  verbose && console.log(`${i.toString().padStart(3, " ")} + ${j.toString().padStart(3, " ")} = ${name}`)
  return name;
};

////////////////////////////////////////
// Do the thing

const randomName = (Array(nwords) as any[]).fill(0).map(word).join("-");
verbose && console.log();
console.log(randomName)
