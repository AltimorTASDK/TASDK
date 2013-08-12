module UnrealScript.TribesGame.TrDmgType_MortarLauncher;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_MortarLauncher : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_MortarLauncher")); }
	private static __gshared TrDmgType_MortarLauncher mDefaultProperties;
	@property final static TrDmgType_MortarLauncher DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_MortarLauncher)("TrDmgType_MortarLauncher TribesGame.Default__TrDmgType_MortarLauncher")); }
}
