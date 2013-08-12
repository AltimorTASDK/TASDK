module UnrealScript.Engine.PortalTeleporter;

import ScriptClasses;
import UnrealScript.Engine.TextureRenderTarget2D;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Projectile;
import UnrealScript.Engine.PortalMarker;
import UnrealScript.Engine.SceneCapturePortalActor;

extern(C++) interface PortalTeleporter : SceneCapturePortalActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.PortalTeleporter")); }
	private static __gshared PortalTeleporter mDefaultProperties;
	@property final static PortalTeleporter DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(PortalTeleporter)("PortalTeleporter Engine.Default__PortalTeleporter")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mTransformActor;
			ScriptFunction mTransformVectorDir;
			ScriptFunction mTransformHitLocation;
			ScriptFunction mCreatePortalTexture;
			ScriptFunction mStopsProjectile;
		}
		public @property static final
		{
			ScriptFunction TransformActor() { return mTransformActor ? mTransformActor : (mTransformActor = ScriptObject.Find!(ScriptFunction)("Function Engine.PortalTeleporter.TransformActor")); }
			ScriptFunction TransformVectorDir() { return mTransformVectorDir ? mTransformVectorDir : (mTransformVectorDir = ScriptObject.Find!(ScriptFunction)("Function Engine.PortalTeleporter.TransformVectorDir")); }
			ScriptFunction TransformHitLocation() { return mTransformHitLocation ? mTransformHitLocation : (mTransformHitLocation = ScriptObject.Find!(ScriptFunction)("Function Engine.PortalTeleporter.TransformHitLocation")); }
			ScriptFunction CreatePortalTexture() { return mCreatePortalTexture ? mCreatePortalTexture : (mCreatePortalTexture = ScriptObject.Find!(ScriptFunction)("Function Engine.PortalTeleporter.CreatePortalTexture")); }
			ScriptFunction StopsProjectile() { return mStopsProjectile ? mStopsProjectile : (mStopsProjectile = ScriptObject.Find!(ScriptFunction)("Function Engine.PortalTeleporter.StopsProjectile")); }
		}
	}
	@property final
	{
		auto ref
		{
			PortalMarker MyMarker() { return *cast(PortalMarker*)(cast(size_t)cast(void*)this + 500); }
			int TextureResolutionY() { return *cast(int*)(cast(size_t)cast(void*)this + 496); }
			int TextureResolutionX() { return *cast(int*)(cast(size_t)cast(void*)this + 492); }
			PortalTeleporter SisterPortal() { return *cast(PortalTeleporter*)(cast(size_t)cast(void*)this + 488); }
		}
		bool bCanTeleportVehicles() { return (*cast(uint*)(cast(size_t)cast(void*)this + 504) & 0x4) != 0; }
		bool bCanTeleportVehicles(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 504) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 504) &= ~0x4; } return val; }
		bool bAlwaysTeleportNonPawns() { return (*cast(uint*)(cast(size_t)cast(void*)this + 504) & 0x2) != 0; }
		bool bAlwaysTeleportNonPawns(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 504) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 504) &= ~0x2; } return val; }
		bool bMovablePortal() { return (*cast(uint*)(cast(size_t)cast(void*)this + 504) & 0x1) != 0; }
		bool bMovablePortal(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 504) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 504) &= ~0x1; } return val; }
	}
final:
	bool TransformActor(Actor A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(Functions.TransformActor, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	Vector TransformVectorDir(Vector V)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = V;
		(cast(ScriptObject)this).ProcessEvent(Functions.TransformVectorDir, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[12];
	}
	Vector TransformHitLocation(Vector HitLocation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.TransformHitLocation, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[12];
	}
	TextureRenderTarget2D CreatePortalTexture()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreatePortalTexture, params.ptr, cast(void*)0);
		return *cast(TextureRenderTarget2D*)params.ptr;
	}
	bool StopsProjectile(Projectile P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Projectile*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.StopsProjectile, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
