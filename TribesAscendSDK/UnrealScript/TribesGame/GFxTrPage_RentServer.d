module UnrealScript.TribesGame.GFxTrPage_RentServer;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrPage;

extern(C++) interface GFxTrPage_RentServer : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrPage_RentServer")); }
}
