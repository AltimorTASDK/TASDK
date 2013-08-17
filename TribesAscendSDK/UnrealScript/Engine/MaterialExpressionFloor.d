module UnrealScript.Engine.MaterialExpressionFloor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionFloor : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionFloor")()); }
	private static __gshared MaterialExpressionFloor mDefaultProperties;
	@property final static MaterialExpressionFloor DefaultProperties() { mixin(MGDPC!(MaterialExpressionFloor, "MaterialExpressionFloor Engine.Default__MaterialExpressionFloor")()); }
	// WARNING: Property 'Input' has the same name as a defined type!
}
