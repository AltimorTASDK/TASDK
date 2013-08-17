module UnrealScript.UnrealEd.FindStaticMeshEmptySectionsCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface FindStaticMeshEmptySectionsCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.FindStaticMeshEmptySectionsCommandlet")()); }
	private static __gshared FindStaticMeshEmptySectionsCommandlet mDefaultProperties;
	@property final static FindStaticMeshEmptySectionsCommandlet DefaultProperties() { mixin(MGDPC!(FindStaticMeshEmptySectionsCommandlet, "FindStaticMeshEmptySectionsCommandlet UnrealEd.Default__FindStaticMeshEmptySectionsCommandlet")()); }
}
