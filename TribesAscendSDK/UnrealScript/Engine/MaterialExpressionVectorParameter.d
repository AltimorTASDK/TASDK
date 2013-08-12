module UnrealScript.Engine.MaterialExpressionVectorParameter;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialExpressionParameter;

extern(C++) interface MaterialExpressionVectorParameter : MaterialExpressionParameter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionVectorParameter")); }
	@property final auto ref UObject.LinearColor DefaultValue() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 132); }
}
