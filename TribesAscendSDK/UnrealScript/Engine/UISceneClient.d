module UnrealScript.Engine.UISceneClient;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.UIRoot;
import UnrealScript.Engine.PostProcessChain;
import UnrealScript.Engine.DataStoreClient;

extern(C++) interface UISceneClient : UIRoot
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.UISceneClient")); }
	private static __gshared UISceneClient mDefaultProperties;
	@property final static UISceneClient DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UISceneClient)("UISceneClient Engine.Default__UISceneClient")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mIsUIActive;
			ScriptFunction mGetCanvasToScreen;
			ScriptFunction mGetInverseCanvasToScreen;
			ScriptFunction mInitializeSceneClient;
		}
		public @property static final
		{
			ScriptFunction IsUIActive() { return mIsUIActive ? mIsUIActive : (mIsUIActive = ScriptObject.Find!(ScriptFunction)("Function Engine.UISceneClient.IsUIActive")); }
			ScriptFunction GetCanvasToScreen() { return mGetCanvasToScreen ? mGetCanvasToScreen : (mGetCanvasToScreen = ScriptObject.Find!(ScriptFunction)("Function Engine.UISceneClient.GetCanvasToScreen")); }
			ScriptFunction GetInverseCanvasToScreen() { return mGetInverseCanvasToScreen ? mGetInverseCanvasToScreen : (mGetInverseCanvasToScreen = ScriptObject.Find!(ScriptFunction)("Function Engine.UISceneClient.GetInverseCanvasToScreen")); }
			ScriptFunction InitializeSceneClient() { return mInitializeSceneClient ? mInitializeSceneClient : (mInitializeSceneClient = ScriptObject.Find!(ScriptFunction)("Function Engine.UISceneClient.InitializeSceneClient")); }
		}
	}
	static struct Constants
	{
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
		(cast(ScriptObject)this).ProcessEvent(Functions.IsUIActive, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	UObject.Matrix GetCanvasToScreen()
	{
		ubyte params[64];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCanvasToScreen, params.ptr, cast(void*)0);
		return *cast(UObject.Matrix*)params.ptr;
	}
	UObject.Matrix GetInverseCanvasToScreen()
	{
		ubyte params[64];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetInverseCanvasToScreen, params.ptr, cast(void*)0);
		return *cast(UObject.Matrix*)params.ptr;
	}
	void InitializeSceneClient()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InitializeSceneClient, cast(void*)0, cast(void*)0);
	}
}
