module UnrealScript.Engine.MaterialExpressionConstantClamp;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionConstantClamp : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionConstantClamp")); }
	@property final auto ref
	{
		float Max() { return *cast(float*)(cast(size_t)cast(void*)this + 140); }
		float Min() { return *cast(float*)(cast(size_t)cast(void*)this + 136); }
		// WARNING: Property 'Input' has the same name as a defined type!
	}
}
