module UnrealScript.TribesGame.TrAttachment_Falcon;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_Falcon : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAttachment_Falcon")()); }
	private static __gshared TrAttachment_Falcon mDefaultProperties;
	@property final static TrAttachment_Falcon DefaultProperties() { mixin(MGDPC!(TrAttachment_Falcon, "TrAttachment_Falcon TribesGame.Default__TrAttachment_Falcon")()); }
}
