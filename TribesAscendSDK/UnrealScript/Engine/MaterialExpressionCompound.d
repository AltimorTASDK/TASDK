module UnrealScript.Engine.MaterialExpressionCompound;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionCompound : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionCompound")()); }
	private static __gshared MaterialExpressionCompound mDefaultProperties;
	@property final static MaterialExpressionCompound DefaultProperties() { mixin(MGDPC!(MaterialExpressionCompound, "MaterialExpressionCompound Engine.Default__MaterialExpressionCompound")()); }
	@property final
	{
		auto ref
		{
			ScriptArray!(MaterialExpression) MaterialExpressions() { mixin(MGPC!(ScriptArray!(MaterialExpression), 108)()); }
			ScriptString Caption() { mixin(MGPC!(ScriptString, 120)()); }
		}
		bool bExpanded() { mixin(MGBPC!(132, 0x1)()); }
		bool bExpanded(bool val) { mixin(MSBPC!(132, 0x1)()); }
	}
}
