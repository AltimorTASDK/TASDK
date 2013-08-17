module UnrealScript.TribesGame.TrAttachment_NovaColt;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_NovaColt : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAttachment_NovaColt")()); }
	private static __gshared TrAttachment_NovaColt mDefaultProperties;
	@property final static TrAttachment_NovaColt DefaultProperties() { mixin(MGDPC!(TrAttachment_NovaColt, "TrAttachment_NovaColt TribesGame.Default__TrAttachment_NovaColt")()); }
}
