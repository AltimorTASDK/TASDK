module UnrealScript.TribesGame.GFxTrFront_Party;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface GFxTrFront_Party : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.GFxTrFront_Party")); }
	private static __gshared GFxTrFront_Party mDefaultProperties;
	@property final static GFxTrFront_Party DefaultProperties() { mixin(MGDPC("GFxTrFront_Party", "GFxTrFront_Party TribesGame.Default__GFxTrFront_Party")); }
}
