module UnrealScript.Engine.ActorFactoryApexDestructible;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ActorFactory;
import UnrealScript.Engine.ApexDestructibleAsset;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface ActorFactoryApexDestructible : ActorFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ActorFactoryApexDestructible")); }
	private static __gshared ActorFactoryApexDestructible mDefaultProperties;
	@property final static ActorFactoryApexDestructible DefaultProperties() { mixin(MGDPC("ActorFactoryApexDestructible", "ActorFactoryApexDestructible Engine.Default__ActorFactoryApexDestructible")); }
	@property final
	{
		auto ref
		{
			ApexDestructibleAsset DestructibleAsset() { mixin(MGPC("ApexDestructibleAsset", 104)); }
			PrimitiveComponent.RBCollisionChannelContainer CollideWithChannels() { mixin(MGPC("PrimitiveComponent.RBCollisionChannelContainer", 100)); }
			PrimitiveComponent.ERBCollisionChannel RBChannel() { mixin(MGPC("PrimitiveComponent.ERBCollisionChannel", 96)); }
		}
		bool bStartAwake() { mixin(MGBPC(92, 0x1)); }
		bool bStartAwake(bool val) { mixin(MSBPC(92, 0x1)); }
	}
}
