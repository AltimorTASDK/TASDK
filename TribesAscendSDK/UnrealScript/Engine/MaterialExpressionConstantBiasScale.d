module UnrealScript.Engine.MaterialExpressionConstantBiasScale;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionConstantBiasScale : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionConstantBiasScale")); }
	@property final auto ref
	{
		float Scale() { return *cast(float*)(cast(size_t)cast(void*)this + 140); }
		float Bias() { return *cast(float*)(cast(size_t)cast(void*)this + 136); }
		// WARNING: Property 'Input' has the same name as a defined type!
	}
}
