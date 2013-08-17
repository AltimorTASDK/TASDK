module UnrealScript.TribesGame.TrAttachment_Lacerator;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_Lacerator : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAttachment_Lacerator")); }
	private static __gshared TrAttachment_Lacerator mDefaultProperties;
	@property final static TrAttachment_Lacerator DefaultProperties() { mixin(MGDPC("TrAttachment_Lacerator", "TrAttachment_Lacerator TribesGame.Default__TrAttachment_Lacerator")); }
}
