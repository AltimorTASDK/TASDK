module UnrealScript.Engine.MaterialExpressionSine;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionSine : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionSine")); }
	@property final auto ref
	{
		float Period() { return *cast(float*)(cast(size_t)cast(void*)this + 136); }
		// WARNING: Property 'Input' has the same name as a defined type!
	}
}
