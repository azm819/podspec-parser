// Generated from java-escape by ANTLR 4.11.1
import Antlr4

open class PodspecParser: Parser {

	internal static var _decisionToDFA: [DFA] = {
          var decisionToDFA = [DFA]()
          let length = PodspecParser._ATN.getNumberOfDecisions()
          for i in 0..<length {
            decisionToDFA.append(DFA(PodspecParser._ATN.getDecisionState(i)!, i))
           }
           return decisionToDFA
     }()

	internal static let _sharedContextCache = PredictionContextCache()

	public
	enum Tokens: Int {
		case EOF = -1, POD_SPEC_NEW = 1, PIPE = 2, DO = 3, END = 4, DOT = 5, NAME = 6, 
                 EQUALS = 7, QUOTE = 8, DEPENDENCY = 9, SPACE = 10, VALID_NAME = 11
	}

	public
	static let RULE_global_scope = 0, RULE_spec_var = 1, RULE_spec_body = 2, 
            RULE_spec_dependency = 3, RULE_dependency = 4, RULE_spec_name = 5, 
            RULE_name = 6

	public
	static let ruleNames: [String] = [
		"global_scope", "spec_var", "spec_body", "spec_dependency", "dependency", 
		"spec_name", "name"
	]

	private static let _LITERAL_NAMES: [String?] = [
		nil, "'Pod::Spec.new'", "'|'", "'do'", "'end'", "'.'", "'name'", "'='", 
		"'''", "'dependency'"
	]
	private static let _SYMBOLIC_NAMES: [String?] = [
		nil, "POD_SPEC_NEW", "PIPE", "DO", "END", "DOT", "NAME", "EQUALS", "QUOTE", 
		"DEPENDENCY", "SPACE", "VALID_NAME"
	]
	public
	static let VOCABULARY = Vocabulary(_LITERAL_NAMES, _SYMBOLIC_NAMES)

	override open
	func getGrammarFileName() -> String { return "java-escape" }

	override open
	func getRuleNames() -> [String] { return PodspecParser.ruleNames }

	override open
	func getSerializedATN() -> [Int] { return PodspecParser._serializedATN }

	override open
	func getATN() -> ATN { return PodspecParser._ATN }


	override open
	func getVocabulary() -> Vocabulary {
	    return PodspecParser.VOCABULARY
	}

	override public
	init(_ input:TokenStream) throws {
	    RuntimeMetaData.checkVersion("4.11.1", RuntimeMetaData.VERSION)
		try super.init(input)
		_interp = ParserATNSimulator(self,PodspecParser._ATN,PodspecParser._decisionToDFA, PodspecParser._sharedContextCache)
	}


