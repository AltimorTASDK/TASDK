module UnrealScript.UnrealEd.ContentAuditCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface ContentAuditCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.ContentAuditCommandlet")); }
	private static __gshared ContentAuditCommandlet mDefaultProperties;
	@property final static ContentAuditCommandlet DefaultProperties() { mixin(MGDPC("ContentAuditCommandlet", "ContentAuditCommandlet UnrealEd.Default__ContentAuditCommandlet")); }
}
