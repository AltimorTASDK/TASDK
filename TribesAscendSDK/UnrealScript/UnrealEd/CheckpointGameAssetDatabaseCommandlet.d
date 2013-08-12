module UnrealScript.UnrealEd.CheckpointGameAssetDatabaseCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface CheckpointGameAssetDatabaseCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.CheckpointGameAssetDatabaseCommandlet")); }
	private static __gshared CheckpointGameAssetDatabaseCommandlet mDefaultProperties;
	@property final static CheckpointGameAssetDatabaseCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(CheckpointGameAssetDatabaseCommandlet)("CheckpointGameAssetDatabaseCommandlet UnrealEd.Default__CheckpointGameAssetDatabaseCommandlet")); }
}
