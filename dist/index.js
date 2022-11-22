#!/usr/bin/env node
"use strict";
exports.__esModule = true;
var crypto_1 = require("crypto");
////////////////////////////////////////
// Define Constants
var prefixes = 'dozmarbinwansamlitsighidfidlissogdirwacsabwissibrigsoldopmodfoglidhopdardorlorhodfolrintogsilmirholpaslacrovlivdalsatlibtabhanticpidtorbolfosdotlosdilforpilramtirwintadbicdifrocwidbisdasmidloprilnardapmolsanlocnovsitnidtipsicropwitnatpanminritpodmottamtolsavposnapnopsomfinfonbanmorworsipronnorbotwicsocwatdolmagpicdavbidbaltimtasmalligsivtagpadsaldivdactansidfabtarmonranniswolmispallasdismaprabtobrollatlonnodnavfignomnibpagsopralbilhaddocridmocpacravripfaltodtiltinhapmicfanpattaclabmogsimsonpinlomrictapfirhasbosbatpochactidhavsaplindibhosdabbitbarracparloddosbortochilmactomdigfilfasmithobharmighinradmashalraglagfadtopmophabnilnosmilfopfamdatnoldinhatnacrisfotribhocnimlarfitwalrapsarnalmoslandondanladdovrivbacpollaptalpitnambonrostonfodponsovnocsorlavmatmipfip';
var suffixes = 'zodnecbudwessevpersutletfulpensytdurwepserwylsunrypsyxdyrnuphebpeglupdepdysputlughecryttyvsydnexlunmeplutseppesdelsulpedtemledtulmetwenbynhexfebpyldulhetmevruttylwydtepbesdexsefwycburderneppurrysrebdennutsubpetrulsynregtydsupsemwynrecmegnetsecmulnymtevwebsummutnyxrextebfushepbenmuswyxsymselrucdecwexsyrwetdylmynmesdetbetbeltuxtugmyrpelsyptermebsetdutdegtexsurfeltudnuxruxrenwytnubmedlytdusnebrumtynseglyxpunresredfunrevrefmectedrusbexlebduxrynnumpyxrygryxfeptyrtustyclegnemfermertenlusnussyltecmexpubrymtucfyllepdebbermughuttunbylsudpemdevlurdefbusbeprunmelpexdytbyttyplevmylwedducfurfexnulluclennerlexrupnedlecrydlydfenwelnydhusrelrudneshesfetdesretdunlernyrsebhulrylludremlysfynwerrycsugnysnyllyndyndemluxfedsedbecmunlyrtesmudnytbyrsenwegfyrmurtelreptegpecnelnevfes';
////////////////////////////////////////
// Parse CLI Args
var nwords = process.argv[2];
if (!nwords) {
    nwords = "4";
}
try {
    nwords = parseInt(nwords.toString());
    if (isNaN(nwords))
        throw new Error();
}
catch (e) {
    console.log("Got invalid number of words: \"".concat(nwords, "\", expected a number eg \"4\""));
    process.exit(1);
}
var verbose = process.argv[3] === "--verbose";
if (verbose) {
    console.log("Creating a random phonetic phrase with ".concat(nwords, " words"));
    var space = (Math.pow(65536, nwords)).toString();
    console.log("dictionary of 65536 ^ ".concat(nwords, " words = ").concat(space, " aka ").concat(space.substr(0, 1), " * 10 ^ ").concat(space.length, " options"));
    var btcHashrate = 250000000000000; // * 10^6 but that's too big so round to nearest billion
}
verbose && console.log("Creating a random phonetic phrase with ".concat(nwords, " words"));
////////////////////////////////////////
// Define helper function
var word = function () {
    var i = (0, crypto_1.randomInt)(0, 255) * 3;
    var j = (0, crypto_1.randomInt)(0, 255) * 3;
    var name = "".concat(prefixes.substring(i, i + 3)).concat(suffixes.substring(j, j + 3));
    verbose && console.log("".concat(i, " + ").concat(j, " = ").concat(name));
    return name;
};
////////////////////////////////////////
// Do the thing
var randomName = Array(nwords).fill(0).map(word).join("-");
verbose && console.log();
console.log(randomName);
