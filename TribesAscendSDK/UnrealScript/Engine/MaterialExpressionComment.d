module UnrealScript.Engine.MaterialExpressionComment;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionComment : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.MaterialExpressionComment")); }
	private static __gshared MaterialExpressionComment mDefaultProperties;
	@property final static MaterialExpressionComment DefaultProperties() { mixin(MGDPC("MaterialExpressionComment", "MaterialExpressionComment Engine.Default__MaterialExpressionComment")); }
	@property final auto ref
	{
		ScriptString Text() { mixin(MGPC("ScriptString", 124)); }
		int SizeY() { mixin(MGPC("int", 120)); }
		int SizeX() { mixin(MGPC("int", 116)); }
		int PosY() { mixin(MGPC("int", 112)); }
		int PosX() { mixin(MGPC("int", 108)); }
	}
}
