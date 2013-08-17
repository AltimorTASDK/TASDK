module UnrealScript.TribesGame.GFxTrFront_Setup;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface GFxTrFront_Setup : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.GFxTrFront_Setup")); }
	private static __gshared GFxTrFront_Setup mDefaultProperties;
	@property final static GFxTrFront_Setup DefaultProperties() { mixin(MGDPC("GFxTrFront_Setup", "GFxTrFront_Setup TribesGame.Default__GFxTrFront_Setup")); }
}
