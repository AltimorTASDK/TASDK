module UnrealScript.TribesGame.TrAttachment_ImpactBomblets;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_ImpactBomblets : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAttachment_ImpactBomblets")); }
	private static __gshared TrAttachment_ImpactBomblets mDefaultProperties;
	@property final static TrAttachment_ImpactBomblets DefaultProperties() { mixin(MGDPC("TrAttachment_ImpactBomblets", "TrAttachment_ImpactBomblets TribesGame.Default__TrAttachment_ImpactBomblets")); }
}
