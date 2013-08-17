module UnrealScript.TribesGame.TrAttachment_LightTwinfusor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_LightTwinfusor : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAttachment_LightTwinfusor")()); }
	private static __gshared TrAttachment_LightTwinfusor mDefaultProperties;
	@property final static TrAttachment_LightTwinfusor DefaultProperties() { mixin(MGDPC!(TrAttachment_LightTwinfusor, "TrAttachment_LightTwinfusor TribesGame.Default__TrAttachment_LightTwinfusor")()); }
}
