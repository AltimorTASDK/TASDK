module UnrealScript.Engine.NxGenericForceFieldBrush;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Projectile;
import UnrealScript.Engine.Volume;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface NxGenericForceFieldBrush : Volume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.NxGenericForceFieldBrush")); }
	private static __gshared NxGenericForceFieldBrush mDefaultProperties;
	@property final static NxGenericForceFieldBrush DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(NxGenericForceFieldBrush)("NxGenericForceFieldBrush Engine.Default__NxGenericForceFieldBrush")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mStopsProjectile;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function Engine.NxGenericForceFieldBrush.PostBeginPlay")); }
			ScriptFunction StopsProjectile() { return mStopsProjectile ? mStopsProjectile : (mStopsProjectile = ScriptObject.Find!(ScriptFunction)("Function Engine.NxGenericForceFieldBrush.StopsProjectile")); }
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
		ScriptArray!(UObject.Pointer) ConvexMeshes() { return *cast(ScriptArray!(UObject.Pointer)*)(cast(size_t)cast(void*)this + 684); }
		ScriptArray!(UObject.Pointer) ExclusionShapes() { return *cast(ScriptArray!(UObject.Pointer)*)(cast(size_t)cast(void*)this + 696); }
		ScriptArray!(UObject.Pointer) ExclusionShapePoses() { return *cast(ScriptArray!(UObject.Pointer)*)(cast(size_t)cast(void*)this + 708); }
		UObject.Pointer LinearKernel() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 720); }
		UObject.Pointer ForceField() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 680); }
		float TorusRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 676); }
		Vector FalloffQuadratic() { return *cast(Vector*)(cast(size_t)cast(void*)this + 664); }
		Vector FalloffLinear() { return *cast(Vector*)(cast(size_t)cast(void*)this + 652); }
		Vector Noise() { return *cast(Vector*)(cast(size_t)cast(void*)this + 640); }
		Vector VelocityTarget() { return *cast(Vector*)(cast(size_t)cast(void*)this + 628); }
		Vector VelocityMultiplierZ() { return *cast(Vector*)(cast(size_t)cast(void*)this + 616); }
		Vector VelocityMultiplierY() { return *cast(Vector*)(cast(size_t)cast(void*)this + 604); }
		Vector VelocityMultiplierX() { return *cast(Vector*)(cast(size_t)cast(void*)this + 592); }
		Vector PositionTarget() { return *cast(Vector*)(cast(size_t)cast(void*)this + 580); }
		Vector PositionMultiplierZ() { return *cast(Vector*)(cast(size_t)cast(void*)this + 568); }
		Vector PositionMultiplierY() { return *cast(Vector*)(cast(size_t)cast(void*)this + 556); }
		Vector PositionMultiplierX() { return *cast(Vector*)(cast(size_t)cast(void*)this + 544); }
		Vector Constant() { return *cast(Vector*)(cast(size_t)cast(void*)this + 532); }
		NxGenericForceFieldBrush.FFB_ForceFieldCoordinates Coordinates() { return *cast(NxGenericForceFieldBrush.FFB_ForceFieldCoordinates*)(cast(size_t)cast(void*)this + 529); }
		PrimitiveComponent.ERBCollisionChannel RBChannel() { return *cast(PrimitiveComponent.ERBCollisionChannel*)(cast(size_t)cast(void*)this + 528); }
		PrimitiveComponent.RBCollisionChannelContainer CollideWithChannels() { return *cast(PrimitiveComponent.RBCollisionChannelContainer*)(cast(size_t)cast(void*)this + 524); }
		int ExcludeChannel() { return *cast(int*)(cast(size_t)cast(void*)this + 520); }
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
