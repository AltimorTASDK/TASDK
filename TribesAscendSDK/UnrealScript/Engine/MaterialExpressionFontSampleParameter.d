module UnrealScript.Engine.MaterialExpressionFontSampleParameter;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpressionFontSample;
import UnrealScript.Core.UObject;

extern(C++) interface MaterialExpressionFontSampleParameter : MaterialExpressionFontSample
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionFontSampleParameter")); }
	@property final auto ref
	{
		UObject.Guid ExpressionGUID() { return *cast(UObject.Guid*)(cast(size_t)cast(void*)this + 124); }
		ScriptName ParameterName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 116); }
	}
}
