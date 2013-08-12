module UnrealScript.TribesGame.TrDevice_ERechargePack_Pathfinder;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_ERechargePack;

extern(C++) interface TrDevice_ERechargePack_Pathfinder : TrDevice_ERechargePack
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_ERechargePack_Pathfinder")); }
}
