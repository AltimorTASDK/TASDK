module UnrealScript.TribesGame.GFxTrFront_Setup;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface GFxTrFront_Setup : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrFront_Setup")); }
	private static __gshared GFxTrFront_Setup mDefaultProperties;
	@property final static GFxTrFront_Setup DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GFxTrFront_Setup)("GFxTrFront_Setup TribesGame.Default__GFxTrFront_Setup")); }
}