	public class Global_scopeContext: ParserRuleContext {
			open
			func POD_SPEC_NEW() -> TerminalNode? {
				return getToken(PodspecParser.Tokens.POD_SPEC_NEW.rawValue, 0)
			}
			open
			func DO() -> TerminalNode? {
				return getToken(PodspecParser.Tokens.DO.rawValue, 0)
			}
			open
			func PIPE() -> [TerminalNode] {
				return getTokens(PodspecParser.Tokens.PIPE.rawValue)
			}
			open
			func PIPE(_ i:Int) -> TerminalNode? {
				return getToken(PodspecParser.Tokens.PIPE.rawValue, i)
			}
			open
			func spec_var() -> Spec_varContext? {
				return getRuleContext(Spec_varContext.self, 0)
			}
			open
			func spec_body() -> Spec_bodyContext? {
				return getRuleContext(Spec_bodyContext.self, 0)
			}
			open
			func END() -> TerminalNode? {
				return getToken(PodspecParser.Tokens.END.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PodspecParser.RULE_global_scope
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PodspecListener {
				listener.enterGlobal_scope(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PodspecListener {
				listener.exitGlobal_scope(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PodspecVisitor {
			    return visitor.visitGlobal_scope(self)
			}
			else if let visitor = visitor as? PodspecBaseVisitor {
			    return visitor.visitGlobal_scope(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func global_scope() throws -> Global_scopeContext {
		var _localctx: Global_scopeContext
		_localctx = Global_scopeContext(_ctx, getState())
		try enterRule(_localctx, 0, PodspecParser.RULE_global_scope)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(14)
		 	try match(PodspecParser.Tokens.POD_SPEC_NEW.rawValue)
		 	setState(15)
		 	try match(PodspecParser.Tokens.DO.rawValue)
		 	setState(16)
		 	try match(PodspecParser.Tokens.PIPE.rawValue)
		 	setState(17)
		 	try spec_var()
		 	setState(18)
		 	try match(PodspecParser.Tokens.PIPE.rawValue)
		 	setState(19)
		 	try spec_body()
		 	setState(20)
		 	try match(PodspecParser.Tokens.END.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Spec_varContext: ParserRuleContext {
			open
			func VALID_NAME() -> TerminalNode? {
				return getToken(PodspecParser.Tokens.VALID_NAME.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PodspecParser.RULE_spec_var
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PodspecListener {
				listener.enterSpec_var(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PodspecListener {
				listener.exitSpec_var(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PodspecVisitor {
			    return visitor.visitSpec_var(self)
			}
			else if let visitor = visitor as? PodspecBaseVisitor {
			    return visitor.visitSpec_var(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func spec_var() throws -> Spec_varContext {
		var _localctx: Spec_varContext
		_localctx = Spec_varContext(_ctx, getState())
		try enterRule(_localctx, 2, PodspecParser.RULE_spec_var)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(22)
		 	try match(PodspecParser.Tokens.VALID_NAME.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Spec_bodyContext: ParserRuleContext {
			open
			func spec_name() -> Spec_nameContext? {
				return getRuleContext(Spec_nameContext.self, 0)
			}
			open
			func spec_body() -> Spec_bodyContext? {
				return getRuleContext(Spec_bodyContext.self, 0)
			}
			open
			func spec_dependency() -> Spec_dependencyContext? {
				return getRuleContext(Spec_dependencyContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PodspecParser.RULE_spec_body
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PodspecListener {
				listener.enterSpec_body(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PodspecListener {
				listener.exitSpec_body(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PodspecVisitor {
			    return visitor.visitSpec_body(self)
			}
			else if let visitor = visitor as? PodspecBaseVisitor {
			    return visitor.visitSpec_body(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func spec_body() throws -> Spec_bodyContext {
		var _localctx: Spec_bodyContext
		_localctx = Spec_bodyContext(_ctx, getState())
		try enterRule(_localctx, 4, PodspecParser.RULE_spec_body)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(31)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,0, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(24)
		 		try spec_name()
		 		setState(25)
		 		try spec_body()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(27)
		 		try spec_dependency()
		 		setState(28)
		 		try spec_body()

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(30)
		 		try spec_dependency()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Spec_dependencyContext: ParserRuleContext {
			open
			func spec_var() -> Spec_varContext? {
				return getRuleContext(Spec_varContext.self, 0)
			}
			open
			func DOT() -> TerminalNode? {
				return getToken(PodspecParser.Tokens.DOT.rawValue, 0)
			}
			open
			func DEPENDENCY() -> TerminalNode? {
				return getToken(PodspecParser.Tokens.DEPENDENCY.rawValue, 0)
			}
			open
			func QUOTE() -> [TerminalNode] {
				return getTokens(PodspecParser.Tokens.QUOTE.rawValue)
			}
			open
			func QUOTE(_ i:Int) -> TerminalNode? {
				return getToken(PodspecParser.Tokens.QUOTE.rawValue, i)
			}
			open
			func dependency() -> DependencyContext? {
				return getRuleContext(DependencyContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PodspecParser.RULE_spec_dependency
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PodspecListener {
				listener.enterSpec_dependency(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PodspecListener {
				listener.exitSpec_dependency(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PodspecVisitor {
			    return visitor.visitSpec_dependency(self)
			}
			else if let visitor = visitor as? PodspecBaseVisitor {
			    return visitor.visitSpec_dependency(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func spec_dependency() throws -> Spec_dependencyContext {
		var _localctx: Spec_dependencyContext
		_localctx = Spec_dependencyContext(_ctx, getState())
		try enterRule(_localctx, 6, PodspecParser.RULE_spec_dependency)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(33)
		 	try spec_var()
		 	setState(34)
		 	try match(PodspecParser.Tokens.DOT.rawValue)
		 	setState(35)
		 	try match(PodspecParser.Tokens.DEPENDENCY.rawValue)
		 	setState(36)
		 	try match(PodspecParser.Tokens.QUOTE.rawValue)
		 	setState(37)
		 	try dependency()
		 	setState(38)
		 	try match(PodspecParser.Tokens.QUOTE.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class DependencyContext: ParserRuleContext {
			open
			func VALID_NAME() -> TerminalNode? {
				return getToken(PodspecParser.Tokens.VALID_NAME.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PodspecParser.RULE_dependency
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PodspecListener {
				listener.enterDependency(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PodspecListener {
				listener.exitDependency(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PodspecVisitor {
			    return visitor.visitDependency(self)
			}
			else if let visitor = visitor as? PodspecBaseVisitor {
			    return visitor.visitDependency(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func dependency() throws -> DependencyContext {
		var _localctx: DependencyContext
		_localctx = DependencyContext(_ctx, getState())
		try enterRule(_localctx, 8, PodspecParser.RULE_dependency)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(40)
		 	try match(PodspecParser.Tokens.VALID_NAME.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Spec_nameContext: ParserRuleContext {
			open
			func spec_var() -> Spec_varContext? {
				return getRuleContext(Spec_varContext.self, 0)
			}
			open
			func DOT() -> TerminalNode? {
				return getToken(PodspecParser.Tokens.DOT.rawValue, 0)
			}
			open
			func NAME() -> TerminalNode? {
				return getToken(PodspecParser.Tokens.NAME.rawValue, 0)
			}
			open
			func EQUALS() -> TerminalNode? {
				return getToken(PodspecParser.Tokens.EQUALS.rawValue, 0)
			}
			open
			func QUOTE() -> [TerminalNode] {
				return getTokens(PodspecParser.Tokens.QUOTE.rawValue)
			}
			open
			func QUOTE(_ i:Int) -> TerminalNode? {
				return getToken(PodspecParser.Tokens.QUOTE.rawValue, i)
			}
			open
			func name() -> NameContext? {
				return getRuleContext(NameContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PodspecParser.RULE_spec_name
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PodspecListener {
				listener.enterSpec_name(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PodspecListener {
				listener.exitSpec_name(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PodspecVisitor {
			    return visitor.visitSpec_name(self)
			}
			else if let visitor = visitor as? PodspecBaseVisitor {
			    return visitor.visitSpec_name(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func spec_name() throws -> Spec_nameContext {
		var _localctx: Spec_nameContext
		_localctx = Spec_nameContext(_ctx, getState())
		try enterRule(_localctx, 10, PodspecParser.RULE_spec_name)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(42)
		 	try spec_var()
		 	setState(43)
		 	try match(PodspecParser.Tokens.DOT.rawValue)
		 	setState(44)
		 	try match(PodspecParser.Tokens.NAME.rawValue)
		 	setState(45)
		 	try match(PodspecParser.Tokens.EQUALS.rawValue)
		 	setState(46)
		 	try match(PodspecParser.Tokens.QUOTE.rawValue)
		 	setState(47)
		 	try name()
		 	setState(48)
		 	try match(PodspecParser.Tokens.QUOTE.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class NameContext: ParserRuleContext {
			open
			func VALID_NAME() -> TerminalNode? {
				return getToken(PodspecParser.Tokens.VALID_NAME.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PodspecParser.RULE_name
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PodspecListener {
				listener.enterName(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PodspecListener {
				listener.exitName(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PodspecVisitor {
			    return visitor.visitName(self)
			}
			else if let visitor = visitor as? PodspecBaseVisitor {
			    return visitor.visitName(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func name() throws -> NameContext {
		var _localctx: NameContext
		_localctx = NameContext(_ctx, getState())
		try enterRule(_localctx, 12, PodspecParser.RULE_name)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(50)
		 	try match(PodspecParser.Tokens.VALID_NAME.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	static let _serializedATN:[Int] = [
		4,1,11,53,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,1,0,
		1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,1,1,1,1,2,1,2,1,2,1,2,1,2,1,2,1,2,3,2,32,
		8,2,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,4,1,4,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,
		5,1,6,1,6,1,6,0,0,7,0,2,4,6,8,10,12,0,0,47,0,14,1,0,0,0,2,22,1,0,0,0,4,
		31,1,0,0,0,6,33,1,0,0,0,8,40,1,0,0,0,10,42,1,0,0,0,12,50,1,0,0,0,14,15,
		5,1,0,0,15,16,5,3,0,0,16,17,5,2,0,0,17,18,3,2,1,0,18,19,5,2,0,0,19,20,
		3,4,2,0,20,21,5,4,0,0,21,1,1,0,0,0,22,23,5,11,0,0,23,3,1,0,0,0,24,25,3,
		10,5,0,25,26,3,4,2,0,26,32,1,0,0,0,27,28,3,6,3,0,28,29,3,4,2,0,29,32,1,
		0,0,0,30,32,3,6,3,0,31,24,1,0,0,0,31,27,1,0,0,0,31,30,1,0,0,0,32,5,1,0,
		0,0,33,34,3,2,1,0,34,35,5,5,0,0,35,36,5,9,0,0,36,37,5,8,0,0,37,38,3,8,
		4,0,38,39,5,8,0,0,39,7,1,0,0,0,40,41,5,11,0,0,41,9,1,0,0,0,42,43,3,2,1,
		0,43,44,5,5,0,0,44,45,5,6,0,0,45,46,5,7,0,0,46,47,5,8,0,0,47,48,3,12,6,
		0,48,49,5,8,0,0,49,11,1,0,0,0,50,51,5,11,0,0,51,13,1,0,0,0,1,31
	]

	public
	static let _ATN = try! ATNDeserializer().deserialize(_serializedATN)
}