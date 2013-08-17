module UnrealScript.TribesGame.TrAttachment_MIRVGrenade;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_MIRVGrenade : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAttachment_MIRVGrenade")()); }
	private static __gshared TrAttachment_MIRVGrenade mDefaultProperties;
	@property final static TrAttachment_MIRVGrenade DefaultProperties() { mixin(MGDPC!(TrAttachment_MIRVGrenade, "TrAttachment_MIRVGrenade TribesGame.Default__TrAttachment_MIRVGrenade")()); }
}
