module UnrealScript.TribesGame.TrAttachment_Buckler;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_Buckler : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAttachment_Buckler")); }
	private static __gshared TrAttachment_Buckler mDefaultProperties;
	@property final static TrAttachment_Buckler DefaultProperties() { mixin(MGDPC("TrAttachment_Buckler", "TrAttachment_Buckler TribesGame.Default__TrAttachment_Buckler")); }
}
