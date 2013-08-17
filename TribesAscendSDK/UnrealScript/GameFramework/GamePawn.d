module UnrealScript.GameFramework.GamePawn;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;

extern(C++) interface GamePawn : Pawn
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class GameFramework.GamePawn")); }
	private static __gshared GamePawn mDefaultProperties;
	@property final static GamePawn DefaultProperties() { mixin(MGDPC("GamePawn", "GamePawn GameFramework.Default__GamePawn")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mUpdateShadowSettings;
			ScriptFunction mReattachMesh;
			ScriptFunction mReattachMeshWithoutBeingSeen;
		}
		public @property static final
		{
			ScriptFunction UpdateShadowSettings() { mixin(MGF("mUpdateShadowSettings", "Function GameFramework.GamePawn.UpdateShadowSettings")); }
			ScriptFunction ReattachMesh() { mixin(MGF("mReattachMesh", "Function GameFramework.GamePawn.ReattachMesh")); }
			ScriptFunction ReattachMeshWithoutBeingSeen() { mixin(MGF("mReattachMeshWithoutBeingSeen", "Function GameFramework.GamePawn.ReattachMeshWithoutBeingSeen")); }
		}
	}
	@property final
	{
		bool bRespondToExplosions() { mixin(MGBPC(1144, 0x2)); }
		bool bRespondToExplosions(bool val) { mixin(MSBPC(1144, 0x2)); }
		bool bLastHitWasHeadShot() { mixin(MGBPC(1144, 0x1)); }
		bool bLastHitWasHeadShot(bool val) { mixin(MSBPC(1144, 0x1)); }
	}
final:
	void UpdateShadowSettings(bool bInWantShadow)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bInWantShadow;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateShadowSettings, params.ptr, cast(void*)0);
	}
	void ReattachMesh()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ReattachMesh, cast(void*)0, cast(void*)0);
	}
	void ReattachMeshWithoutBeingSeen()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ReattachMeshWithoutBeingSeen, cast(void*)0, cast(void*)0);
	}
}
