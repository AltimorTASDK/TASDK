module UnrealScript.TribesGame.GFxTrPage_RentServer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.GFxTrPage;

extern(C++) interface GFxTrPage_RentServer : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.GFxTrPage_RentServer")); }
	private static __gshared GFxTrPage_RentServer mDefaultProperties;
	@property final static GFxTrPage_RentServer DefaultProperties() { mixin(MGDPC("GFxTrPage_RentServer", "GFxTrPage_RentServer TribesGame.Default__GFxTrPage_RentServer")); }
}
