module UnrealScript.Engine.SceneCaptureComponent;

import ScriptClasses;
import UnrealScript.Engine.ActorComponent;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PostProcessChain;

extern(C++) interface SceneCaptureComponent : ActorComponent
{
public extern(D):
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
			ScriptArray!(UObject.Pointer) PostProcessProxies() { return *cast(ScriptArray!(UObject.Pointer)*)(cast(size_t)cast(void*)this + 132); }
			UObject.Pointer ViewState() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 128); }
			UObject.Pointer CaptureInfo() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 124); }
			float MaxStreamingUpdateDist() { return *cast(float*)(cast(size_t)cast(void*)this + 120); }
			float MaxViewDistanceOverride() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
			float MaxUpdateDist() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
			PostProcessChain PostProcess() { return *cast(PostProcessChain*)(cast(size_t)cast(void*)this + 108); }
			float FrameRate() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
			int SceneLOD() { return *cast(int*)(cast(size_t)cast(void*)this + 100); }
			SceneCaptureComponent.ESceneCaptureViewMode ViewMode() { return *cast(SceneCaptureComponent.ESceneCaptureViewMode*)(cast(size_t)cast(void*)this + 96); }
			UObject.Color ClearColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 92); }
		}
		bool bEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x1) != 0; }
		bool bEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x1; } return val; }
		bool bSkipRenderingDepthPrepass() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x40) != 0; }
		bool bSkipRenderingDepthPrepass(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x40; } return val; }
		bool bSkipUpdateIfOwnerOccluded() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x20) != 0; }
		bool bSkipUpdateIfOwnerOccluded(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x20; } return val; }
		bool bSkipUpdateIfTextureUsersOccluded() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x10) != 0; }
		bool bSkipUpdateIfTextureUsersOccluded(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x10; } return val; }
		bool bUseMainScenePostProcessSettings() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x8) != 0; }
		bool bUseMainScenePostProcessSettings(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x8; } return val; }
		bool bEnableFog() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x4) != 0; }
		bool bEnableFog(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x4; } return val; }
		bool bEnablePostProcess() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x2) != 0; }
		bool bEnablePostProcess(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x2; } return val; }
	}
final:
	void SetEnabled(bool bEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnable;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24681], params.ptr, cast(void*)0);
	}
	void SetFrameRate(float NewFrameRate)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = NewFrameRate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24701], params.ptr, cast(void*)0);
	}
}
