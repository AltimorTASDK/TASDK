module UnrealScript.Engine.MaterialExpressionLightmassReplace;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionLightmassReplace : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionLightmassReplace")); }
	@property final auto ref
	{
		MaterialExpression.ExpressionInput Lightmass() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 136); }
		MaterialExpression.ExpressionInput Realtime() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 108); }
	}
}
