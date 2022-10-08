// Generated from java-escape by ANTLR 4.11.1
import Antlr4

open class PodspecLexer: Lexer {

	internal static var _decisionToDFA: [DFA] = {
          var decisionToDFA = [DFA]()
          let length = PodspecLexer._ATN.getNumberOfDecisions()
          for i in 0..<length {
          	    decisionToDFA.append(DFA(PodspecLexer._ATN.getDecisionState(i)!, i))
          }
           return decisionToDFA
     }()

	internal static let _sharedContextCache = PredictionContextCache()

	public
	static let POD_SPEC_NEW=1, PIPE=2, DO=3, END=4, DOT=5, NAME=6, EQUALS=7, 
            QUOTE=8, SLASH=9, BACKSLASH=10, DEPENDENCY=11, VALID_NAME=12, 
            SPACE=13

	public
	static let channelNames: [String] = [
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	]

	public
	static let modeNames: [String] = [
		"DEFAULT_MODE"
	]

	public
	static let ruleNames: [String] = [
		"POD_SPEC_NEW", "PIPE", "DO", "END", "DOT", "NAME", "EQUALS", "QUOTE", 
		"SLASH", "BACKSLASH", "DEPENDENCY", "VALID_NAME", "SPACE"
	]

	private static let _LITERAL_NAMES: [String?] = [
		nil, "'Pod::Spec.new'", "'|'", "'do'", "'end'", "'.'", "'name'", "'='", 
		"'''", "'/'", "'\\'", "'dependency'"
	]
	private static let _SYMBOLIC_NAMES: [String?] = [
		nil, "POD_SPEC_NEW", "PIPE", "DO", "END", "DOT", "NAME", "EQUALS", "QUOTE", 
		"SLASH", "BACKSLASH", "DEPENDENCY", "VALID_NAME", "SPACE"
	]
	public
	static let VOCABULARY = Vocabulary(_LITERAL_NAMES, _SYMBOLIC_NAMES)


	override open
	func getVocabulary() -> Vocabulary {
		return PodspecLexer.VOCABULARY
	}

	public
	required init(_ input: CharStream) {
	    RuntimeMetaData.checkVersion("4.11.1", RuntimeMetaData.VERSION)
		super.init(input)
		_interp = LexerATNSimulator(self, PodspecLexer._ATN, PodspecLexer._decisionToDFA, PodspecLexer._sharedContextCache)
	}

	override open
	func getGrammarFileName() -> String { return "Podspec.g4" }

	override open
	func getRuleNames() -> [String] { return PodspecLexer.ruleNames }

	override open
	func getSerializedATN() -> [Int] { return PodspecLexer._serializedATN }

	override open
	func getChannelNames() -> [String] { return PodspecLexer.channelNames }

	override open
	func getModeNames() -> [String] { return PodspecLexer.modeNames }

	override open
	func getATN() -> ATN { return PodspecLexer._ATN }

	static let _serializedATN:[Int] = [
		4,0,13,90,6,-1,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
		2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,1,0,1,0,1,0,1,0,
		1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,1,1,1,1,2,1,2,1,2,1,3,1,3,1,
		3,1,3,1,4,1,4,1,5,1,5,1,5,1,5,1,5,1,6,1,6,1,7,1,7,1,8,1,8,1,9,1,9,1,10,
		1,10,1,10,1,10,1,10,1,10,1,10,1,10,1,10,1,10,1,10,1,11,1,11,5,11,79,8,
		11,10,11,12,11,82,9,11,1,12,4,12,85,8,12,11,12,12,12,86,1,12,1,12,0,0,
		13,1,1,3,2,5,3,7,4,9,5,11,6,13,7,15,8,17,9,19,10,21,11,23,12,25,13,1,0,
		3,2,0,65,90,97,122,5,0,45,45,48,57,65,90,95,95,97,122,3,0,9,10,13,13,32,
		32,91,0,1,1,0,0,0,0,3,1,0,0,0,0,5,1,0,0,0,0,7,1,0,0,0,0,9,1,0,0,0,0,11,
		1,0,0,0,0,13,1,0,0,0,0,15,1,0,0,0,0,17,1,0,0,0,0,19,1,0,0,0,0,21,1,0,0,
		0,0,23,1,0,0,0,0,25,1,0,0,0,1,27,1,0,0,0,3,41,1,0,0,0,5,43,1,0,0,0,7,46,
		1,0,0,0,9,50,1,0,0,0,11,52,1,0,0,0,13,57,1,0,0,0,15,59,1,0,0,0,17,61,1,
		0,0,0,19,63,1,0,0,0,21,65,1,0,0,0,23,76,1,0,0,0,25,84,1,0,0,0,27,28,5,
		80,0,0,28,29,5,111,0,0,29,30,5,100,0,0,30,31,5,58,0,0,31,32,5,58,0,0,32,
		33,5,83,0,0,33,34,5,112,0,0,34,35,5,101,0,0,35,36,5,99,0,0,36,37,5,46,
		0,0,37,38,5,110,0,0,38,39,5,101,0,0,39,40,5,119,0,0,40,2,1,0,0,0,41,42,
		5,124,0,0,42,4,1,0,0,0,43,44,5,100,0,0,44,45,5,111,0,0,45,6,1,0,0,0,46,
		47,5,101,0,0,47,48,5,110,0,0,48,49,5,100,0,0,49,8,1,0,0,0,50,51,5,46,0,
		0,51,10,1,0,0,0,52,53,5,110,0,0,53,54,5,97,0,0,54,55,5,109,0,0,55,56,5,
		101,0,0,56,12,1,0,0,0,57,58,5,61,0,0,58,14,1,0,0,0,59,60,5,39,0,0,60,16,
		1,0,0,0,61,62,5,47,0,0,62,18,1,0,0,0,63,64,5,92,0,0,64,20,1,0,0,0,65,66,
		5,100,0,0,66,67,5,101,0,0,67,68,5,112,0,0,68,69,5,101,0,0,69,70,5,110,
		0,0,70,71,5,100,0,0,71,72,5,101,0,0,72,73,5,110,0,0,73,74,5,99,0,0,74,
		75,5,121,0,0,75,22,1,0,0,0,76,80,7,0,0,0,77,79,7,1,0,0,78,77,1,0,0,0,79,
		82,1,0,0,0,80,78,1,0,0,0,80,81,1,0,0,0,81,24,1,0,0,0,82,80,1,0,0,0,83,
		85,7,2,0,0,84,83,1,0,0,0,85,86,1,0,0,0,86,84,1,0,0,0,86,87,1,0,0,0,87,
		88,1,0,0,0,88,89,6,12,0,0,89,26,1,0,0,0,3,0,80,86,1,6,0,0
	]

	public
	static let _ATN: ATN = try! ATNDeserializer().deserialize(_serializedATN)
}