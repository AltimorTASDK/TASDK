module UnrealScript.TribesGame.TrDmgType_StickyGrenade;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_StickyGrenade : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_StickyGrenade")); }
	private static __gshared TrDmgType_StickyGrenade mDefaultProperties;
	@property final static TrDmgType_StickyGrenade DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_StickyGrenade)("TrDmgType_StickyGrenade TribesGame.Default__TrDmgType_StickyGrenade")); }
}
