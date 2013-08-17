module UnrealScript.TribesGame.TrAccoladeHelper;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface TrAccoladeHelper : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAccoladeHelper")); }
	private static __gshared TrAccoladeHelper mDefaultProperties;
	@property final static TrAccoladeHelper DefaultProperties() { mixin(MGDPC("TrAccoladeHelper", "TrAccoladeHelper TribesGame.Default__TrAccoladeHelper")); }
}
