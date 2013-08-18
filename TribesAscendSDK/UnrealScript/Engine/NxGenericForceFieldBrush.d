module UnrealScript.Engine.NxGenericForceFieldBrush;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Projectile;
import UnrealScript.Engine.Volume;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface NxGenericForceFieldBrush : Volume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.NxGenericForceFieldBrush")); }
	private static __gshared NxGenericForceFieldBrush mDefaultProperties;
	@property final static NxGenericForceFieldBrush DefaultProperties() { mixin(MGDPC("NxGenericForceFieldBrush", "NxGenericForceFieldBrush Engine.Default__NxGenericForceFieldBrush")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mStopsProjectile;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { mixin(MGF("mPostBeginPlay", "Function Engine.NxGenericForceFieldBrush.PostBeginPlay")); }
			ScriptFunction StopsProjectile() { mixin(MGF("mStopsProjectile", "Function Engine.NxGenericForceFieldBrush.StopsProjectile")); }
		}
	}
	enum FFB_ForceFieldCoordinates : ubyte
	{
		FFB_CARTESIAN = 0,
		FFB_SPHERICAL = 1,
		FFB_CYLINDRICAL = 2,
		FFB_TOROIDAL = 3,
		FFB_MAX = 4,
	}
	@property final auto ref
	{
		ScriptArray!(Pointer) ConvexMeshes() { mixin(MGPC("ScriptArray!(Pointer)", 684)); }
		ScriptArray!(Pointer) ExclusionShapes() { mixin(MGPC("ScriptArray!(Pointer)", 696)); }
		ScriptArray!(Pointer) ExclusionShapePoses() { mixin(MGPC("ScriptArray!(Pointer)", 708)); }
		Pointer LinearKernel() { mixin(MGPC("Pointer", 720)); }
		Pointer ForceField() { mixin(MGPC("Pointer", 680)); }
		float TorusRadius() { mixin(MGPC("float", 676)); }
		Vector FalloffQuadratic() { mixin(MGPC("Vector", 664)); }
		Vector FalloffLinear() { mixin(MGPC("Vector", 652)); }
		Vector Noise() { mixin(MGPC("Vector", 640)); }
		Vector VelocityTarget() { mixin(MGPC("Vector", 628)); }
		Vector VelocityMultiplierZ() { mixin(MGPC("Vector", 616)); }
		Vector VelocityMultiplierY() { mixin(MGPC("Vector", 604)); }
		Vector VelocityMultiplierX() { mixin(MGPC("Vector", 592)); }
		Vector PositionTarget() { mixin(MGPC("Vector", 580)); }
		Vector PositionMultiplierZ() { mixin(MGPC("Vector", 568)); }
		Vector PositionMultiplierY() { mixin(MGPC("Vector", 556)); }
		Vector PositionMultiplierX() { mixin(MGPC("Vector", 544)); }
		Vector Constant() { mixin(MGPC("Vector", 532)); }
		NxGenericForceFieldBrush.FFB_ForceFieldCoordinates Coordinates() { mixin(MGPC("NxGenericForceFieldBrush.FFB_ForceFieldCoordinates", 529)); }
		PrimitiveComponent.ERBCollisionChannel RBChannel() { mixin(MGPC("PrimitiveComponent.ERBCollisionChannel", 528)); }
		PrimitiveComponent.RBCollisionChannelContainer CollideWithChannels() { mixin(MGPC("PrimitiveComponent.RBCollisionChannelContainer", 524)); }
		int ExcludeChannel() { mixin(MGPC("int", 520)); }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
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
