module UnrealScript.Engine.MaterialExpressionConstant4Vector;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionConstant4Vector : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionConstant4Vector")()); }
	private static __gshared MaterialExpressionConstant4Vector mDefaultProperties;
	@property final static MaterialExpressionConstant4Vector DefaultProperties() { mixin(MGDPC!(MaterialExpressionConstant4Vector, "MaterialExpressionConstant4Vector Engine.Default__MaterialExpressionConstant4Vector")()); }
	@property final auto ref
	{
		float A() { mixin(MGPC!("float", 120)()); }
		float B() { mixin(MGPC!("float", 116)()); }
		float G() { mixin(MGPC!("float", 112)()); }
		float R() { mixin(MGPC!("float", 108)()); }
	}
}
