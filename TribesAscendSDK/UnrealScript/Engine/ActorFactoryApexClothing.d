module UnrealScript.Engine.ActorFactoryApexClothing;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ApexClothingAsset;
import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.Engine.ActorFactorySkeletalMesh;

extern(C++) interface ActorFactoryApexClothing : ActorFactorySkeletalMesh
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ActorFactoryApexClothing")()); }
	private static __gshared ActorFactoryApexClothing mDefaultProperties;
	@property final static ActorFactoryApexClothing DefaultProperties() { mixin(MGDPC!(ActorFactoryApexClothing, "ActorFactoryApexClothing Engine.Default__ActorFactoryApexClothing")()); }
	@property final auto ref
	{
		ScriptArray!(ApexClothingAsset) ClothingAssets() { mixin(MGPC!(ScriptArray!(ApexClothingAsset), 108)()); }
		PrimitiveComponent.RBCollisionChannelContainer ClothingRBCollideWithChannels() { mixin(MGPC!(PrimitiveComponent.RBCollisionChannelContainer, 124)()); }
		PrimitiveComponent.ERBCollisionChannel ClothingRBChannel() { mixin(MGPC!(PrimitiveComponent.ERBCollisionChannel, 120)()); }
	}
}
