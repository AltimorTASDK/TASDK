module UnrealScript.Engine.CylinderComponent;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface CylinderComponent : PrimitiveComponent
{
	public @property final bool bAlwaysRenderIfSelected() { return (*cast(uint*)(cast(size_t)cast(void*)this + 500) & 0x4) != 0; }
	public @property final bool bAlwaysRenderIfSelected(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 500) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 500) &= ~0x4; } return val; }
	public @property final bool bDrawNonColliding() { return (*cast(uint*)(cast(size_t)cast(void*)this + 500) & 0x2) != 0; }
	public @property final bool bDrawNonColliding(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 500) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 500) &= ~0x2; } return val; }
	public @property final bool bDrawBoundingBox() { return (*cast(uint*)(cast(size_t)cast(void*)this + 500) & 0x1) != 0; }
	public @property final bool bDrawBoundingBox(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 500) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 500) &= ~0x1; } return val; }
	public @property final auto ref UObject.Color CylinderColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 496); }
	public @property final auto ref float CollisionRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 492); }
	public @property final auto ref float CollisionHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 488); }
	final void SetCylinderSize(float NewRadius, float NewHeight)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = NewRadius;
		*cast(float*)&params[4] = NewHeight;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6374], params.ptr, cast(void*)0);
	}
}
