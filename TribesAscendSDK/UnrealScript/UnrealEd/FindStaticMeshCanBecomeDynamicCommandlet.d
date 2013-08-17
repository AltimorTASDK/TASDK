module UnrealScript.UnrealEd.FindStaticMeshCanBecomeDynamicCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface FindStaticMeshCanBecomeDynamicCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.FindStaticMeshCanBecomeDynamicCommandlet")()); }
	private static __gshared FindStaticMeshCanBecomeDynamicCommandlet mDefaultProperties;
	@property final static FindStaticMeshCanBecomeDynamicCommandlet DefaultProperties() { mixin(MGDPC!(FindStaticMeshCanBecomeDynamicCommandlet, "FindStaticMeshCanBecomeDynamicCommandlet UnrealEd.Default__FindStaticMeshCanBecomeDynamicCommandlet")()); }
}
