module UnrealScript.TribesGame.TrDmgType_StickyGrenade_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_StickyGrenade_MKD : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_StickyGrenade_MKD")); }
	private static __gshared TrDmgType_StickyGrenade_MKD mDefaultProperties;
	@property final static TrDmgType_StickyGrenade_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_StickyGrenade_MKD)("TrDmgType_StickyGrenade_MKD TribesGame.Default__TrDmgType_StickyGrenade_MKD")); }
}
