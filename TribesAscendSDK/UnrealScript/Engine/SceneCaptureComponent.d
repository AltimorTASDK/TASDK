module UnrealScript.Engine.SceneCaptureComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ActorComponent;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PostProcessChain;

extern(C++) interface SceneCaptureComponent : ActorComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SceneCaptureComponent")()); }
	private static __gshared SceneCaptureComponent mDefaultProperties;
	@property final static SceneCaptureComponent DefaultProperties() { mixin(MGDPC!(SceneCaptureComponent, "SceneCaptureComponent Engine.Default__SceneCaptureComponent")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetEnabled;
			ScriptFunction mSetFrameRate;
		}
		public @property static final
		{
			ScriptFunction SetEnabled() { mixin(MGF!("mSetEnabled", "Function Engine.SceneCaptureComponent.SetEnabled")()); }
			ScriptFunction SetFrameRate() { mixin(MGF!("mSetFrameRate", "Function Engine.SceneCaptureComponent.SetFrameRate")()); }
		}
	}
	enum ESceneCaptureViewMode : ubyte
	{
		SceneCapView_Lit = 0,
		SceneCapView_Unlit = 1,
		SceneCapView_LitNoShadows = 2,
		SceneCapView_Wire = 3,
		SceneCapView_MAX = 4,
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(UObject.Pointer) PostProcessProxies() { mixin(MGPC!("ScriptArray!(UObject.Pointer)", 132)()); }
			UObject.Pointer ViewState() { mixin(MGPC!("UObject.Pointer", 128)()); }
			UObject.Pointer CaptureInfo() { mixin(MGPC!("UObject.Pointer", 124)()); }
			float MaxStreamingUpdateDist() { mixin(MGPC!("float", 120)()); }
			float MaxViewDistanceOverride() { mixin(MGPC!("float", 116)()); }
			float MaxUpdateDist() { mixin(MGPC!("float", 112)()); }
			PostProcessChain PostProcess() { mixin(MGPC!("PostProcessChain", 108)()); }
			float FrameRate() { mixin(MGPC!("float", 104)()); }
			int SceneLOD() { mixin(MGPC!("int", 100)()); }
			SceneCaptureComponent.ESceneCaptureViewMode ViewMode() { mixin(MGPC!("SceneCaptureComponent.ESceneCaptureViewMode", 96)()); }
			UObject.Color ClearColor() { mixin(MGPC!("UObject.Color", 92)()); }
		}
		bool bEnabled() { mixin(MGBPC!(88, 0x1)()); }
		bool bEnabled(bool val) { mixin(MSBPC!(88, 0x1)()); }
		bool bSkipRenderingDepthPrepass() { mixin(MGBPC!(88, 0x40)()); }
		bool bSkipRenderingDepthPrepass(bool val) { mixin(MSBPC!(88, 0x40)()); }
		bool bSkipUpdateIfOwnerOccluded() { mixin(MGBPC!(88, 0x20)()); }
		bool bSkipUpdateIfOwnerOccluded(bool val) { mixin(MSBPC!(88, 0x20)()); }
		bool bSkipUpdateIfTextureUsersOccluded() { mixin(MGBPC!(88, 0x10)()); }
		bool bSkipUpdateIfTextureUsersOccluded(bool val) { mixin(MSBPC!(88, 0x10)()); }
		bool bUseMainScenePostProcessSettings() { mixin(MGBPC!(88, 0x8)()); }
		bool bUseMainScenePostProcessSettings(bool val) { mixin(MSBPC!(88, 0x8)()); }
		bool bEnableFog() { mixin(MGBPC!(88, 0x4)()); }
		bool bEnableFog(bool val) { mixin(MSBPC!(88, 0x4)()); }
		bool bEnablePostProcess() { mixin(MGBPC!(88, 0x2)()); }
		bool bEnablePostProcess(bool val) { mixin(MSBPC!(88, 0x2)()); }
	}
final:
	void SetEnabled(bool bEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnable;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetEnabled, params.ptr, cast(void*)0);
	}
	void SetFrameRate(float NewFrameRate)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = NewFrameRate;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFrameRate, params.ptr, cast(void*)0);
	}
}
