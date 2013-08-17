module UnrealScript.Engine.ForceFieldShapeBox;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ForceFieldShape;

extern(C++) interface ForceFieldShapeBox : ForceFieldShape
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ForceFieldShapeBox")()); }
	private static __gshared ForceFieldShapeBox mDefaultProperties;
	@property final static ForceFieldShapeBox DefaultProperties() { mixin(MGDPC!(ForceFieldShapeBox, "ForceFieldShapeBox Engine.Default__ForceFieldShapeBox")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetRadii;
			ScriptFunction mFillBySphere;
			ScriptFunction mFillByBox;
			ScriptFunction mFillByCapsule;
			ScriptFunction mFillByCylinder;
			ScriptFunction mGetDrawComponent;
		}
		public @property static final
		{
			ScriptFunction GetRadii() { mixin(MGF!("mGetRadii", "Function Engine.ForceFieldShapeBox.GetRadii")()); }
			ScriptFunction FillBySphere() { mixin(MGF!("mFillBySphere", "Function Engine.ForceFieldShapeBox.FillBySphere")()); }
			ScriptFunction FillByBox() { mixin(MGF!("mFillByBox", "Function Engine.ForceFieldShapeBox.FillByBox")()); }
			ScriptFunction FillByCapsule() { mixin(MGF!("mFillByCapsule", "Function Engine.ForceFieldShapeBox.FillByCapsule")()); }
			ScriptFunction FillByCylinder() { mixin(MGF!("mFillByCylinder", "Function Engine.ForceFieldShapeBox.FillByCylinder")()); }
			ScriptFunction GetDrawComponent() { mixin(MGF!("mGetDrawComponent", "Function Engine.ForceFieldShapeBox.GetDrawComponent")()); }
		}
	}
	// ERROR: Unsupported object class 'ComponentProperty' for the property named 'Shape'!
final:
	Vector GetRadii()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetRadii, params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
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
