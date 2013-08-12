module UnrealScript.TribesGame.TrDevice_MortarLauncher;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrDevice_MortarLauncher : TrDevice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_MortarLauncher")); }
	private static __gshared TrDevice_MortarLauncher mDefaultProperties;
	@property final static TrDevice_MortarLauncher DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_MortarLauncher)("TrDevice_MortarLauncher TribesGame.Default__TrDevice_MortarLauncher")); }
}
