module UnrealScript.UnrealEd.FindStaticMeshCanBecomeDynamicCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface FindStaticMeshCanBecomeDynamicCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.FindStaticMeshCanBecomeDynamicCommandlet")); }
	private static __gshared FindStaticMeshCanBecomeDynamicCommandlet mDefaultProperties;
	@property final static FindStaticMeshCanBecomeDynamicCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(FindStaticMeshCanBecomeDynamicCommandlet)("FindStaticMeshCanBecomeDynamicCommandlet UnrealEd.Default__FindStaticMeshCanBecomeDynamicCommandlet")); }
}
