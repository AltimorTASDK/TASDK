module UnrealScript.Engine.PortalTeleporter;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.TextureRenderTarget2D;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Projectile;
import UnrealScript.Engine.PortalMarker;
import UnrealScript.Engine.SceneCapturePortalActor;

extern(C++) interface PortalTeleporter : SceneCapturePortalActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.PortalTeleporter")()); }
	private static __gshared PortalTeleporter mDefaultProperties;
	@property final static PortalTeleporter DefaultProperties() { mixin(MGDPC!(PortalTeleporter, "PortalTeleporter Engine.Default__PortalTeleporter")()); }
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
			ScriptFunction TransformActor() { mixin(MGF!("mTransformActor", "Function Engine.PortalTeleporter.TransformActor")()); }
			ScriptFunction TransformVectorDir() { mixin(MGF!("mTransformVectorDir", "Function Engine.PortalTeleporter.TransformVectorDir")()); }
			ScriptFunction TransformHitLocation() { mixin(MGF!("mTransformHitLocation", "Function Engine.PortalTeleporter.TransformHitLocation")()); }
			ScriptFunction CreatePortalTexture() { mixin(MGF!("mCreatePortalTexture", "Function Engine.PortalTeleporter.CreatePortalTexture")()); }
			ScriptFunction StopsProjectile() { mixin(MGF!("mStopsProjectile", "Function Engine.PortalTeleporter.StopsProjectile")()); }
		}
	}
	@property final
	{
		auto ref
		{
			PortalMarker MyMarker() { mixin(MGPC!("PortalMarker", 500)()); }
			int TextureResolutionY() { mixin(MGPC!("int", 496)()); }
			int TextureResolutionX() { mixin(MGPC!("int", 492)()); }
			PortalTeleporter SisterPortal() { mixin(MGPC!("PortalTeleporter", 488)()); }
		}
		bool bCanTeleportVehicles() { mixin(MGBPC!(504, 0x4)()); }
		bool bCanTeleportVehicles(bool val) { mixin(MSBPC!(504, 0x4)()); }
		bool bAlwaysTeleportNonPawns() { mixin(MGBPC!(504, 0x2)()); }
		bool bAlwaysTeleportNonPawns(bool val) { mixin(MSBPC!(504, 0x2)()); }
		bool bMovablePortal() { mixin(MGBPC!(504, 0x1)()); }
		bool bMovablePortal(bool val) { mixin(MSBPC!(504, 0x1)()); }
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
