module UnrealScript.TribesGame.TrCollisionProxy_FlagLevel1;

import ScriptClasses;
import UnrealScript.TribesGame.TrCollisionProxy_Flag;

extern(C++) interface TrCollisionProxy_FlagLevel1 : TrCollisionProxy_Flag
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrCollisionProxy_FlagLevel1")); }
	private static __gshared TrCollisionProxy_FlagLevel1 mDefaultProperties;
	@property final static TrCollisionProxy_FlagLevel1 DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrCollisionProxy_FlagLevel1)("TrCollisionProxy_FlagLevel1 TribesGame.Default__TrCollisionProxy_FlagLevel1")); }
}
