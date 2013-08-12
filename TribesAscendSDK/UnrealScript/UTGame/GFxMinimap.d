module UnrealScript.UTGame.GFxMinimap;

import ScriptClasses;
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
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.GFxMinimap")); }
	private static __gshared GFxMinimap mDefaultProperties;
	@property final static GFxMinimap DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GFxMinimap)("GFxMinimap UTGame.Default__GFxMinimap")); }
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
			ScriptFunction Init() { return mInit ? mInit : (mInit = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxMinimap.Init")); }
			ScriptFunction UpdateData() { return mUpdateData ? mUpdateData : (mUpdateData = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxMinimap.UpdateData")); }
			ScriptFunction GenFriendIcons() { return mGenFriendIcons ? mGenFriendIcons : (mGenFriendIcons = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxMinimap.GenFriendIcons")); }
			ScriptFunction GenEnemyIcons() { return mGenEnemyIcons ? mGenEnemyIcons : (mGenEnemyIcons = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxMinimap.GenEnemyIcons")); }
			ScriptFunction GenFlagIcons() { return mGenFlagIcons ? mGenFlagIcons : (mGenFlagIcons = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxMinimap.GenFlagIcons")); }
			ScriptFunction UpdateIcons() { return mUpdateIcons ? mUpdateIcons : (mUpdateIcons = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxMinimap.UpdateIcons")); }
			ScriptFunction Update() { return mUpdate ? mUpdate : (mUpdate = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxMinimap.Update")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(GFxObject) EnemyIcons() { return *cast(ScriptArray!(GFxObject)*)(cast(size_t)cast(void*)this + 152); }
			ScriptArray!(GFxObject) MyTeamIcons() { return *cast(ScriptArray!(GFxObject)*)(cast(size_t)cast(void*)this + 164); }
			ScriptArray!(GFxObject) FlagIcons() { return *cast(ScriptArray!(GFxObject)*)(cast(size_t)cast(void*)this + 176); }
			ScriptArray!(GFxObject) ObjectiveIcons() { return *cast(ScriptArray!(GFxObject)*)(cast(size_t)cast(void*)this + 188); }
			ScriptArray!(UTGameObjective) Objectives() { return *cast(ScriptArray!(UTGameObjective)*)(cast(size_t)cast(void*)this + 296); }
			int IconsFlagCount() { return *cast(int*)(cast(size_t)cast(void*)this + 292); }
			int IconsBlueCount() { return *cast(int*)(cast(size_t)cast(void*)this + 288); }
			int IconsRedCount() { return *cast(int*)(cast(size_t)cast(void*)this + 284); }
			GFxObject IconsFlagMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 280); }
			GFxObject IconsBlueMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 276); }
			GFxObject IconsRedMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 272); }
			UObject.Matrix IconMatrix() { return *cast(UObject.Matrix*)(cast(size_t)cast(void*)this + 208); }
			GFxObject MapMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 148); }
			GFxObject CompassIcon() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 144); }
			GFxObject PlayerIcon() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 140); }
			int MapTexSize() { return *cast(int*)(cast(size_t)cast(void*)this + 132); }
			// WARNING: Property 'MapInfo' has the same name as a defined type!
			WorldInfo ThisWorld() { return *cast(WorldInfo*)(cast(size_t)cast(void*)this + 124); }
			// WARNING: Property 'HUD' has the same name as a defined type!
		}
		bool bNeedsUpdateData() { return (*cast(uint*)(cast(size_t)cast(void*)this + 136) & 0x1) != 0; }
		bool bNeedsUpdateData(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 136) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 136) &= ~0x1; } return val; }
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
	void UpdateIcons(ScriptArray!(Actor)* Actors, ScriptArray!(GFxObject)* ActorIcons, bool bIsRedIconType)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptArray!(Actor)*)params.ptr = *Actors;
		*cast(ScriptArray!(GFxObject)*)&params[12] = *ActorIcons;
		*cast(bool*)&params[24] = bIsRedIconType;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateIcons, params.ptr, cast(void*)0);
		*Actors = *cast(ScriptArray!(Actor)*)params.ptr;
		*ActorIcons = *cast(ScriptArray!(GFxObject)*)&params[12];
	}
	void Update(float Scale)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = Scale;
		(cast(ScriptObject)this).ProcessEvent(Functions.Update, params.ptr, cast(void*)0);
	}
}
