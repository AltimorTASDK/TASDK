module UnrealScript.TribesGame.TrDmgType_HeavyBoltLauncher;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_HeavyBoltLauncher : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_HeavyBoltLauncher")); }
	private static __gshared TrDmgType_HeavyBoltLauncher mDefaultProperties;
	@property final static TrDmgType_HeavyBoltLauncher DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_HeavyBoltLauncher)("TrDmgType_HeavyBoltLauncher TribesGame.Default__TrDmgType_HeavyBoltLauncher")); }
}
