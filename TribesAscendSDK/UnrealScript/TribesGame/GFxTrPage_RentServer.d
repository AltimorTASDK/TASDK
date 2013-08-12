module UnrealScript.TribesGame.GFxTrPage_RentServer;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrPage;

extern(C++) interface GFxTrPage_RentServer : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrPage_RentServer")); }
	private static __gshared GFxTrPage_RentServer mDefaultProperties;
	@property final static GFxTrPage_RentServer DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GFxTrPage_RentServer)("GFxTrPage_RentServer TribesGame.Default__GFxTrPage_RentServer")); }
}
