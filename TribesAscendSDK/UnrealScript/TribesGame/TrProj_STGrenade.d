module UnrealScript.TribesGame.TrProj_STGrenade;

import ScriptClasses;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_STGrenade : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_STGrenade")); }
	private static __gshared TrProj_STGrenade mDefaultProperties;
	@property final static TrProj_STGrenade DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_STGrenade)("TrProj_STGrenade TribesGame.Default__TrProj_STGrenade")); }
}
