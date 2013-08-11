module UnrealScript.Engine.MaterialExpressionTerrainLayerWeight;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionTerrainLayerWeight : MaterialExpression
{
	public @property final auto ref UObject.Guid ExpressionGUID() { return *cast(UObject.Guid*)(cast(size_t)cast(void*)this + 180); }
	public @property final auto ref float PreviewWeight() { return *cast(float*)(cast(size_t)cast(void*)this + 176); }
	public @property final auto ref ScriptName ParameterName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref MaterialExpression.ExpressionInput Layer() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 140); }
	public @property final auto ref MaterialExpression.ExpressionInput Base() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref UObject.Pointer InstanceOverride() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 108); }
}
