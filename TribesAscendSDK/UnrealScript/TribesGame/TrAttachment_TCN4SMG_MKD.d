module UnrealScript.TribesGame.TrAttachment_TCN4SMG_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_TCN4SMG_MKD : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAttachment_TCN4SMG_MKD")); }
	private static __gshared TrAttachment_TCN4SMG_MKD mDefaultProperties;
	@property final static TrAttachment_TCN4SMG_MKD DefaultProperties() { mixin(MGDPC("TrAttachment_TCN4SMG_MKD", "TrAttachment_TCN4SMG_MKD TribesGame.Default__TrAttachment_TCN4SMG_MKD")); }
}
