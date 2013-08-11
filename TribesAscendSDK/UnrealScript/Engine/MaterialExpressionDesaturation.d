module UnrealScript.Engine.MaterialExpressionDesaturation;

import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionDesaturation : MaterialExpression
{
public extern(D):
	@property final auto ref
	{
		UObject.LinearColor LuminanceFactors() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 164); }
		MaterialExpression.ExpressionInput Percent() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 136); }
		// WARNING: Property 'Input' has the same name as a defined type!
	}
}
