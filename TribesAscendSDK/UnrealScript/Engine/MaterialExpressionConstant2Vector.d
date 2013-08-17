module UnrealScript.Engine.MaterialExpressionConstant2Vector;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionConstant2Vector : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.MaterialExpressionConstant2Vector")); }
	private static __gshared MaterialExpressionConstant2Vector mDefaultProperties;
	@property final static MaterialExpressionConstant2Vector DefaultProperties() { mixin(MGDPC("MaterialExpressionConstant2Vector", "MaterialExpressionConstant2Vector Engine.Default__MaterialExpressionConstant2Vector")); }
	@property final auto ref
	{
		float G() { mixin(MGPC("float", 112)); }
		float R() { mixin(MGPC("float", 108)); }
	}
}
