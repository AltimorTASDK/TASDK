module UnrealScript.TribesGame.TrProj_HeavyAPGrenade;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_Grenade;

extern(C++) interface TrProj_HeavyAPGrenade : TrProj_Grenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_HeavyAPGrenade")); }
	private static __gshared TrProj_HeavyAPGrenade mDefaultProperties;
	@property final static TrProj_HeavyAPGrenade DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_HeavyAPGrenade)("TrProj_HeavyAPGrenade TribesGame.Default__TrProj_HeavyAPGrenade")); }
}
