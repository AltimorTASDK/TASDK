module UnrealScript.TribesGame.TrDevice_Shotgun_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_Shotgun;

extern(C++) interface TrDevice_Shotgun_MKD : TrDevice_Shotgun
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_Shotgun_MKD")); }
	private static __gshared TrDevice_Shotgun_MKD mDefaultProperties;
	@property final static TrDevice_Shotgun_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_Shotgun_MKD)("TrDevice_Shotgun_MKD TribesGame.Default__TrDevice_Shotgun_MKD")); }
}
