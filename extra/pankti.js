/** @type LanguageFn */
function pankti(hljs) {

	const IDENT_REG = '[a-zA-Z\u0981-\u09e0][a-zA-Z0-9\u0981-\u09e0]+'
	const NUMBER_REG = '[0-9\u09e6-\u09ef]+';

	const LITERALS = [
		"true", "sotti", "সত্যি",
		"false", "mittha", "মিথ্যা",
		"nil", "নিল",
	];
	const BUILT_INS = [
		"len", "ayoton", "আয়তন",
		"show", "dekhao", "দেখাও"

	];
	const KEYWORDS = [
		"let", "dhori", "ধরি",
		"and", "ebong", "এবং",
		"or", "ba", "বা",
		"end", "sesh", "শেষ",
		"if", "jodi", "যদি",
		"then", "tahole", "তাহলে",
		"while", "jotokhon", "যখন",
		"return", "ferao", "ফেরাও",
		"func", "kaj", "কাজ",
		"import", "anoyon", "আনয়ন",
		"do", "koro", "করো",
		"break", "bhango", "ভাঙো",

	];

	const COMMENT = hljs.COMMENT('#', '$', { contains: [{ begin: /\\\n/ }] });
	const NUMBERS = {
		className: 'number',
		variants: [
			{
				match: NUMBER_REG,
				relevance: 0
			}
		]
	}

	const STRINGS = {
		className: "string",
		variants: [
			hljs.QUOTE_STRING_MODE,
		]
	};

	return {
		name: "Pankti",
		keywords: {
			$pattern: IDENT_REG,
			keyword: KEYWORDS,
			literal: LITERALS,
			built_in: BUILT_INS,

		},
		contains: [
			STRINGS,
			COMMENT,
			NUMBERS,

		]
	};
}


module.exports = pankti;
