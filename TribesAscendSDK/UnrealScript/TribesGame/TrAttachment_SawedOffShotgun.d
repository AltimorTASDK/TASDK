module UnrealScript.TribesGame.TrAttachment_SawedOffShotgun;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_SawedOffShotgun : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_SawedOffShotgun")); }
	private static __gshared TrAttachment_SawedOffShotgun mDefaultProperties;
	@property final static TrAttachment_SawedOffShotgun DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_SawedOffShotgun)("TrAttachment_SawedOffShotgun TribesGame.Default__TrAttachment_SawedOffShotgun")); }
}
