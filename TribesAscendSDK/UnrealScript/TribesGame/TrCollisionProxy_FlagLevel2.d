module UnrealScript.TribesGame.TrCollisionProxy_FlagLevel2;

import ScriptClasses;
import UnrealScript.TribesGame.TrCollisionProxy_Flag;

extern(C++) interface TrCollisionProxy_FlagLevel2 : TrCollisionProxy_Flag
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrCollisionProxy_FlagLevel2")); }
	private static __gshared TrCollisionProxy_FlagLevel2 mDefaultProperties;
	@property final static TrCollisionProxy_FlagLevel2 DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrCollisionProxy_FlagLevel2)("TrCollisionProxy_FlagLevel2 TribesGame.Default__TrCollisionProxy_FlagLevel2")); }
}
