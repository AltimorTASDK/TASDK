module UnrealScript.TribesGame.TrAttachment_LightAssaultRifle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_LightAssaultRifle : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAttachment_LightAssaultRifle")()); }
	private static __gshared TrAttachment_LightAssaultRifle mDefaultProperties;
	@property final static TrAttachment_LightAssaultRifle DefaultProperties() { mixin(MGDPC!(TrAttachment_LightAssaultRifle, "TrAttachment_LightAssaultRifle TribesGame.Default__TrAttachment_LightAssaultRifle")()); }
}
