module UnrealScript.Engine.ActorFactoryDynamicSM;

import ScriptClasses;
import UnrealScript.Engine.ActorFactory;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.StaticMesh;

extern(C++) interface ActorFactoryDynamicSM : ActorFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ActorFactoryDynamicSM")); }
	private static __gshared ActorFactoryDynamicSM mDefaultProperties;
	@property final static ActorFactoryDynamicSM DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ActorFactoryDynamicSM)("ActorFactoryDynamicSM Engine.Default__ActorFactoryDynamicSM")); }
	@property final
	{
		auto ref
		{
			Actor.ECollisionType CollisionType() { return *cast(Actor.ECollisionType*)(cast(size_t)cast(void*)this + 112); }
			Vector DrawScale3D() { return *cast(Vector*)(cast(size_t)cast(void*)this + 96); }
			// WARNING: Property 'StaticMesh' has the same name as a defined type!
		}
		bool bCastDynamicShadow() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x10) != 0; }
		bool bCastDynamicShadow(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x10; } return val; }
		bool bUseCompartment() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x8) != 0; }
		bool bUseCompartment(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x8; } return val; }
		bool bBlockRigidBody() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x4) != 0; }
		bool bBlockRigidBody(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x4; } return val; }
		bool bNotifyRigidBodyCollision() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x2) != 0; }
		bool bNotifyRigidBodyCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x2; } return val; }
		bool bNoEncroachCheck() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x1) != 0; }
		bool bNoEncroachCheck(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x1; } return val; }
	}
}
