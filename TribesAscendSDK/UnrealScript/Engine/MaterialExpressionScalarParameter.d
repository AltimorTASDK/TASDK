module UnrealScript.Engine.MaterialExpressionScalarParameter;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpressionParameter;

extern(C++) interface MaterialExpressionScalarParameter : MaterialExpressionParameter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionScalarParameter")); }
	@property final auto ref float DefaultValue() { return *cast(float*)(cast(size_t)cast(void*)this + 132); }
}
