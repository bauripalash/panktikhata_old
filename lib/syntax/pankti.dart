// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langPankti = Mode(
    refs: {},
    name: "Pankti",
    keywords: {
      "\$pattern": "[a-zA-Zঁ-ৠ][a-zA-Z0-9ঁ-ৠ]+",
      "keyword": [
        "let",
        "dhori",
        "ধরি",
        "and",
        "ebong",
        "এবং",
        "or",
        "ba",
        "বা",
        "end",
        "sesh",
        "শেষ",
        "if",
        "jodi",
        "যদি",
        "then",
        "tahole",
        "তাহলে",
        "while",
        "jotokhon",
        "যখন",
        "return",
        "ferao",
        "ফেরাও",
        "func",
        "kaj",
        "কাজ",
        "import",
        "anoyon",
        "আনয়ন",
        "do",
        "koro",
        "করো",
        "break",
        "bhango",
        "ভাঙো"
      ],
      "literal": [
        "true",
        "sotti",
        "সত্যি",
        "false",
        "mittha",
        "মিথ্যা",
        "nil",
        "নিল"
      ],
      "built_in": ["len", "ayoton", "আয়তন", "show", "dekhao", "দেখাও"]
    },
    contains: <Mode>[
      Mode(className: 'string', variants: <Mode>[QUOTE_STRING_MODE]),
      Mode(scope: 'comment', begin: "#", end: "\$", contains: <Mode>[
        Mode(begin: "\\\\\\n"),
        Mode(
            scope: 'doctag',
            begin: "[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)",
            end: "(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):",
            excludeBegin: true,
            relevance: 0),
        Mode(
            begin:
                "[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}")
      ]),
      Mode(
          className: 'number',
          variants: <Mode>[Mode(match: "[0-9০-৯]+", relevance: 0)])
    ]);
