module UnrealScript.Engine.DebugCameraHUD;

import ScriptClasses;
import UnrealScript.Engine.HUD;

extern(C++) interface DebugCameraHUD : HUD
{
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13874], cast(void*)0, cast(void*)0);
	}
	final bool DisplayMaterials(float X, float* Y, float DY, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* MeshComp)
	{
		ubyte params[20];
		params[] = 0;
		*cast(float*)params.ptr = X;
		*cast(float*)&params[4] = *Y;
		*cast(float*)&params[8] = DY;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)&params[12] = MeshComp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13875], params.ptr, cast(void*)0);
		*Y = *cast(float*)&params[4];
		return *cast(bool*)&params[16];
	}
	final void PostRender()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13884], cast(void*)0, cast(void*)0);
	}
}
