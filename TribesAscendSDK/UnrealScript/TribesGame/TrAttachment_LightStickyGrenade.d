module UnrealScript.TribesGame.TrAttachment_LightStickyGrenade;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_LightStickyGrenade : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAttachment_LightStickyGrenade")()); }
	private static __gshared TrAttachment_LightStickyGrenade mDefaultProperties;
	@property final static TrAttachment_LightStickyGrenade DefaultProperties() { mixin(MGDPC!(TrAttachment_LightStickyGrenade, "TrAttachment_LightStickyGrenade TribesGame.Default__TrAttachment_LightStickyGrenade")()); }
}
