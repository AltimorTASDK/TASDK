module UnrealScript.TribesGame.TrDevice_ERechargePack;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_Pack;

extern(C++) interface TrDevice_ERechargePack : TrDevice_Pack
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_ERechargePack")); }
}
