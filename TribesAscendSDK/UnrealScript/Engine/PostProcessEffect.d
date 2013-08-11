module UnrealScript.Engine.PostProcessEffect;

import ScriptClasses;
import UnrealScript.Engine.Scene;
import UnrealScript.Core.UObject;

extern(C++) interface PostProcessEffect : UObject
{
	public @property final auto ref Scene.ESceneDepthPriorityGroup SceneDPG() { return *cast(Scene.ESceneDepthPriorityGroup*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref int InDrawY() { return *cast(int*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref int OutDrawY() { return *cast(int*)(cast(size_t)cast(void*)this + 88); }
	public @property final auto ref int DrawHeight() { return *cast(int*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref int DrawWidth() { return *cast(int*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref int NodePosX() { return *cast(int*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref int NodePosY() { return *cast(int*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref ScriptName EffectName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 64); }
	public @property final bool bAffectsLightingOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x8) != 0; }
	public @property final bool bAffectsLightingOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x8; } return val; }
	public @property final bool bUseWorldSettings() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x4) != 0; }
	public @property final bool bUseWorldSettings(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x4; } return val; }
	public @property final bool bShowInGame() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x2) != 0; }
	public @property final bool bShowInGame(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x2; } return val; }
	public @property final bool bShowInEditor() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x1) != 0; }
	public @property final bool bShowInEditor(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x1; } return val; }
}
