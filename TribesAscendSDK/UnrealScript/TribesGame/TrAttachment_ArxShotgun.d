module UnrealScript.TribesGame.TrAttachment_ArxShotgun;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_ArxShotgun : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAttachment_ArxShotgun")()); }
	private static __gshared TrAttachment_ArxShotgun mDefaultProperties;
	@property final static TrAttachment_ArxShotgun DefaultProperties() { mixin(MGDPC!(TrAttachment_ArxShotgun, "TrAttachment_ArxShotgun TribesGame.Default__TrAttachment_ArxShotgun")()); }
}
