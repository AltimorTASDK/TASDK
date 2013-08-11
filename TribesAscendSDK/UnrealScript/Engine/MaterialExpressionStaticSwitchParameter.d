module UnrealScript.Engine.MaterialExpressionStaticSwitchParameter;

import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialExpressionParameter;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionStaticSwitchParameter : MaterialExpressionParameter
{
	public @property final auto ref UObject.Pointer InstanceOverride() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 192); }
	public @property final auto ref MaterialExpression.ExpressionInput B() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref MaterialExpression.ExpressionInput A() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 136); }
	public @property final bool ExtendedCaptionDisplay() { return (*cast(uint*)(cast(size_t)cast(void*)this + 132) & 0x2) != 0; }
	public @property final bool ExtendedCaptionDisplay(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 132) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 132) &= ~0x2; } return val; }
	public @property final bool DefaultValue() { return (*cast(uint*)(cast(size_t)cast(void*)this + 132) & 0x1) != 0; }
	public @property final bool DefaultValue(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 132) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 132) &= ~0x1; } return val; }
}
