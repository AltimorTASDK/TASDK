module UnrealScript.TribesGame.TrAttachment_LR1Mortar;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_LR1Mortar : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAttachment_LR1Mortar")()); }
	private static __gshared TrAttachment_LR1Mortar mDefaultProperties;
	@property final static TrAttachment_LR1Mortar DefaultProperties() { mixin(MGDPC!(TrAttachment_LR1Mortar, "TrAttachment_LR1Mortar TribesGame.Default__TrAttachment_LR1Mortar")()); }
}
