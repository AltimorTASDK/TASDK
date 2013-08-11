module UnrealScript.Engine.PortalTeleporter;

import ScriptClasses;
import UnrealScript.Engine.TextureRenderTarget2D;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Projectile;
import UnrealScript.Engine.PortalMarker;
import UnrealScript.Engine.SceneCapturePortalActor;

extern(C++) interface PortalTeleporter : SceneCapturePortalActor
{
	public @property final bool bCanTeleportVehicles() { return (*cast(uint*)(cast(size_t)cast(void*)this + 504) & 0x4) != 0; }
	public @property final bool bCanTeleportVehicles(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 504) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 504) &= ~0x4; } return val; }
	public @property final bool bAlwaysTeleportNonPawns() { return (*cast(uint*)(cast(size_t)cast(void*)this + 504) & 0x2) != 0; }
	public @property final bool bAlwaysTeleportNonPawns(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 504) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 504) &= ~0x2; } return val; }
	public @property final bool bMovablePortal() { return (*cast(uint*)(cast(size_t)cast(void*)this + 504) & 0x1) != 0; }
	public @property final bool bMovablePortal(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 504) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 504) &= ~0x1; } return val; }
	public @property final auto ref PortalMarker MyMarker() { return *cast(PortalMarker*)(cast(size_t)cast(void*)this + 500); }
	public @property final auto ref int TextureResolutionY() { return *cast(int*)(cast(size_t)cast(void*)this + 496); }
	public @property final auto ref int TextureResolutionX() { return *cast(int*)(cast(size_t)cast(void*)this + 492); }
	public @property final auto ref PortalTeleporter SisterPortal() { return *cast(PortalTeleporter*)(cast(size_t)cast(void*)this + 488); }
	final bool TransformActor(Actor A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24726], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final Vector TransformVectorDir(Vector V)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = V;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24729], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[12];
	}
	final Vector TransformHitLocation(Vector HitLocation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24732], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[12];
	}
	final TextureRenderTarget2D CreatePortalTexture()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24735], params.ptr, cast(void*)0);
		return *cast(TextureRenderTarget2D*)params.ptr;
	}
	final bool StopsProjectile(Projectile P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Projectile*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24737], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
