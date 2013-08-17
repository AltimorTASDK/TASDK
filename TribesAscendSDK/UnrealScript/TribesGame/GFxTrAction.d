module UnrealScript.TribesGame.GFxTrAction;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.TribesGame.GFxTrPage;

extern(C++) interface GFxTrAction : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.GFxTrAction")()); }
	private static __gshared GFxTrAction mDefaultProperties;
	@property final static GFxTrAction DefaultProperties() { mixin(MGDPC!(GFxTrAction, "GFxTrAction TribesGame.Default__GFxTrAction")()); }
	@property final auto ref
	{
		GFxTrPage ActionPage() { mixin(MGPC!(GFxTrPage, 80)()); }
		ScriptString ActionString() { mixin(MGPC!(ScriptString, 68)()); }
		int ActionNumber() { mixin(MGPC!(int, 64)()); }
		int ActionIndex() { mixin(MGPC!(int, 60)()); }
	}
}
