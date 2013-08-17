module UnrealScript.TribesGame.TrAttachment_HeavyAPGrenade_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_HeavyAPGrenade_MKD : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAttachment_HeavyAPGrenade_MKD")); }
	private static __gshared TrAttachment_HeavyAPGrenade_MKD mDefaultProperties;
	@property final static TrAttachment_HeavyAPGrenade_MKD DefaultProperties() { mixin(MGDPC("TrAttachment_HeavyAPGrenade_MKD", "TrAttachment_HeavyAPGrenade_MKD TribesGame.Default__TrAttachment_HeavyAPGrenade_MKD")); }
}
