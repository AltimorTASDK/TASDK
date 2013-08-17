module UnrealScript.TribesGame.TrAttachment_AccurizedShotgun;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_AccurizedShotgun : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAttachment_AccurizedShotgun")); }
	private static __gshared TrAttachment_AccurizedShotgun mDefaultProperties;
	@property final static TrAttachment_AccurizedShotgun DefaultProperties() { mixin(MGDPC("TrAttachment_AccurizedShotgun", "TrAttachment_AccurizedShotgun TribesGame.Default__TrAttachment_AccurizedShotgun")); }
}
