module UnrealScript.TribesGame.TrAttachment_Twinfusor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_Twinfusor : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAttachment_Twinfusor")()); }
	private static __gshared TrAttachment_Twinfusor mDefaultProperties;
	@property final static TrAttachment_Twinfusor DefaultProperties() { mixin(MGDPC!(TrAttachment_Twinfusor, "TrAttachment_Twinfusor TribesGame.Default__TrAttachment_Twinfusor")()); }
}
