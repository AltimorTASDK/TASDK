module UnrealScript.Engine.MaterialExpressionSceneDepth;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionSceneDepth : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionSceneDepth")); }
	private static __gshared MaterialExpressionSceneDepth mDefaultProperties;
	@property final static MaterialExpressionSceneDepth DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionSceneDepth)("MaterialExpressionSceneDepth Engine.Default__MaterialExpressionSceneDepth")); }
	@property final
	{
		@property final auto ref MaterialExpression.ExpressionInput Coordinates() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 108); }
		bool bNormalize() { return (*cast(uint*)(cast(size_t)cast(void*)this + 136) & 0x1) != 0; }
		bool bNormalize(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 136) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 136) &= ~0x1; } return val; }
	}
}
