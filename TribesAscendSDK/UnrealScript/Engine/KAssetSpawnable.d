module UnrealScript.Engine.KAssetSpawnable;

import ScriptClasses;
import UnrealScript.Engine.KAsset;

extern(C++) interface KAssetSpawnable : KAsset
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.KAssetSpawnable")); }
}
