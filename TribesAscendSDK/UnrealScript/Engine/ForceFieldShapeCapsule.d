module UnrealScript.Engine.ForceFieldShapeCapsule;

import ScriptClasses;
import UnrealScript.Engine.ForceFieldShape;

extern(C++) interface ForceFieldShapeCapsule : ForceFieldShape
{
	final float GetHeight()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15951], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final float GetRadius()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15953], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final void FillBySphere(float Radius)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = Radius;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15955], params.ptr, cast(void*)0);
	}
	final void FillByBox(Vector Extent)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = Extent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15957], params.ptr, cast(void*)0);
	}
	final void FillByCapsule(float Height, float Radius)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = Height;
		*cast(float*)&params[4] = Radius;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15959], params.ptr, cast(void*)0);
	}
	final void FillByCylinder(float BottomRadius, float TopRadius, float Height, float HeightOffset)
	{
		ubyte params[16];
		params[] = 0;
		*cast(float*)params.ptr = BottomRadius;
		*cast(float*)&params[4] = TopRadius;
		*cast(float*)&params[8] = Height;
		*cast(float*)&params[12] = HeightOffset;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15962], params.ptr, cast(void*)0);
	}
	final 
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* GetDrawComponent()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15967], params.ptr, cast(void*)0);
		return *cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr;
	}
}
