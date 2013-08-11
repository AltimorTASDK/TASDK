module UnrealScript.Engine.MaterialExpressionLightmassReplace;

import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionLightmassReplace : MaterialExpression
{
	public @property final auto ref MaterialExpression.ExpressionInput Lightmass() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref MaterialExpression.ExpressionInput Realtime() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 108); }
}
