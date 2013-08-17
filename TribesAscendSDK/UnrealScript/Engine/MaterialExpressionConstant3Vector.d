module UnrealScript.Engine.MaterialExpressionConstant3Vector;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionConstant3Vector : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.MaterialExpressionConstant3Vector")); }
	private static __gshared MaterialExpressionConstant3Vector mDefaultProperties;
	@property final static MaterialExpressionConstant3Vector DefaultProperties() { mixin(MGDPC("MaterialExpressionConstant3Vector", "MaterialExpressionConstant3Vector Engine.Default__MaterialExpressionConstant3Vector")); }
	@property final auto ref
	{
		float B() { mixin(MGPC("float", 116)); }
		float G() { mixin(MGPC("float", 112)); }
		float R() { mixin(MGPC("float", 108)); }
	}
}
