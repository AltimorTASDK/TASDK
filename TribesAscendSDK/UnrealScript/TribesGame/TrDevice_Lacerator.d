module UnrealScript.TribesGame.TrDevice_Lacerator;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrDevice_Lacerator : TrDevice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_Lacerator")); }
	private static __gshared TrDevice_Lacerator mDefaultProperties;
	@property final static TrDevice_Lacerator DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_Lacerator)("TrDevice_Lacerator TribesGame.Default__TrDevice_Lacerator")); }
}
