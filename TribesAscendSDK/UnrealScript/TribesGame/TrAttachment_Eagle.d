module UnrealScript.TribesGame.TrAttachment_Eagle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_Eagle : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAttachment_Eagle")()); }
	private static __gshared TrAttachment_Eagle mDefaultProperties;
	@property final static TrAttachment_Eagle DefaultProperties() { mixin(MGDPC!(TrAttachment_Eagle, "TrAttachment_Eagle TribesGame.Default__TrAttachment_Eagle")()); }
}
