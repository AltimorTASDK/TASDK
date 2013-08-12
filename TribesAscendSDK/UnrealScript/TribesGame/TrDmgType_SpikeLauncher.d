module UnrealScript.TribesGame.TrDmgType_SpikeLauncher;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_SpikeLauncher : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_SpikeLauncher")); }
	private static __gshared TrDmgType_SpikeLauncher mDefaultProperties;
	@property final static TrDmgType_SpikeLauncher DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_SpikeLauncher)("TrDmgType_SpikeLauncher TribesGame.Default__TrDmgType_SpikeLauncher")); }
}
