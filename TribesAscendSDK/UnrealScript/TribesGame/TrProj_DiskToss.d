module UnrealScript.TribesGame.TrProj_DiskToss;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_Spinfusor;

extern(C++) interface TrProj_DiskToss : TrProj_Spinfusor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_DiskToss")); }
	private static __gshared TrProj_DiskToss mDefaultProperties;
	@property final static TrProj_DiskToss DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_DiskToss)("TrProj_DiskToss TribesGame.Default__TrProj_DiskToss")); }
}
