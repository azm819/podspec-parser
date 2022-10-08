// Generated from java-escape by ANTLR 4.11.1
import Antlr4

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link PodspecParser}.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
open class PodspecVisitor<T>: ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by {@link PodspecParser#global_scope}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitGlobal_scope(_ ctx: PodspecParser.Global_scopeContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link PodspecParser#spec_var}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitSpec_var(_ ctx: PodspecParser.Spec_varContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link PodspecParser#spec_body}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitSpec_body(_ ctx: PodspecParser.Spec_bodyContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link PodspecParser#spec_name}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitSpec_name(_ ctx: PodspecParser.Spec_nameContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link PodspecParser#name}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitName(_ ctx: PodspecParser.NameContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link PodspecParser#spec_dependency}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitSpec_dependency(_ ctx: PodspecParser.Spec_dependencyContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link PodspecParser#subspec}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitSubspec(_ ctx: PodspecParser.SubspecContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link PodspecParser#dependency}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitDependency(_ ctx: PodspecParser.DependencyContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

}