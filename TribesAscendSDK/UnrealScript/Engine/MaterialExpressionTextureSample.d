module UnrealScript.Engine.MaterialExpressionTextureSample;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;
import UnrealScript.Engine.Texture;

extern(C++) interface MaterialExpressionTextureSample : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionTextureSample")); }
	@property final auto ref
	{
		MaterialExpression.ExpressionInput Coordinates() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 112); }
		// WARNING: Property 'Texture' has the same name as a defined type!
	}
}
