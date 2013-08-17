module UnrealScript.UnrealEd.SoundCueAuditCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface SoundCueAuditCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.SoundCueAuditCommandlet")); }
	private static __gshared SoundCueAuditCommandlet mDefaultProperties;
	@property final static SoundCueAuditCommandlet DefaultProperties() { mixin(MGDPC("SoundCueAuditCommandlet", "SoundCueAuditCommandlet UnrealEd.Default__SoundCueAuditCommandlet")); }
}
