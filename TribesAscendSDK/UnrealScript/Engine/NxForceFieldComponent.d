module UnrealScript.Engine.NxForceFieldComponent;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.Engine.ForceFieldShape;

extern(C++) interface NxForceFieldComponent : PrimitiveComponent
{
	public @property final auto ref ScriptArray!(UObject.Pointer) ConvexMeshes() { return *cast(ScriptArray!(UObject.Pointer)*)(cast(size_t)cast(void*)this + 516); }
	public @property final auto ref ScriptArray!(UObject.Pointer) ExclusionShapes() { return *cast(ScriptArray!(UObject.Pointer)*)(cast(size_t)cast(void*)this + 528); }
	public @property final auto ref ScriptArray!(UObject.Pointer) ExclusionShapePoses() { return *cast(ScriptArray!(UObject.Pointer)*)(cast(size_t)cast(void*)this + 540); }
	public @property final auto ref UObject.Pointer RBPhysScene() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 564); }
	public @property final auto ref float ElapsedTime() { return *cast(float*)(cast(size_t)cast(void*)this + 556); }
	public @property final auto ref int SceneIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 552); }
	public @property final auto ref UObject.Pointer ForceField() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 512); }
	public @property final auto ref float Duration() { return *cast(float*)(cast(size_t)cast(void*)this + 508); }
	public @property final auto ref PrimitiveComponent.RBCollisionChannelContainer CollideWithChannels() { return *cast(PrimitiveComponent.RBCollisionChannelContainer*)(cast(size_t)cast(void*)this + 504); }
	public @property final bool bDestroyWhenInactive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 500) & 0x2) != 0; }
	public @property final bool bDestroyWhenInactive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 500) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 500) &= ~0x2; } return val; }
	public @property final bool bForceActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 500) & 0x1) != 0; }
	public @property final bool bForceActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 500) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 500) &= ~0x1; } return val; }
	public @property final auto ref int ExcludeChannel() { return *cast(int*)(cast(size_t)cast(void*)this + 496); }
	public @property final auto ref ForceFieldShape Shape() { return *cast(ForceFieldShape*)(cast(size_t)cast(void*)this + 488); }
	final void DoInitRBPhys()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21167], cast(void*)0, cast(void*)0);
	}
}
