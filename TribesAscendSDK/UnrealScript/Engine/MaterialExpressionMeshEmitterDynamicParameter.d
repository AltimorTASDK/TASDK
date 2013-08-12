module UnrealScript.Engine.MaterialExpressionMeshEmitterDynamicParameter;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpressionDynamicParameter;

extern(C++) interface MaterialExpressionMeshEmitterDynamicParameter : MaterialExpressionDynamicParameter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionMeshEmitterDynamicParameter")); }
	private static __gshared MaterialExpressionMeshEmitterDynamicParameter mDefaultProperties;
	@property final static MaterialExpressionMeshEmitterDynamicParameter DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionMeshEmitterDynamicParameter)("MaterialExpressionMeshEmitterDynamicParameter Engine.Default__MaterialExpressionMeshEmitterDynamicParameter")); }
}
