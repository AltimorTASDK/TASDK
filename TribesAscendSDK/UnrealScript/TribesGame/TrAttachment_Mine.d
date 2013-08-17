module UnrealScript.TribesGame.TrAttachment_Mine;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_Mine : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAttachment_Mine")); }
	private static __gshared TrAttachment_Mine mDefaultProperties;
	@property final static TrAttachment_Mine DefaultProperties() { mixin(MGDPC("TrAttachment_Mine", "TrAttachment_Mine TribesGame.Default__TrAttachment_Mine")); }
}
