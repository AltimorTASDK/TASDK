module UnrealScript.Engine.NxGenericForceFieldBrush;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Projectile;
import UnrealScript.Engine.Volume;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface NxGenericForceFieldBrush : Volume
{
	enum FFB_ForceFieldCoordinates : ubyte
	{
		FFB_CARTESIAN = 0,
		FFB_SPHERICAL = 1,
		FFB_CYLINDRICAL = 2,
		FFB_TOROIDAL = 3,
		FFB_MAX = 4,
	}
	public @property final auto ref ScriptArray!(UObject.Pointer) ConvexMeshes() { return *cast(ScriptArray!(UObject.Pointer)*)(cast(size_t)cast(void*)this + 684); }
	public @property final auto ref ScriptArray!(UObject.Pointer) ExclusionShapes() { return *cast(ScriptArray!(UObject.Pointer)*)(cast(size_t)cast(void*)this + 696); }
	public @property final auto ref ScriptArray!(UObject.Pointer) ExclusionShapePoses() { return *cast(ScriptArray!(UObject.Pointer)*)(cast(size_t)cast(void*)this + 708); }
	public @property final auto ref UObject.Pointer LinearKernel() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 720); }
	public @property final auto ref UObject.Pointer ForceField() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 680); }
	public @property final auto ref float TorusRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 676); }
	public @property final auto ref Vector FalloffQuadratic() { return *cast(Vector*)(cast(size_t)cast(void*)this + 664); }
	public @property final auto ref Vector FalloffLinear() { return *cast(Vector*)(cast(size_t)cast(void*)this + 652); }
	public @property final auto ref Vector Noise() { return *cast(Vector*)(cast(size_t)cast(void*)this + 640); }
	public @property final auto ref Vector VelocityTarget() { return *cast(Vector*)(cast(size_t)cast(void*)this + 628); }
	public @property final auto ref Vector VelocityMultiplierZ() { return *cast(Vector*)(cast(size_t)cast(void*)this + 616); }
	public @property final auto ref Vector VelocityMultiplierY() { return *cast(Vector*)(cast(size_t)cast(void*)this + 604); }
	public @property final auto ref Vector VelocityMultiplierX() { return *cast(Vector*)(cast(size_t)cast(void*)this + 592); }
	public @property final auto ref Vector PositionTarget() { return *cast(Vector*)(cast(size_t)cast(void*)this + 580); }
	public @property final auto ref Vector PositionMultiplierZ() { return *cast(Vector*)(cast(size_t)cast(void*)this + 568); }
	public @property final auto ref Vector PositionMultiplierY() { return *cast(Vector*)(cast(size_t)cast(void*)this + 556); }
	public @property final auto ref Vector PositionMultiplierX() { return *cast(Vector*)(cast(size_t)cast(void*)this + 544); }
	public @property final auto ref Vector Constant() { return *cast(Vector*)(cast(size_t)cast(void*)this + 532); }
	public @property final auto ref NxGenericForceFieldBrush.FFB_ForceFieldCoordinates Coordinates() { return *cast(NxGenericForceFieldBrush.FFB_ForceFieldCoordinates*)(cast(size_t)cast(void*)this + 529); }
	public @property final auto ref PrimitiveComponent.ERBCollisionChannel RBChannel() { return *cast(PrimitiveComponent.ERBCollisionChannel*)(cast(size_t)cast(void*)this + 528); }
	public @property final auto ref PrimitiveComponent.RBCollisionChannelContainer CollideWithChannels() { return *cast(PrimitiveComponent.RBCollisionChannelContainer*)(cast(size_t)cast(void*)this + 524); }
	public @property final auto ref int ExcludeChannel() { return *cast(int*)(cast(size_t)cast(void*)this + 520); }
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21311], cast(void*)0, cast(void*)0);
	}
	final bool StopsProjectile(Projectile P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Projectile*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21312], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
