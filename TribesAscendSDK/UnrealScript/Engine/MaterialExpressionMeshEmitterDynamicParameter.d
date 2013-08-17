module UnrealScript.Engine.MaterialExpressionMeshEmitterDynamicParameter;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpressionDynamicParameter;

extern(C++) interface MaterialExpressionMeshEmitterDynamicParameter : MaterialExpressionDynamicParameter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionMeshEmitterDynamicParameter")()); }
	private static __gshared MaterialExpressionMeshEmitterDynamicParameter mDefaultProperties;
	@property final static MaterialExpressionMeshEmitterDynamicParameter DefaultProperties() { mixin(MGDPC!(MaterialExpressionMeshEmitterDynamicParameter, "MaterialExpressionMeshEmitterDynamicParameter Engine.Default__MaterialExpressionMeshEmitterDynamicParameter")()); }
}
