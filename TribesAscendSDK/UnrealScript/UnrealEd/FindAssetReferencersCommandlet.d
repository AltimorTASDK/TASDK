module UnrealScript.UnrealEd.FindAssetReferencersCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface FindAssetReferencersCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.FindAssetReferencersCommandlet")); }
	private static __gshared FindAssetReferencersCommandlet mDefaultProperties;
	@property final static FindAssetReferencersCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(FindAssetReferencersCommandlet)("FindAssetReferencersCommandlet UnrealEd.Default__FindAssetReferencersCommandlet")); }
}
