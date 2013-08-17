module UnrealScript.TribesGame.TrAttachment_Sparrow;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_Sparrow : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAttachment_Sparrow")); }
	private static __gshared TrAttachment_Sparrow mDefaultProperties;
	@property final static TrAttachment_Sparrow DefaultProperties() { mixin(MGDPC("TrAttachment_Sparrow", "TrAttachment_Sparrow TribesGame.Default__TrAttachment_Sparrow")); }
}
