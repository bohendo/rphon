# This file has been generated by node2nix 1.11.1. Do not edit!

{nodeEnv, fetchurl, fetchgit, nix-gitignore, stdenv, lib, globalBuildInputs ? []}:

let
  sources = {
    "accepts-1.3.8" = {
      name = "accepts";
      packageName = "accepts";
      version = "1.3.8";
      src = fetchurl {
        url = "https://registry.npmjs.org/accepts/-/accepts-1.3.8.tgz";
        sha512 = "PYAthTa2m2VKxuvSD3DPC/Gy+U+sOA1LAuT8mkmRuvw+NACSaeXEQ+NHcVF7rONl6qcaxV3Uuemwawk+7+SJLw==";
      };
    };
    "array-flatten-1.1.1" = {
      name = "array-flatten";
      packageName = "array-flatten";
      version = "1.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/array-flatten/-/array-flatten-1.1.1.tgz";
        sha512 = "PCVAQswWemu6UdxsDFFX/+gVeYqKAod3D3UVm91jHwynguOwAvYPhx8nNlM++NqRcK6CxxpUafjmhIdKiHibqg==";
      };
    };
    "body-parser-1.20.1" = {
      name = "body-parser";
      packageName = "body-parser";
      version = "1.20.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/body-parser/-/body-parser-1.20.1.tgz";
        sha512 = "jWi7abTbYwajOytWCQc37VulmWiRae5RyTpaCyDcS5/lMdtwSz5lOpDE67srw/HYe35f1z3fDQw+3txg7gNtWw==";
      };
    };
    "bytes-3.1.2" = {
      name = "bytes";
      packageName = "bytes";
      version = "3.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/bytes/-/bytes-3.1.2.tgz";
        sha512 = "/Nf7TyzTx6S3yRJObOAV7956r8cr2+Oj8AC5dt8wSP3BQAoeX58NoHyCU8P8zGkNXStjTSi6fzO6F0pBdcYbEg==";
      };
    };
    "call-bind-1.0.2" = {
      name = "call-bind";
      packageName = "call-bind";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/call-bind/-/call-bind-1.0.2.tgz";
        sha512 = "7O+FbCihrB5WGbFYesctwmTKae6rOiIzmz1icreWJ+0aA7LJfuqhEso2T9ncpcFtzMQtzXf2QGGueWJGTYsqrA==";
      };
    };
    "content-disposition-0.5.4" = {
      name = "content-disposition";
      packageName = "content-disposition";
      version = "0.5.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/content-disposition/-/content-disposition-0.5.4.tgz";
        sha512 = "FveZTNuGw04cxlAiWbzi6zTAL/lhehaWbTtgluJh4/E95DqMwTmha3KZN1aAWA8cFIhHzMZUvLevkw5Rqk+tSQ==";
      };
    };
    "content-type-1.0.4" = {
      name = "content-type";
      packageName = "content-type";
      version = "1.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/content-type/-/content-type-1.0.4.tgz";
        sha512 = "hIP3EEPs8tB9AT1L+NUqtwOAps4mk2Zob89MWXMHjHWg9milF/j4osnnQLXBCBFBk/tvIG/tUc9mOUJiPBhPXA==";
      };
    };
    "cookie-0.5.0" = {
      name = "cookie";
      packageName = "cookie";
      version = "0.5.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/cookie/-/cookie-0.5.0.tgz";
        sha512 = "YZ3GUyn/o8gfKJlnlX7g7xq4gyO6OSuhGPKaaGssGB2qgDUS0gPgtTvoyZLTt9Ab6dC4hfc9dV5arkvc/OCmrw==";
      };
    };
    "cookie-signature-1.0.6" = {
      name = "cookie-signature";
      packageName = "cookie-signature";
      version = "1.0.6";
      src = fetchurl {
        url = "https://registry.npmjs.org/cookie-signature/-/cookie-signature-1.0.6.tgz";
        sha512 = "QADzlaHc8icV8I7vbaJXJwod9HWYp8uCqf1xa4OfNu1T7JVxQIrUgOWtHdNDtPiywmFbiS12VjotIXLrKM3orQ==";
      };
    };
    "debug-2.6.9" = {
      name = "debug";
      packageName = "debug";
      version = "2.6.9";
      src = fetchurl {
        url = "https://registry.npmjs.org/debug/-/debug-2.6.9.tgz";
        sha512 = "bC7ElrdJaJnPbAP+1EotYvqZsb3ecl5wi6Bfi6BJTUcNowp6cvspg0jXznRTKDjm/E7AdgFBVeAPVMNcKGsHMA==";
      };
    };
    "depd-2.0.0" = {
      name = "depd";
      packageName = "depd";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/depd/-/depd-2.0.0.tgz";
        sha512 = "g7nH6P6dyDioJogAAGprGpCtVImJhpPk/roCzdb3fIh61/s/nPsfR6onyMwkCAR/OlC3yBC0lESvUoQEAssIrw==";
      };
    };
    "destroy-1.2.0" = {
      name = "destroy";
      packageName = "destroy";
      version = "1.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/destroy/-/destroy-1.2.0.tgz";
        sha512 = "2sJGJTaXIIaR1w4iJSNoN0hnMY7Gpc/n8D4qSCJw8QqFWXf7cuAgnEHxBpweaVcPevC2l3KpjYCx3NypQQgaJg==";
      };
    };
    "ee-first-1.1.1" = {
      name = "ee-first";
      packageName = "ee-first";
      version = "1.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/ee-first/-/ee-first-1.1.1.tgz";
        sha512 = "WMwm9LhRUo+WUaRN+vRuETqG89IgZphVSNkdFgeb6sS/E4OrDIN7t48CAewSHXc6C8lefD8KKfr5vY61brQlow==";
      };
    };
    "encodeurl-1.0.2" = {
      name = "encodeurl";
      packageName = "encodeurl";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/encodeurl/-/encodeurl-1.0.2.tgz";
        sha512 = "TPJXq8JqFaVYm2CWmPvnP2Iyo4ZSM7/QKcSmuMLDObfpH5fi7RUGmd/rTDf+rut/saiDiQEeVTNgAmJEdAOx0w==";
      };
    };
    "escape-html-1.0.3" = {
      name = "escape-html";
      packageName = "escape-html";
      version = "1.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/escape-html/-/escape-html-1.0.3.tgz";
        sha512 = "NiSupZ4OeuGwr68lGIeym/ksIZMJodUGOSCZ/FSnTxcrekbvqrgdUxlJOMpijaKZVjAJrWrGs/6Jy8OMuyj9ow==";
      };
    };
    "etag-1.8.1" = {
      name = "etag";
      packageName = "etag";
      version = "1.8.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/etag/-/etag-1.8.1.tgz";
        sha512 = "aIL5Fx7mawVa300al2BnEE4iNvo1qETxLrPI/o05L7z6go7fCw1J6EQmbK4FmJ2AS7kgVF/KEZWufBfdClMcPg==";
      };
    };
    "express-4.18.2" = {
      name = "express";
      packageName = "express";
      version = "4.18.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/express/-/express-4.18.2.tgz";
        sha512 = "5/PsL6iGPdfQ/lKM1UuielYgv3BUoJfz1aUwU9vHZ+J7gyvwdQXFEBIEIaxeGf0GIcreATNyBExtalisDbuMqQ==";
      };
    };
    "finalhandler-1.2.0" = {
      name = "finalhandler";
      packageName = "finalhandler";
      version = "1.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/finalhandler/-/finalhandler-1.2.0.tgz";
        sha512 = "5uXcUVftlQMFnWC9qu/svkWv3GTd2PfUhK/3PLkYNAe7FbqJMt3515HaxE6eRL74GdsriiwujiawdaB1BpEISg==";
      };
    };
    "forwarded-0.2.0" = {
      name = "forwarded";
      packageName = "forwarded";
      version = "0.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/forwarded/-/forwarded-0.2.0.tgz";
        sha512 = "buRG0fpBtRHSTCOASe6hD258tEubFoRLb4ZNA6NxMVHNw2gOcwHo9wyablzMzOA5z9xA9L1KNjk/Nt6MT9aYow==";
      };
    };
    "fresh-0.5.2" = {
      name = "fresh";
      packageName = "fresh";
      version = "0.5.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/fresh/-/fresh-0.5.2.tgz";
        sha512 = "zJ2mQYM18rEFOudeV4GShTGIQ7RbzA7ozbU9I/XBpm7kqgMywgmylMwXHxZJmkVoYkna9d2pVXVXPdYTP9ej8Q==";
      };
    };
    "function-bind-1.1.1" = {
      name = "function-bind";
      packageName = "function-bind";
      version = "1.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/function-bind/-/function-bind-1.1.1.tgz";
        sha512 = "yIovAzMX49sF8Yl58fSCWJ5svSLuaibPxXQJFLmBObTuCr0Mf1KiPopGM9NiFjiYBCbfaa2Fh6breQ6ANVTI0A==";
      };
    };
    "get-intrinsic-1.1.3" = {
      name = "get-intrinsic";
      packageName = "get-intrinsic";
      version = "1.1.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/get-intrinsic/-/get-intrinsic-1.1.3.tgz";
        sha512 = "QJVz1Tj7MS099PevUG5jvnt9tSkXN8K14dxQlikJuPt4uD9hHAHjLyLBiLR5zELelBdD9QNRAXZzsJx0WaDL9A==";
      };
    };
    "has-1.0.3" = {
      name = "has";
      packageName = "has";
      version = "1.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/has/-/has-1.0.3.tgz";
        sha512 = "f2dvO0VU6Oej7RkWJGrehjbzMAjFp5/VKPp5tTpWIV4JHHZK1/BxbFRtf/siA2SWTe09caDmVtYYzWEIbBS4zw==";
      };
    };
    "has-symbols-1.0.3" = {
      name = "has-symbols";
      packageName = "has-symbols";
      version = "1.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/has-symbols/-/has-symbols-1.0.3.tgz";
        sha512 = "l3LCuF6MgDNwTDKkdYGEihYjt5pRPbEg46rtlmnSPlUbgmB8LOIrKJbYYFBSbnPaJexMKtiPO8hmeRjRz2Td+A==";
      };
    };
    "http-errors-2.0.0" = {
      name = "http-errors";
      packageName = "http-errors";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/http-errors/-/http-errors-2.0.0.tgz";
        sha512 = "FtwrG/euBzaEjYeRqOgly7G0qviiXoJWnvEH2Z1plBdXgbyjv34pHTSb9zoeHMyDy33+DWy5Wt9Wo+TURtOYSQ==";
      };
    };
    "iconv-lite-0.4.24" = {
      name = "iconv-lite";
      packageName = "iconv-lite";
      version = "0.4.24";
      src = fetchurl {
        url = "https://registry.npmjs.org/iconv-lite/-/iconv-lite-0.4.24.tgz";
        sha512 = "v3MXnZAcvnywkTUEZomIActle7RXXeedOR31wwl7VlyoXO4Qi9arvSenNQWne1TcRwhCL1HwLI21bEqdpj8/rA==";
      };
    };
    "inherits-2.0.4" = {
      name = "inherits";
      packageName = "inherits";
      version = "2.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/inherits/-/inherits-2.0.4.tgz";
        sha512 = "k/vGaX4/Yla3WzyMCvTQOXYeIHvqOKtnqBduzTHpzpQZzAskKMhZ2K+EnBiSM9zGSoIFeMpXKxa4dYeZIQqewQ==";
      };
    };
    "ipaddr.js-1.9.1" = {
      name = "ipaddr.js";
      packageName = "ipaddr.js";
      version = "1.9.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/ipaddr.js/-/ipaddr.js-1.9.1.tgz";
        sha512 = "0KI/607xoxSToH7GjN1FfSbLoU0+btTicjsQSWQlh/hZykN8KpmMf7uYwPW3R+akZ6R/w18ZlXSHBYXiYUPO3g==";
      };
    };
    "media-typer-0.3.0" = {
      name = "media-typer";
      packageName = "media-typer";
      version = "0.3.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/media-typer/-/media-typer-0.3.0.tgz";
        sha512 = "dq+qelQ9akHpcOl/gUVRTxVIOkAJ1wR3QAvb4RsVjS8oVoFjDGTc679wJYmUmknUF5HwMLOgb5O+a3KxfWapPQ==";
      };
    };
    "merge-descriptors-1.0.1" = {
      name = "merge-descriptors";
      packageName = "merge-descriptors";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/merge-descriptors/-/merge-descriptors-1.0.1.tgz";
        sha512 = "cCi6g3/Zr1iqQi6ySbseM1Xvooa98N0w31jzUYrXPX2xqObmFGHJ0tQ5u74H3mVh7wLouTseZyYIq39g8cNp1w==";
      };
    };
    "methods-1.1.2" = {
      name = "methods";
      packageName = "methods";
      version = "1.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/methods/-/methods-1.1.2.tgz";
        sha512 = "iclAHeNqNm68zFtnZ0e+1L2yUIdvzNoauKU4WBA3VvH/vPFieF7qfRlwUZU+DA9P9bPXIS90ulxoUoCH23sV2w==";
      };
    };
    "mime-1.6.0" = {
      name = "mime";
      packageName = "mime";
      version = "1.6.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/mime/-/mime-1.6.0.tgz";
        sha512 = "x0Vn8spI+wuJ1O6S7gnbaQg8Pxh4NNHb7KSINmEWKiPE4RKOplvijn+NkmYmmRgP68mc70j2EbeTFRsrswaQeg==";
      };
    };
    "mime-db-1.52.0" = {
      name = "mime-db";
      packageName = "mime-db";
      version = "1.52.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/mime-db/-/mime-db-1.52.0.tgz";
        sha512 = "sPU4uV7dYlvtWJxwwxHD0PuihVNiE7TyAbQ5SWxDCB9mUYvOgroQOwYQQOKPJ8CIbE+1ETVlOoK1UC2nU3gYvg==";
      };
    };
    "mime-types-2.1.35" = {
      name = "mime-types";
      packageName = "mime-types";
      version = "2.1.35";
      src = fetchurl {
        url = "https://registry.npmjs.org/mime-types/-/mime-types-2.1.35.tgz";
        sha512 = "ZDY+bPm5zTTF+YpCrAU9nK0UgICYPT0QtT1NZWFv4s++TNkcgVaT0g6+4R2uI4MjQjzysHB1zxuWL50hzaeXiw==";
      };
    };
    "ms-2.0.0" = {
      name = "ms";
      packageName = "ms";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/ms/-/ms-2.0.0.tgz";
        sha512 = "Tpp60P6IUJDTuOq/5Z8cdskzJujfwqfOTkrwIwj7IRISpnkJnT6SyJ4PCPnGMoFjC9ddhal5KVIYtAt97ix05A==";
      };
    };
    "ms-2.1.3" = {
      name = "ms";
      packageName = "ms";
      version = "2.1.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/ms/-/ms-2.1.3.tgz";
        sha512 = "6FlzubTLZG3J2a/NVCAleEhjzq5oxgHyaCU9yYXvcLsvoVaHJq/s5xXI6/XXP6tz7R9xAOtHnSO/tXtF3WRTlA==";
      };
    };
    "negotiator-0.6.3" = {
      name = "negotiator";
      packageName = "negotiator";
      version = "0.6.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/negotiator/-/negotiator-0.6.3.tgz";
        sha512 = "+EUsqGPLsM+j/zdChZjsnX51g4XrHFOIXwfnCVPGlQk/k5giakcKsuxCObBRu6DSm9opw/O6slWbJdghQM4bBg==";
      };
    };
    "object-inspect-1.12.2" = {
      name = "object-inspect";
      packageName = "object-inspect";
      version = "1.12.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/object-inspect/-/object-inspect-1.12.2.tgz";
        sha512 = "z+cPxW0QGUp0mcqcsgQyLVRDoXFQbXOwBaqyF7VIgI4TWNQsDHrBpUQslRmIfAoYWdYzs6UlKJtB2XJpTaNSpQ==";
      };
    };
    "on-finished-2.4.1" = {
      name = "on-finished";
      packageName = "on-finished";
      version = "2.4.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/on-finished/-/on-finished-2.4.1.tgz";
        sha512 = "oVlzkg3ENAhCk2zdv7IJwd/QUD4z2RxRwpkcGY8psCVcCYZNq4wYnVWALHM+brtuJjePWiYF/ClmuDr8Ch5+kg==";
      };
    };
    "parseurl-1.3.3" = {
      name = "parseurl";
      packageName = "parseurl";
      version = "1.3.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/parseurl/-/parseurl-1.3.3.tgz";
        sha512 = "CiyeOxFT/JZyN5m0z9PfXw4SCBJ6Sygz1Dpl0wqjlhDEGGBP1GnsUVEL0p63hoG1fcj3fHynXi9NYO4nWOL+qQ==";
      };
    };
    "path-to-regexp-0.1.7" = {
      name = "path-to-regexp";
      packageName = "path-to-regexp";
      version = "0.1.7";
      src = fetchurl {
        url = "https://registry.npmjs.org/path-to-regexp/-/path-to-regexp-0.1.7.tgz";
        sha512 = "5DFkuoqlv1uYQKxy8omFBeJPQcdoE07Kv2sferDCrAq1ohOU+MSDswDIbnx3YAM60qIOnYa53wBhXW0EbMonrQ==";
      };
    };
    "proxy-addr-2.0.7" = {
      name = "proxy-addr";
      packageName = "proxy-addr";
      version = "2.0.7";
      src = fetchurl {
        url = "https://registry.npmjs.org/proxy-addr/-/proxy-addr-2.0.7.tgz";
        sha512 = "llQsMLSUDUPT44jdrU/O37qlnifitDP+ZwrmmZcoSKyLKvtZxpyV0n2/bD/N4tBAAZ/gJEdZU7KMraoK1+XYAg==";
      };
    };
    "qs-6.11.0" = {
      name = "qs";
      packageName = "qs";
      version = "6.11.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/qs/-/qs-6.11.0.tgz";
        sha512 = "MvjoMCJwEarSbUYk5O+nmoSzSutSsTwF85zcHPQ9OrlFoZOYIjaqBAJIqIXjptyD5vThxGq52Xu/MaJzRkIk4Q==";
      };
    };
    "range-parser-1.2.1" = {
      name = "range-parser";
      packageName = "range-parser";
      version = "1.2.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/range-parser/-/range-parser-1.2.1.tgz";
        sha512 = "Hrgsx+orqoygnmhFbKaHE6c296J+HTAQXoxEF6gNupROmmGJRoyzfG3ccAveqCBrwr/2yxQ5BVd/GTl5agOwSg==";
      };
    };
    "raw-body-2.5.1" = {
      name = "raw-body";
      packageName = "raw-body";
      version = "2.5.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/raw-body/-/raw-body-2.5.1.tgz";
        sha512 = "qqJBtEyVgS0ZmPGdCFPWJ3FreoqvG4MVQln/kCgF7Olq95IbOp0/BWyMwbdtn4VTvkM8Y7khCQ2Xgk/tcrCXig==";
      };
    };
    "safe-buffer-5.2.1" = {
      name = "safe-buffer";
      packageName = "safe-buffer";
      version = "5.2.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/safe-buffer/-/safe-buffer-5.2.1.tgz";
        sha512 = "rp3So07KcdmmKbGvgaNxQSJr7bGVSVk5S9Eq1F+ppbRo70+YeaDxkw5Dd8NPN+GD6bjnYm2VuPuCXmpuYvmCXQ==";
      };
    };
    "safer-buffer-2.1.2" = {
      name = "safer-buffer";
      packageName = "safer-buffer";
      version = "2.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/safer-buffer/-/safer-buffer-2.1.2.tgz";
        sha512 = "YZo3K82SD7Riyi0E1EQPojLz7kpepnSQI9IyPbHHg1XXXevb5dJI7tpyN2ADxGcQbHG7vcyRHk0cbwqcQriUtg==";
      };
    };
    "send-0.18.0" = {
      name = "send";
      packageName = "send";
      version = "0.18.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/send/-/send-0.18.0.tgz";
        sha512 = "qqWzuOjSFOuqPjFe4NOsMLafToQQwBSOEpS+FwEt3A2V3vKubTquT3vmLTQpFgMXp8AlFWFuP1qKaJZOtPpVXg==";
      };
    };
    "serve-static-1.15.0" = {
      name = "serve-static";
      packageName = "serve-static";
      version = "1.15.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/serve-static/-/serve-static-1.15.0.tgz";
        sha512 = "XGuRDNjXUijsUL0vl6nSD7cwURuzEgglbOaFuZM9g3kwDXOWVTck0jLzjPzGD+TazWbboZYu52/9/XPdUgne9g==";
      };
    };
    "setprototypeof-1.2.0" = {
      name = "setprototypeof";
      packageName = "setprototypeof";
      version = "1.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/setprototypeof/-/setprototypeof-1.2.0.tgz";
        sha512 = "E5LDX7Wrp85Kil5bhZv46j8jOeboKq5JMmYM3gVGdGH8xFpPWXUMsNrlODCrkoxMEeNi/XZIwuRvY4XNwYMJpw==";
      };
    };
    "side-channel-1.0.4" = {
      name = "side-channel";
      packageName = "side-channel";
      version = "1.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/side-channel/-/side-channel-1.0.4.tgz";
        sha512 = "q5XPytqFEIKHkGdiMIrY10mvLRvnQh42/+GoBlFW3b2LXLE2xxJpZFdm94we0BaoV3RwJyGqg5wS7epxTv0Zvw==";
      };
    };
    "statuses-2.0.1" = {
      name = "statuses";
      packageName = "statuses";
      version = "2.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/statuses/-/statuses-2.0.1.tgz";
        sha512 = "RwNA9Z/7PrK06rYLIzFMlaF+l73iwpzsqRIFgbMLbTcLD6cOao82TaWefPXQvB2fOC4AjuYSEndS7N/mTCbkdQ==";
      };
    };
    "toidentifier-1.0.1" = {
      name = "toidentifier";
      packageName = "toidentifier";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/toidentifier/-/toidentifier-1.0.1.tgz";
        sha512 = "o5sSPKEkg/DIQNmH43V0/uerLrpzVedkUh8tGNvaeXpfpuwjKenlSox/2O/BTlZUtEe+JG7s5YhEz608PlAHRA==";
      };
    };
    "type-is-1.6.18" = {
      name = "type-is";
      packageName = "type-is";
      version = "1.6.18";
      src = fetchurl {
        url = "https://registry.npmjs.org/type-is/-/type-is-1.6.18.tgz";
        sha512 = "TkRKr9sUTxEH8MdfuCSP7VizJyzRNMjj2J2do2Jr3Kym598JVdEksuzPQCnlFPW4ky9Q+iA+ma9BGm06XQBy8g==";
      };
    };
    "unpipe-1.0.0" = {
      name = "unpipe";
      packageName = "unpipe";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/unpipe/-/unpipe-1.0.0.tgz";
        sha512 = "pjy2bYhSsufwWlKwPc+l3cN7+wuJlK6uz0YdJEOlQDbl6jo/YlPi4mb8agUkVC8BF7V8NuzeyPNqRksA3hztKQ==";
      };
    };
    "utils-merge-1.0.1" = {
      name = "utils-merge";
      packageName = "utils-merge";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/utils-merge/-/utils-merge-1.0.1.tgz";
        sha512 = "pMZTvIkT1d+TFGvDOqodOclx0QWkkgi6Tdoa8gC8ffGAAqz9pzPTZWAybbsHHoED/ztMtkv/VoYTYyShUn81hA==";
      };
    };
    "vary-1.1.2" = {
      name = "vary";
      packageName = "vary";
      version = "1.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/vary/-/vary-1.1.2.tgz";
        sha512 = "BNGbWLfd0eUPabhkXUVm0j8uuvREyTh5ovRa/dyow/BqAbZJyC+5fU+IzQOzmAKzYqYRAISoRhdQr3eIZ/PXqg==";
      };
    };
  };
  args = {
    name = "phonetic";
    packageName = "phonetic";
    version = "1.0.0";
    src = ./.;
    dependencies = [
      sources."accepts-1.3.8"
      sources."array-flatten-1.1.1"
      sources."body-parser-1.20.1"
      sources."bytes-3.1.2"
      sources."call-bind-1.0.2"
      sources."content-disposition-0.5.4"
      sources."content-type-1.0.4"
      sources."cookie-0.5.0"
      sources."cookie-signature-1.0.6"
      sources."debug-2.6.9"
      sources."depd-2.0.0"
      sources."destroy-1.2.0"
      sources."ee-first-1.1.1"
      sources."encodeurl-1.0.2"
      sources."escape-html-1.0.3"
      sources."etag-1.8.1"
      sources."express-4.18.2"
      sources."finalhandler-1.2.0"
      sources."forwarded-0.2.0"
      sources."fresh-0.5.2"
      sources."function-bind-1.1.1"
      sources."get-intrinsic-1.1.3"
      sources."has-1.0.3"
      sources."has-symbols-1.0.3"
      sources."http-errors-2.0.0"
      sources."iconv-lite-0.4.24"
      sources."inherits-2.0.4"
      sources."ipaddr.js-1.9.1"
      sources."media-typer-0.3.0"
      sources."merge-descriptors-1.0.1"
      sources."methods-1.1.2"
      sources."mime-1.6.0"
      sources."mime-db-1.52.0"
      sources."mime-types-2.1.35"
      sources."ms-2.0.0"
      sources."negotiator-0.6.3"
      sources."object-inspect-1.12.2"
      sources."on-finished-2.4.1"
      sources."parseurl-1.3.3"
      sources."path-to-regexp-0.1.7"
      sources."proxy-addr-2.0.7"
      sources."qs-6.11.0"
      sources."range-parser-1.2.1"
      sources."raw-body-2.5.1"
      sources."safe-buffer-5.2.1"
      sources."safer-buffer-2.1.2"
      (sources."send-0.18.0" // {
        dependencies = [
          sources."ms-2.1.3"
        ];
      })
      sources."serve-static-1.15.0"
      sources."setprototypeof-1.2.0"
      sources."side-channel-1.0.4"
      sources."statuses-2.0.1"
      sources."toidentifier-1.0.1"
      sources."type-is-1.6.18"
      sources."unpipe-1.0.0"
      sources."utils-merge-1.0.1"
      sources."vary-1.1.2"
    ];
    buildInputs = globalBuildInputs;
    meta = {
      description = "random phonem generator";
      license = "ISC";
    };
    production = true;
    bypassCache = true;
    reconstructLock = true;
  };
in
{
  args = args;
  sources = sources;
  tarball = nodeEnv.buildNodeSourceDist args;
  package = nodeEnv.buildNodePackage args;
  shell = nodeEnv.buildNodeShell args;
  nodeDependencies = nodeEnv.buildNodeDependencies (lib.overrideExisting args {
    src = stdenv.mkDerivation {
      name = args.name + "-package-json";
      src = nix-gitignore.gitignoreSourcePure [
        "*"
        "!package.json"
        "!package-lock.json"
      ] args.src;
      dontBuild = true;
      installPhase = "mkdir -p $out; cp -r ./* $out;";
    };
  });
}
