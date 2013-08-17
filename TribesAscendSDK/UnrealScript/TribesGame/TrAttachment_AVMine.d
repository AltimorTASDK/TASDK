module UnrealScript.TribesGame.TrAttachment_AVMine;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_AVMine : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAttachment_AVMine")); }
	private static __gshared TrAttachment_AVMine mDefaultProperties;
	@property final static TrAttachment_AVMine DefaultProperties() { mixin(MGDPC("TrAttachment_AVMine", "TrAttachment_AVMine TribesGame.Default__TrAttachment_AVMine")); }
}
