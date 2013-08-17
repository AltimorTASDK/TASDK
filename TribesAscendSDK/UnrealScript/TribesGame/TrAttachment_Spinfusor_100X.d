module UnrealScript.TribesGame.TrAttachment_Spinfusor_100X;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_Spinfusor_100X : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAttachment_Spinfusor_100X")()); }
	private static __gshared TrAttachment_Spinfusor_100X mDefaultProperties;
	@property final static TrAttachment_Spinfusor_100X DefaultProperties() { mixin(MGDPC!(TrAttachment_Spinfusor_100X, "TrAttachment_Spinfusor_100X TribesGame.Default__TrAttachment_Spinfusor_100X")()); }
}
