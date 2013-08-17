module UnrealScript.TribesGame.TrAttachment_StickyGrenade_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_StickyGrenade_MKD : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAttachment_StickyGrenade_MKD")); }
	private static __gshared TrAttachment_StickyGrenade_MKD mDefaultProperties;
	@property final static TrAttachment_StickyGrenade_MKD DefaultProperties() { mixin(MGDPC("TrAttachment_StickyGrenade_MKD", "TrAttachment_StickyGrenade_MKD TribesGame.Default__TrAttachment_StickyGrenade_MKD")); }
}
