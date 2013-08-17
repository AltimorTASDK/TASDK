module UnrealScript.TribesGame.TrAttachment_APGrenade;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_APGrenade : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAttachment_APGrenade")()); }
	private static __gshared TrAttachment_APGrenade mDefaultProperties;
	@property final static TrAttachment_APGrenade DefaultProperties() { mixin(MGDPC!(TrAttachment_APGrenade, "TrAttachment_APGrenade TribesGame.Default__TrAttachment_APGrenade")()); }
}
