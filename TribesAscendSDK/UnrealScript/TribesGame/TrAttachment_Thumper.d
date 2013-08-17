module UnrealScript.TribesGame.TrAttachment_Thumper;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_Thumper : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAttachment_Thumper")()); }
	private static __gshared TrAttachment_Thumper mDefaultProperties;
	@property final static TrAttachment_Thumper DefaultProperties() { mixin(MGDPC!(TrAttachment_Thumper, "TrAttachment_Thumper TribesGame.Default__TrAttachment_Thumper")()); }
}
