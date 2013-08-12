module UnrealScript.TribesGame.TrDmgType_LightStickyGrenade;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_LightStickyGrenade : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_LightStickyGrenade")); }
	private static __gshared TrDmgType_LightStickyGrenade mDefaultProperties;
	@property final static TrDmgType_LightStickyGrenade DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_LightStickyGrenade)("TrDmgType_LightStickyGrenade TribesGame.Default__TrDmgType_LightStickyGrenade")); }
}
