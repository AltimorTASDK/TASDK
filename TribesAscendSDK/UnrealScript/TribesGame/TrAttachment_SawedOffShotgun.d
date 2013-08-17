module UnrealScript.TribesGame.TrAttachment_SawedOffShotgun;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_SawedOffShotgun : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAttachment_SawedOffShotgun")()); }
	private static __gshared TrAttachment_SawedOffShotgun mDefaultProperties;
	@property final static TrAttachment_SawedOffShotgun DefaultProperties() { mixin(MGDPC!(TrAttachment_SawedOffShotgun, "TrAttachment_SawedOffShotgun TribesGame.Default__TrAttachment_SawedOffShotgun")()); }
}
