module UnrealScript.Engine.AnimObject;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface AnimObject : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.AnimObject")()); }
	private static __gshared AnimObject mDefaultProperties;
	@property final static AnimObject DefaultProperties() { mixin(MGDPC!(AnimObject, "AnimObject Engine.Default__AnimObject")()); }
	@property final auto ref
	{
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'SkelComponent'!
		ScriptString CategoryDesc() { mixin(MGPC!(ScriptString, 80)()); }
		int OutDrawY() { mixin(MGPC!(int, 76)()); }
		int NodePosY() { mixin(MGPC!(int, 72)()); }
		int NodePosX() { mixin(MGPC!(int, 68)()); }
		int DrawHeight() { mixin(MGPC!(int, 64)()); }
		int DrawWidth() { mixin(MGPC!(int, 60)()); }
	}
}
