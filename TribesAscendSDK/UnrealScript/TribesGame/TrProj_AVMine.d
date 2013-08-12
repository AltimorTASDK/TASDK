module UnrealScript.TribesGame.TrProj_AVMine;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_Mine;

extern(C++) interface TrProj_AVMine : TrProj_Mine
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_AVMine")); }
	private static __gshared TrProj_AVMine mDefaultProperties;
	@property final static TrProj_AVMine DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_AVMine)("TrProj_AVMine TribesGame.Default__TrProj_AVMine")); }
}
