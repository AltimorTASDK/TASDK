module UnrealScript.Engine.PostProcessEffect;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Scene;
import UnrealScript.Core.UObject;

extern(C++) interface PostProcessEffect : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.PostProcessEffect")); }
	private static __gshared PostProcessEffect mDefaultProperties;
	@property final static PostProcessEffect DefaultProperties() { mixin(MGDPC("PostProcessEffect", "PostProcessEffect Engine.Default__PostProcessEffect")); }
	@property final
	{
		auto ref
		{
			Scene.ESceneDepthPriorityGroup SceneDPG() { mixin(MGPC("Scene.ESceneDepthPriorityGroup", 96)); }
			int InDrawY() { mixin(MGPC("int", 92)); }
			int OutDrawY() { mixin(MGPC("int", 88)); }
			int DrawHeight() { mixin(MGPC("int", 84)); }
			int DrawWidth() { mixin(MGPC("int", 80)); }
			int NodePosX() { mixin(MGPC("int", 76)); }
			int NodePosY() { mixin(MGPC("int", 72)); }
			ScriptName EffectName() { mixin(MGPC("ScriptName", 64)); }
		}
		bool bAffectsLightingOnly() { mixin(MGBPC(60, 0x8)); }
		bool bAffectsLightingOnly(bool val) { mixin(MSBPC(60, 0x8)); }
		bool bUseWorldSettings() { mixin(MGBPC(60, 0x4)); }
		bool bUseWorldSettings(bool val) { mixin(MSBPC(60, 0x4)); }
		bool bShowInGame() { mixin(MGBPC(60, 0x2)); }
		bool bShowInGame(bool val) { mixin(MSBPC(60, 0x2)); }
		bool bShowInEditor() { mixin(MGBPC(60, 0x1)); }
		bool bShowInEditor(bool val) { mixin(MSBPC(60, 0x1)); }
	}
}
