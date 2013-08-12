module UnrealScript.TribesGame.TrDevice_StickyGrenade;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_AutoFire;

extern(C++) interface TrDevice_StickyGrenade : TrDevice_AutoFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_StickyGrenade")); }
}
