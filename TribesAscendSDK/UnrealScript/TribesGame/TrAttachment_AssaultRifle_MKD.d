module UnrealScript.TribesGame.TrAttachment_AssaultRifle_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_AssaultRifle_MKD : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAttachment_AssaultRifle_MKD")()); }
	private static __gshared TrAttachment_AssaultRifle_MKD mDefaultProperties;
	@property final static TrAttachment_AssaultRifle_MKD DefaultProperties() { mixin(MGDPC!(TrAttachment_AssaultRifle_MKD, "TrAttachment_AssaultRifle_MKD TribesGame.Default__TrAttachment_AssaultRifle_MKD")()); }
}
