module UnrealScript.Engine.MaterialExpressionDesaturation;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionDesaturation : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionDesaturation")); }
	@property final auto ref
	{
		UObject.LinearColor LuminanceFactors() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 164); }
		MaterialExpression.ExpressionInput Percent() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 136); }
		// WARNING: Property 'Input' has the same name as a defined type!
	}
}
