module UnrealScript.Engine.MaterialExpressionWindDirectionAndSpeed;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionWindDirectionAndSpeed : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionWindDirectionAndSpeed")); }
	private static __gshared MaterialExpressionWindDirectionAndSpeed mDefaultProperties;
	@property final static MaterialExpressionWindDirectionAndSpeed DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionWindDirectionAndSpeed)("MaterialExpressionWindDirectionAndSpeed Engine.Default__MaterialExpressionWindDirectionAndSpeed")); }
}
