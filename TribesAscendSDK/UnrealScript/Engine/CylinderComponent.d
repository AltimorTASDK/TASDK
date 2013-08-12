module UnrealScript.Engine.CylinderComponent;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface CylinderComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.CylinderComponent")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSetCylinderSize;
		public @property static final ScriptFunction SetCylinderSize() { return mSetCylinderSize ? mSetCylinderSize : (mSetCylinderSize = ScriptObject.Find!(ScriptFunction)("Function Engine.CylinderComponent.SetCylinderSize")); }
	}
	@property final
	{
		auto ref
		{
			UObject.Color CylinderColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 496); }
			float CollisionRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 492); }
			float CollisionHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 488); }
		}
		bool bAlwaysRenderIfSelected() { return (*cast(uint*)(cast(size_t)cast(void*)this + 500) & 0x4) != 0; }
		bool bAlwaysRenderIfSelected(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 500) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 500) &= ~0x4; } return val; }
		bool bDrawNonColliding() { return (*cast(uint*)(cast(size_t)cast(void*)this + 500) & 0x2) != 0; }
		bool bDrawNonColliding(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 500) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 500) &= ~0x2; } return val; }
		bool bDrawBoundingBox() { return (*cast(uint*)(cast(size_t)cast(void*)this + 500) & 0x1) != 0; }
		bool bDrawBoundingBox(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 500) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 500) &= ~0x1; } return val; }
	}
	final void SetCylinderSize(float NewRadius, float NewHeight)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = NewRadius;
		*cast(float*)&params[4] = NewHeight;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetCylinderSize, params.ptr, cast(void*)0);
	}
}
