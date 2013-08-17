module UnrealScript.Engine.MaterialExpressionScreenPosition;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionScreenPosition : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionScreenPosition")()); }
	private static __gshared MaterialExpressionScreenPosition mDefaultProperties;
	@property final static MaterialExpressionScreenPosition DefaultProperties() { mixin(MGDPC!(MaterialExpressionScreenPosition, "MaterialExpressionScreenPosition Engine.Default__MaterialExpressionScreenPosition")()); }
	@property final
	{
		bool ScreenAlign() { mixin(MGBPC!(108, 0x1)()); }
		bool ScreenAlign(bool val) { mixin(MSBPC!(108, 0x1)()); }
	}
}
