module UnrealScript.Engine.MaterialExpressionTextureSampleParameter;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialExpressionTextureSample;

extern(C++) interface MaterialExpressionTextureSampleParameter : MaterialExpressionTextureSample
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionTextureSampleParameter")); }
	@property final auto ref
	{
		UObject.Guid ExpressionGUID() { return *cast(UObject.Guid*)(cast(size_t)cast(void*)this + 148); }
		ScriptName ParameterName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 140); }
	}
}
