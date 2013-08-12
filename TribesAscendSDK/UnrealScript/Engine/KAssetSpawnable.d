module UnrealScript.Engine.KAssetSpawnable;

import ScriptClasses;
import UnrealScript.Engine.KAsset;

extern(C++) interface KAssetSpawnable : KAsset
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.KAssetSpawnable")); }
	private static __gshared KAssetSpawnable mDefaultProperties;
	@property final static KAssetSpawnable DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(KAssetSpawnable)("KAssetSpawnable Engine.Default__KAssetSpawnable")); }
}
