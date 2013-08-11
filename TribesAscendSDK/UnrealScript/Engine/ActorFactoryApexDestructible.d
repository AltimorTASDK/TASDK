module UnrealScript.Engine.ActorFactoryApexDestructible;

import UnrealScript.Engine.ActorFactory;
import UnrealScript.Engine.ApexDestructibleAsset;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface ActorFactoryApexDestructible : ActorFactory
{
	public @property final auto ref ApexDestructibleAsset DestructibleAsset() { return *cast(ApexDestructibleAsset*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref PrimitiveComponent.RBCollisionChannelContainer CollideWithChannels() { return *cast(PrimitiveComponent.RBCollisionChannelContainer*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref PrimitiveComponent.ERBCollisionChannel RBChannel() { return *cast(PrimitiveComponent.ERBCollisionChannel*)(cast(size_t)cast(void*)this + 96); }
	public @property final bool bStartAwake() { return (*cast(uint*)(cast(size_t)cast(void*)this + 92) & 0x1) != 0; }
	public @property final bool bStartAwake(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 92) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 92) &= ~0x1; } return val; }
}
