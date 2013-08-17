module UnrealScript.Engine.MaterialExpressionBumpOffset;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionBumpOffset : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.MaterialExpressionBumpOffset")); }
	private static __gshared MaterialExpressionBumpOffset mDefaultProperties;
	@property final static MaterialExpressionBumpOffset DefaultProperties() { mixin(MGDPC("MaterialExpressionBumpOffset", "MaterialExpressionBumpOffset Engine.Default__MaterialExpressionBumpOffset")); }
	@property final auto ref
	{
		float ReferencePlane() { mixin(MGPC("float", 168)); }
		float HeightRatio() { mixin(MGPC("float", 164)); }
		MaterialExpression.ExpressionInput Height() { mixin(MGPC("MaterialExpression.ExpressionInput", 136)); }
		MaterialExpression.ExpressionInput Coordinate() { mixin(MGPC("MaterialExpression.ExpressionInput", 108)); }
	}
}
