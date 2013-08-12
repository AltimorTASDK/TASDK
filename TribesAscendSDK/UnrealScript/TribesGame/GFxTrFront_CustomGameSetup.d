module UnrealScript.TribesGame.GFxTrFront_CustomGameSetup;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface GFxTrFront_CustomGameSetup : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrFront_CustomGameSetup")); }
	private static __gshared GFxTrFront_CustomGameSetup mDefaultProperties;
	@property final static GFxTrFront_CustomGameSetup DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GFxTrFront_CustomGameSetup)("GFxTrFront_CustomGameSetup TribesGame.Default__GFxTrFront_CustomGameSetup")); }
}
