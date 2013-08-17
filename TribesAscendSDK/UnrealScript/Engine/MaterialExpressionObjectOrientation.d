module UnrealScript.Engine.MaterialExpressionObjectOrientation;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionObjectOrientation : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionObjectOrientation")()); }
	private static __gshared MaterialExpressionObjectOrientation mDefaultProperties;
	@property final static MaterialExpressionObjectOrientation DefaultProperties() { mixin(MGDPC!(MaterialExpressionObjectOrientation, "MaterialExpressionObjectOrientation Engine.Default__MaterialExpressionObjectOrientation")()); }
}
