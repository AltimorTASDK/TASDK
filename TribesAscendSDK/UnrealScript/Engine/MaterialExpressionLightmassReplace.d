module UnrealScript.Engine.MaterialExpressionLightmassReplace;

import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionLightmassReplace : MaterialExpression
{
public extern(D):
	@property final auto ref
	{
		MaterialExpression.ExpressionInput Lightmass() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 136); }
		MaterialExpression.ExpressionInput Realtime() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 108); }
	}
}
