module UnrealScript.Engine.PostProcessEffect;

import ScriptClasses;
import UnrealScript.Engine.Scene;
import UnrealScript.Core.UObject;

extern(C++) interface PostProcessEffect : UObject
{
public extern(D):
	@property final
	{
		auto ref
		{
			Scene.ESceneDepthPriorityGroup SceneDPG() { return *cast(Scene.ESceneDepthPriorityGroup*)(cast(size_t)cast(void*)this + 96); }
			int InDrawY() { return *cast(int*)(cast(size_t)cast(void*)this + 92); }
			int OutDrawY() { return *cast(int*)(cast(size_t)cast(void*)this + 88); }
			int DrawHeight() { return *cast(int*)(cast(size_t)cast(void*)this + 84); }
			int DrawWidth() { return *cast(int*)(cast(size_t)cast(void*)this + 80); }
			int NodePosX() { return *cast(int*)(cast(size_t)cast(void*)this + 76); }
			int NodePosY() { return *cast(int*)(cast(size_t)cast(void*)this + 72); }
			ScriptName EffectName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 64); }
		}
		bool bAffectsLightingOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x8) != 0; }
		bool bAffectsLightingOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x8; } return val; }
		bool bUseWorldSettings() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x4) != 0; }
		bool bUseWorldSettings(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x4; } return val; }
		bool bShowInGame() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x2) != 0; }
		bool bShowInGame(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x2; } return val; }
		bool bShowInEditor() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x1) != 0; }
		bool bShowInEditor(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x1; } return val; }
	}
}
