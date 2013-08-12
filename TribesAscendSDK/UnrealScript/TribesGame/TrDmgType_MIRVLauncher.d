module UnrealScript.TribesGame.TrDmgType_MIRVLauncher;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_MIRVLauncher : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_MIRVLauncher")); }
	private static __gshared TrDmgType_MIRVLauncher mDefaultProperties;
	@property final static TrDmgType_MIRVLauncher DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_MIRVLauncher)("TrDmgType_MIRVLauncher TribesGame.Default__TrDmgType_MIRVLauncher")); }
}
