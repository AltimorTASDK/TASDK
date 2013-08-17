module UnrealScript.TribesGame.TrAttachment_HeavySpinfusor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_HeavySpinfusor : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAttachment_HeavySpinfusor")()); }
	private static __gshared TrAttachment_HeavySpinfusor mDefaultProperties;
	@property final static TrAttachment_HeavySpinfusor DefaultProperties() { mixin(MGDPC!(TrAttachment_HeavySpinfusor, "TrAttachment_HeavySpinfusor TribesGame.Default__TrAttachment_HeavySpinfusor")()); }
}
