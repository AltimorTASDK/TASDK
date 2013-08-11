module UnrealScript.Engine.UISceneClient;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.UIRoot;
import UnrealScript.Engine.PostProcessChain;
import UnrealScript.Engine.DataStoreClient;

extern(C++) interface UISceneClient : UIRoot
{
public extern(D):
	enum
	{
		SCENEFILTER_None = 0x00000000,
		SCENEFILTER_IncludeTransient = 0x00000001,
		SCENEFILTER_InputProcessorOnly = 0x00000002,
		SCENEFILTER_PausersOnly = 0x00000004,
		SCENEFILTER_PrimitiveUsersOnly = 0x00000008,
		SCENEFILTER_UsesPostProcessing = 0x00000010,
		SCENEFILTER_ReceivesFocus = 0x00000020,
		SCENEFILTER_Any = 0xFFFFFFFF,
	}
	@property final
	{
		auto ref
		{
			PostProcessChain UIScenePostProcess() { return *cast(PostProcessChain*)(cast(size_t)cast(void*)this + 208); }
			UObject.Matrix InvCanvasToScreen() { return *cast(UObject.Matrix*)(cast(size_t)cast(void*)this + 144); }
			UObject.Matrix CanvasToScreen() { return *cast(UObject.Matrix*)(cast(size_t)cast(void*)this + 80); }
			DataStoreClient DataStoreManager() { return *cast(DataStoreClient*)(cast(size_t)cast(void*)this + 76); }
			UObject.IntPoint MousePosition() { return *cast(UObject.IntPoint*)(cast(size_t)cast(void*)this + 68); }
			UObject.Pointer RenderViewport() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 64); }
			UObject.Pointer VfTable_FExec() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 60); }
		}
		bool bEnablePostProcess() { return (*cast(uint*)(cast(size_t)cast(void*)this + 212) & 0x1) != 0; }
		bool bEnablePostProcess(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 212) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 212) &= ~0x1; } return val; }
	}
final:
	bool IsUIActive(int Flags)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Flags;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17813], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	UObject.Matrix GetCanvasToScreen()
	{
		ubyte params[64];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17816], params.ptr, cast(void*)0);
		return *cast(UObject.Matrix*)params.ptr;
	}
	UObject.Matrix GetInverseCanvasToScreen()
	{
		ubyte params[64];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17818], params.ptr, cast(void*)0);
		return *cast(UObject.Matrix*)params.ptr;
	}
	void InitializeSceneClient()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17820], cast(void*)0, cast(void*)0);
	}
}
