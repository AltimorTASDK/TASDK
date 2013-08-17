module UnrealScript.Engine.MaterialExpressionScalarParameter;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpressionParameter;

extern(C++) interface MaterialExpressionScalarParameter : MaterialExpressionParameter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionScalarParameter")()); }
	private static __gshared MaterialExpressionScalarParameter mDefaultProperties;
	@property final static MaterialExpressionScalarParameter DefaultProperties() { mixin(MGDPC!(MaterialExpressionScalarParameter, "MaterialExpressionScalarParameter Engine.Default__MaterialExpressionScalarParameter")()); }
	@property final auto ref float DefaultValue() { mixin(MGPC!("float", 132)()); }
}
