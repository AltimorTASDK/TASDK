module UnrealScript.Engine.ForceFieldShapeSphere;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ForceFieldShape;

extern(C++) interface ForceFieldShapeSphere : ForceFieldShape
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ForceFieldShapeSphere")()); }
	private static __gshared ForceFieldShapeSphere mDefaultProperties;
	@property final static ForceFieldShapeSphere DefaultProperties() { mixin(MGDPC!(ForceFieldShapeSphere, "ForceFieldShapeSphere Engine.Default__ForceFieldShapeSphere")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetRadius;
			ScriptFunction mFillBySphere;
			ScriptFunction mFillByBox;
			ScriptFunction mFillByCapsule;
			ScriptFunction mFillByCylinder;
			ScriptFunction mGetDrawComponent;
		}
		public @property static final
		{
			ScriptFunction GetRadius() { mixin(MGF!("mGetRadius", "Function Engine.ForceFieldShapeSphere.GetRadius")()); }
			ScriptFunction FillBySphere() { mixin(MGF!("mFillBySphere", "Function Engine.ForceFieldShapeSphere.FillBySphere")()); }
			ScriptFunction FillByBox() { mixin(MGF!("mFillByBox", "Function Engine.ForceFieldShapeSphere.FillByBox")()); }
			ScriptFunction FillByCapsule() { mixin(MGF!("mFillByCapsule", "Function Engine.ForceFieldShapeSphere.FillByCapsule")()); }
			ScriptFunction FillByCylinder() { mixin(MGF!("mFillByCylinder", "Function Engine.ForceFieldShapeSphere.FillByCylinder")()); }
			ScriptFunction GetDrawComponent() { mixin(MGF!("mGetDrawComponent", "Function Engine.ForceFieldShapeSphere.GetDrawComponent")()); }
		}
	}
	// ERROR: Unsupported object class 'ComponentProperty' for the property named 'Shape'!
final:
	float GetRadius()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetRadius, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void FillBySphere(float Radius)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = Radius;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillBySphere, params.ptr, cast(void*)0);
	}
	void FillByBox(Vector Extent)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = Extent;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillByBox, params.ptr, cast(void*)0);
	}
	void FillByCapsule(float Height, float Radius)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = Height;
		*cast(float*)&params[4] = Radius;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillByCapsule, params.ptr, cast(void*)0);
	}
	void FillByCylinder(float BottomRadius, float TopRadius, float Height, float HeightOffset)
	{
		ubyte params[16];
		params[] = 0;
		*cast(float*)params.ptr = BottomRadius;
		*cast(float*)&params[4] = TopRadius;
		*cast(float*)&params[8] = Height;
		*cast(float*)&params[12] = HeightOffset;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillByCylinder, params.ptr, cast(void*)0);
	}
	
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* GetDrawComponent()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDrawComponent, params.ptr, cast(void*)0);
		return *cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr;
	}
}
