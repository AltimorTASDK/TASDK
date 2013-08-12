module UnrealScript.TribesGame.TrDmgType_GrenadeLauncher;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_GrenadeLauncher : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_GrenadeLauncher")); }
	private static __gshared TrDmgType_GrenadeLauncher mDefaultProperties;
	@property final static TrDmgType_GrenadeLauncher DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_GrenadeLauncher)("TrDmgType_GrenadeLauncher TribesGame.Default__TrDmgType_GrenadeLauncher")); }
}
