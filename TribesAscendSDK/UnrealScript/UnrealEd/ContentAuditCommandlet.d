module UnrealScript.UnrealEd.ContentAuditCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface ContentAuditCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.ContentAuditCommandlet")); }
	private static __gshared ContentAuditCommandlet mDefaultProperties;
	@property final static ContentAuditCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ContentAuditCommandlet)("ContentAuditCommandlet UnrealEd.Default__ContentAuditCommandlet")); }
}
