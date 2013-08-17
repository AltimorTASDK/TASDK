module UnrealScript.TribesGame.TrCollisionProxy_FlagLevel2;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrCollisionProxy_Flag;

extern(C++) interface TrCollisionProxy_FlagLevel2 : TrCollisionProxy_Flag
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrCollisionProxy_FlagLevel2")); }
	private static __gshared TrCollisionProxy_FlagLevel2 mDefaultProperties;
	@property final static TrCollisionProxy_FlagLevel2 DefaultProperties() { mixin(MGDPC("TrCollisionProxy_FlagLevel2", "TrCollisionProxy_FlagLevel2 TribesGame.Default__TrCollisionProxy_FlagLevel2")); }
}
