module UnrealScript.TribesGame.TrAttachment_HeavySpinfusor_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_HeavySpinfusor_MKD : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAttachment_HeavySpinfusor_MKD")()); }
	private static __gshared TrAttachment_HeavySpinfusor_MKD mDefaultProperties;
	@property final static TrAttachment_HeavySpinfusor_MKD DefaultProperties() { mixin(MGDPC!(TrAttachment_HeavySpinfusor_MKD, "TrAttachment_HeavySpinfusor_MKD TribesGame.Default__TrAttachment_HeavySpinfusor_MKD")()); }
}
