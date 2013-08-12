module UnrealScript.Engine.MaterialExpressionScalarParameter;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpressionParameter;

extern(C++) interface MaterialExpressionScalarParameter : MaterialExpressionParameter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionScalarParameter")); }
	private static __gshared MaterialExpressionScalarParameter mDefaultProperties;
	@property final static MaterialExpressionScalarParameter DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionScalarParameter)("MaterialExpressionScalarParameter Engine.Default__MaterialExpressionScalarParameter")); }
	@property final auto ref float DefaultValue() { return *cast(float*)(cast(size_t)cast(void*)this + 132); }
}
