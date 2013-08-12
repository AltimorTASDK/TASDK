module UnrealScript.UnrealEd.FindStaticMeshEmptySectionsCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface FindStaticMeshEmptySectionsCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.FindStaticMeshEmptySectionsCommandlet")); }
	private static __gshared FindStaticMeshEmptySectionsCommandlet mDefaultProperties;
	@property final static FindStaticMeshEmptySectionsCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(FindStaticMeshEmptySectionsCommandlet)("FindStaticMeshEmptySectionsCommandlet UnrealEd.Default__FindStaticMeshEmptySectionsCommandlet")); }
}
