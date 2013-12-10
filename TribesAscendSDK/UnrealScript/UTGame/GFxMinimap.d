module UnrealScript.UTGame.GFxMinimap;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.WorldInfo;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.UTGame.UTMapInfo;
import UnrealScript.UTGame.GFxMinimapHud;
import UnrealScript.GFxUI.GFxObject;
import UnrealScript.UTGame.UTGameObjective;

extern(C++) interface GFxMinimap : GFxObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.GFxMinimap")); }
	private static __gshared GFxMinimap mDefaultProperties;
	@property final static GFxMinimap DefaultProperties() { mixin(MGDPC("GFxMinimap", "GFxMinimap UTGame.Default__GFxMinimap")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInit;
			ScriptFunction mUpdateData;
			ScriptFunction mGenFriendIcons;
			ScriptFunction mGenEnemyIcons;
			ScriptFunction mGenFlagIcons;
			ScriptFunction mUpdateIcons;
			ScriptFunction mUpdate;
		}
		public @property static final
		{
			ScriptFunction Init() { mixin(MGF("mInit", "Function UTGame.GFxMinimap.Init")); }
			ScriptFunction UpdateData() { mixin(MGF("mUpdateData", "Function UTGame.GFxMinimap.UpdateData")); }
			ScriptFunction GenFriendIcons() { mixin(MGF("mGenFriendIcons", "Function UTGame.GFxMinimap.GenFriendIcons")); }
			ScriptFunction GenEnemyIcons() { mixin(MGF("mGenEnemyIcons", "Function UTGame.GFxMinimap.GenEnemyIcons")); }
			ScriptFunction GenFlagIcons() { mixin(MGF("mGenFlagIcons", "Function UTGame.GFxMinimap.GenFlagIcons")); }
			ScriptFunction UpdateIcons() { mixin(MGF("mUpdateIcons", "Function UTGame.GFxMinimap.UpdateIcons")); }
			ScriptFunction Update() { mixin(MGF("mUpdate", "Function UTGame.GFxMinimap.Update")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(GFxObject) EnemyIcons() { mixin(MGPC("ScriptArray!(GFxObject)", 152)); }
			ScriptArray!(GFxObject) MyTeamIcons() { mixin(MGPC("ScriptArray!(GFxObject)", 164)); }
			ScriptArray!(GFxObject) FlagIcons() { mixin(MGPC("ScriptArray!(GFxObject)", 176)); }
			ScriptArray!(GFxObject) ObjectiveIcons() { mixin(MGPC("ScriptArray!(GFxObject)", 188)); }
			ScriptArray!(UTGameObjective) Objectives() { mixin(MGPC("ScriptArray!(UTGameObjective)", 296)); }
			int IconsFlagCount() { mixin(MGPC("int", 292)); }
			int IconsBlueCount() { mixin(MGPC("int", 288)); }
			int IconsRedCount() { mixin(MGPC("int", 284)); }
			GFxObject IconsFlagMC() { mixin(MGPC("GFxObject", 280)); }
			GFxObject IconsBlueMC() { mixin(MGPC("GFxObject", 276)); }
			GFxObject IconsRedMC() { mixin(MGPC("GFxObject", 272)); }
			UObject.Matrix IconMatrix() { mixin(MGPC("UObject.Matrix", 208)); }
			GFxObject MapMC() { mixin(MGPC("GFxObject", 148)); }
			GFxObject CompassIcon() { mixin(MGPC("GFxObject", 144)); }
			GFxObject PlayerIcon() { mixin(MGPC("GFxObject", 140)); }
			int MapTexSize() { mixin(MGPC("int", 132)); }
			UTMapInfo MapInfoVar() { mixin(MGPC("UTMapInfo", 128)); }
			WorldInfo ThisWorld() { mixin(MGPC("WorldInfo", 124)); }
			GFxMinimapHud HUDVar() { mixin(MGPC("GFxMinimapHud", 120)); }
		}
		bool bNeedsUpdateData() { mixin(MGBPC(136, 0x1)); }
		bool bNeedsUpdateData(bool val) { mixin(MSBPC(136, 0x1)); }
	}
final:
	void Init(GFxMinimapHud H)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxMinimapHud*)params.ptr = H;
		(cast(ScriptObject)this).ProcessEvent(Functions.Init, params.ptr, cast(void*)0);
	}
	void UpdateData()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateData, cast(void*)0, cast(void*)0);
	}
	ScriptArray!(GFxObject) GenFriendIcons(int N)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = N;
		(cast(ScriptObject)this).ProcessEvent(Functions.GenFriendIcons, params.ptr, cast(void*)0);
		return *cast(ScriptArray!(GFxObject)*)&params[4];
	}
	ScriptArray!(GFxObject) GenEnemyIcons(int N)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = N;
		(cast(ScriptObject)this).ProcessEvent(Functions.GenEnemyIcons, params.ptr, cast(void*)0);
		return *cast(ScriptArray!(GFxObject)*)&params[4];
	}
	ScriptArray!(GFxObject) GenFlagIcons(int N)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = N;
		(cast(ScriptObject)this).ProcessEvent(Functions.GenFlagIcons, params.ptr, cast(void*)0);
		return *cast(ScriptArray!(GFxObject)*)&params[4];
	}
	void UpdateIcons(ref ScriptArray!(Actor) Actors, ref ScriptArray!(GFxObject) ActorIcons, bool bIsRedIconType)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptArray!(Actor)*)params.ptr = Actors;
		*cast(ScriptArray!(GFxObject)*)&params[12] = ActorIcons;
		*cast(bool*)&params[24] = bIsRedIconType;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateIcons, params.ptr, cast(void*)0);
		Actors = *cast(ScriptArray!(Actor)*)params.ptr;
		ActorIcons = *cast(ScriptArray!(GFxObject)*)&params[12];
	}
	void Update(float Scale)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = Scale;
		(cast(ScriptObject)this).ProcessEvent(Functions.Update, params.ptr, cast(void*)0);
	}
}
