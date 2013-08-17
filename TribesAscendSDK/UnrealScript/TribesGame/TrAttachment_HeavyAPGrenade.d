module UnrealScript.TribesGame.TrAttachment_HeavyAPGrenade;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_HeavyAPGrenade : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAttachment_HeavyAPGrenade")()); }
	private static __gshared TrAttachment_HeavyAPGrenade mDefaultProperties;
	@property final static TrAttachment_HeavyAPGrenade DefaultProperties() { mixin(MGDPC!(TrAttachment_HeavyAPGrenade, "TrAttachment_HeavyAPGrenade TribesGame.Default__TrAttachment_HeavyAPGrenade")()); }
}
