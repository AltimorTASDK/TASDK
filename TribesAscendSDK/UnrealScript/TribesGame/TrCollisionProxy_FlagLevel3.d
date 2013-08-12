module UnrealScript.TribesGame.TrCollisionProxy_FlagLevel3;

import ScriptClasses;
import UnrealScript.TribesGame.TrCollisionProxy_Flag;

extern(C++) interface TrCollisionProxy_FlagLevel3 : TrCollisionProxy_Flag
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrCollisionProxy_FlagLevel3")); }
	private static __gshared TrCollisionProxy_FlagLevel3 mDefaultProperties;
	@property final static TrCollisionProxy_FlagLevel3 DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrCollisionProxy_FlagLevel3)("TrCollisionProxy_FlagLevel3 TribesGame.Default__TrCollisionProxy_FlagLevel3")); }
}
