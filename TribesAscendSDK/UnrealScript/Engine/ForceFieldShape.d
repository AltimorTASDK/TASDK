module UnrealScript.Engine.ForceFieldShape;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface ForceFieldShape : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ForceFieldShape")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mFillBySphere;
			ScriptFunction mFillByBox;
			ScriptFunction mFillByCapsule;
			ScriptFunction mFillByCylinder;
			ScriptFunction mGetDrawComponent;
		}
		public @property static final
		{
			ScriptFunction FillBySphere() { return mFillBySphere ? mFillBySphere : (mFillBySphere = ScriptObject.Find!(ScriptFunction)("Function Engine.ForceFieldShape.FillBySphere")); }
			ScriptFunction FillByBox() { return mFillByBox ? mFillByBox : (mFillByBox = ScriptObject.Find!(ScriptFunction)("Function Engine.ForceFieldShape.FillByBox")); }
			ScriptFunction FillByCapsule() { return mFillByCapsule ? mFillByCapsule : (mFillByCapsule = ScriptObject.Find!(ScriptFunction)("Function Engine.ForceFieldShape.FillByCapsule")); }
			ScriptFunction FillByCylinder() { return mFillByCylinder ? mFillByCylinder : (mFillByCylinder = ScriptObject.Find!(ScriptFunction)("Function Engine.ForceFieldShape.FillByCylinder")); }
			ScriptFunction GetDrawComponent() { return mGetDrawComponent ? mGetDrawComponent : (mGetDrawComponent = ScriptObject.Find!(ScriptFunction)("Function Engine.ForceFieldShape.GetDrawComponent")); }
		}
	}
final:
	void FillBySphere(float Radius)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = Radius;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillBySphere, params.ptr, cast(void*)0);
	}
	void FillByBox(Vector Dimension)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = Dimension;
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
