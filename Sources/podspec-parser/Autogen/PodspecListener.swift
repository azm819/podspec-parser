// Generated from java-escape by ANTLR 4.11.1
import Antlr4

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link PodspecParser}.
 */
public protocol PodspecListener: ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link PodspecParser#global_scope}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterGlobal_scope(_ ctx: PodspecParser.Global_scopeContext)
	/**
	 * Exit a parse tree produced by {@link PodspecParser#global_scope}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitGlobal_scope(_ ctx: PodspecParser.Global_scopeContext)
	/**
	 * Enter a parse tree produced by {@link PodspecParser#spec_var}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSpec_var(_ ctx: PodspecParser.Spec_varContext)
	/**
	 * Exit a parse tree produced by {@link PodspecParser#spec_var}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSpec_var(_ ctx: PodspecParser.Spec_varContext)
	/**
	 * Enter a parse tree produced by {@link PodspecParser#spec_body}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSpec_body(_ ctx: PodspecParser.Spec_bodyContext)
	/**
	 * Exit a parse tree produced by {@link PodspecParser#spec_body}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSpec_body(_ ctx: PodspecParser.Spec_bodyContext)
	/**
	 * Enter a parse tree produced by {@link PodspecParser#spec_name}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSpec_name(_ ctx: PodspecParser.Spec_nameContext)
	/**
	 * Exit a parse tree produced by {@link PodspecParser#spec_name}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSpec_name(_ ctx: PodspecParser.Spec_nameContext)
	/**
	 * Enter a parse tree produced by {@link PodspecParser#name}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterName(_ ctx: PodspecParser.NameContext)
	/**
	 * Exit a parse tree produced by {@link PodspecParser#name}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitName(_ ctx: PodspecParser.NameContext)
	/**
	 * Enter a parse tree produced by {@link PodspecParser#spec_dependency}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSpec_dependency(_ ctx: PodspecParser.Spec_dependencyContext)
	/**
	 * Exit a parse tree produced by {@link PodspecParser#spec_dependency}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSpec_dependency(_ ctx: PodspecParser.Spec_dependencyContext)
	/**
	 * Enter a parse tree produced by {@link PodspecParser#subspec}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSubspec(_ ctx: PodspecParser.SubspecContext)
	/**
	 * Exit a parse tree produced by {@link PodspecParser#subspec}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSubspec(_ ctx: PodspecParser.SubspecContext)
	/**
	 * Enter a parse tree produced by {@link PodspecParser#dependency}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDependency(_ ctx: PodspecParser.DependencyContext)
	/**
	 * Exit a parse tree produced by {@link PodspecParser#dependency}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDependency(_ ctx: PodspecParser.DependencyContext)
}