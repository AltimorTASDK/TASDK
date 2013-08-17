module UnrealScript.Engine.UISceneClient;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.UIRoot;
import UnrealScript.Engine.PostProcessChain;
import UnrealScript.Engine.DataStoreClient;

extern(C++) interface UISceneClient : UIRoot
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.UISceneClient")()); }
	private static __gshared UISceneClient mDefaultProperties;
	@property final static UISceneClient DefaultProperties() { mixin(MGDPC!(UISceneClient, "UISceneClient Engine.Default__UISceneClient")()); }
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
			ScriptFunction IsUIActive() { mixin(MGF!("mIsUIActive", "Function Engine.UISceneClient.IsUIActive")()); }
			ScriptFunction GetCanvasToScreen() { mixin(MGF!("mGetCanvasToScreen", "Function Engine.UISceneClient.GetCanvasToScreen")()); }
			ScriptFunction GetInverseCanvasToScreen() { mixin(MGF!("mGetInverseCanvasToScreen", "Function Engine.UISceneClient.GetInverseCanvasToScreen")()); }
			ScriptFunction InitializeSceneClient() { mixin(MGF!("mInitializeSceneClient", "Function Engine.UISceneClient.InitializeSceneClient")()); }
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
			PostProcessChain UIScenePostProcess() { mixin(MGPC!("PostProcessChain", 208)()); }
			UObject.Matrix InvCanvasToScreen() { mixin(MGPC!("UObject.Matrix", 144)()); }
			UObject.Matrix CanvasToScreen() { mixin(MGPC!("UObject.Matrix", 80)()); }
			DataStoreClient DataStoreManager() { mixin(MGPC!("DataStoreClient", 76)()); }
			UObject.IntPoint MousePosition() { mixin(MGPC!("UObject.IntPoint", 68)()); }
			UObject.Pointer RenderViewport() { mixin(MGPC!("UObject.Pointer", 64)()); }
			UObject.Pointer VfTable_FExec() { mixin(MGPC!("UObject.Pointer", 60)()); }
		}
		bool bEnablePostProcess() { mixin(MGBPC!(212, 0x1)()); }
		bool bEnablePostProcess(bool val) { mixin(MSBPC!(212, 0x1)()); }
	}
final:
	bool IsUIActive(int* Flags = null)
	{
		ubyte params[8];
		params[] = 0;
		if (Flags !is null)
			*cast(int*)params.ptr = *Flags;
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
