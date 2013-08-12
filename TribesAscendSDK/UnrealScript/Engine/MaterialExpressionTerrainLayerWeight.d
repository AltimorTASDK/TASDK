module UnrealScript.Engine.MaterialExpressionTerrainLayerWeight;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionTerrainLayerWeight : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionTerrainLayerWeight")); }
	@property final auto ref
	{
		UObject.Guid ExpressionGUID() { return *cast(UObject.Guid*)(cast(size_t)cast(void*)this + 180); }
		float PreviewWeight() { return *cast(float*)(cast(size_t)cast(void*)this + 176); }
		ScriptName ParameterName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 168); }
		MaterialExpression.ExpressionInput Layer() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 140); }
		MaterialExpression.ExpressionInput Base() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 112); }
		UObject.Pointer InstanceOverride() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 108); }
	}
}
