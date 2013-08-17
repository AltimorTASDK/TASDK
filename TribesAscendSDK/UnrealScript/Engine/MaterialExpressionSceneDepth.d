module UnrealScript.Engine.MaterialExpressionSceneDepth;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionSceneDepth : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.MaterialExpressionSceneDepth")); }
	private static __gshared MaterialExpressionSceneDepth mDefaultProperties;
	@property final static MaterialExpressionSceneDepth DefaultProperties() { mixin(MGDPC("MaterialExpressionSceneDepth", "MaterialExpressionSceneDepth Engine.Default__MaterialExpressionSceneDepth")); }
	@property final
	{
		@property final auto ref MaterialExpression.ExpressionInput Coordinates() { mixin(MGPC("MaterialExpression.ExpressionInput", 108)); }
		bool bNormalize() { mixin(MGBPC(136, 0x1)); }
		bool bNormalize(bool val) { mixin(MSBPC(136, 0x1)); }
	}
}
