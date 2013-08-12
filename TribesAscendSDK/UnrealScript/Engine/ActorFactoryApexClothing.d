module UnrealScript.Engine.ActorFactoryApexClothing;

import ScriptClasses;
import UnrealScript.Engine.ApexClothingAsset;
import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.Engine.ActorFactorySkeletalMesh;

extern(C++) interface ActorFactoryApexClothing : ActorFactorySkeletalMesh
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ActorFactoryApexClothing")); }
	@property final auto ref
	{
		ScriptArray!(ApexClothingAsset) ClothingAssets() { return *cast(ScriptArray!(ApexClothingAsset)*)(cast(size_t)cast(void*)this + 108); }
		PrimitiveComponent.RBCollisionChannelContainer ClothingRBCollideWithChannels() { return *cast(PrimitiveComponent.RBCollisionChannelContainer*)(cast(size_t)cast(void*)this + 124); }
		PrimitiveComponent.ERBCollisionChannel ClothingRBChannel() { return *cast(PrimitiveComponent.ERBCollisionChannel*)(cast(size_t)cast(void*)this + 120); }
	}
}
