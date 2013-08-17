module UnrealScript.TribesGame.GFxTrFront_CustomGameSetup;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface GFxTrFront_CustomGameSetup : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.GFxTrFront_CustomGameSetup")); }
	private static __gshared GFxTrFront_CustomGameSetup mDefaultProperties;
	@property final static GFxTrFront_CustomGameSetup DefaultProperties() { mixin(MGDPC("GFxTrFront_CustomGameSetup", "GFxTrFront_CustomGameSetup TribesGame.Default__GFxTrFront_CustomGameSetup")); }
}
