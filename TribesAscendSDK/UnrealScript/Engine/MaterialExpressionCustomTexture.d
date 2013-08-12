module UnrealScript.Engine.MaterialExpressionCustomTexture;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;
import UnrealScript.Engine.Texture;

extern(C++) interface MaterialExpressionCustomTexture : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionCustomTexture")); }
	// WARNING: Property 'Texture' has the same name as a defined type!
}
