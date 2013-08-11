module UnrealScript.UTGame.UTGameReplicationInfo;

import ScriptClasses;
import UnrealScript.Engine.GameReplicationInfo;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.UTGame.UTPlayerController;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.StaticMesh;

extern(C++) interface UTGameReplicationInfo : GameReplicationInfo
{
	enum EFlagState : ubyte
	{
		FLAG_Home = 0,
		FLAG_HeldFriendly = 1,
		FLAG_HeldEnemy = 2,
		FLAG_Down = 3,
		FLAG_MAX = 4,
	}
	struct MeshEffect
	{
		public @property final auto ref StaticMesh Mesh() { return *cast(StaticMesh*)(cast(size_t)&this + 0); }
		private ubyte __Mesh[4];
		// WARNING: Property 'Material' has the same name as a defined type!
	}
	public @property final bool bStoryMode() { return (*cast(uint*)(cast(size_t)cast(void*)this + 568) & 0x4) != 0; }
	public @property final bool bStoryMode(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 568) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 568) &= ~0x4; } return val; }
	public @property final bool bAnnouncementsDisabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 568) & 0x20) != 0; }
	public @property final bool bAnnouncementsDisabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 568) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 568) &= ~0x20; } return val; }
	public @property final auto ref ScriptString MessageOfTheDay() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 624); }
	public @property final auto ref ScriptArray!(UTGameReplicationInfo.MeshEffect) VehicleWeaponEffects() { return *cast(ScriptArray!(UTGameReplicationInfo.MeshEffect)*)(cast(size_t)cast(void*)this + 612); }
	public @property final bool bConsoleServer() { return (*cast(uint*)(cast(size_t)cast(void*)this + 568) & 0x8) != 0; }
	public @property final bool bConsoleServer(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 568) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 568) &= ~0x8; } return val; }
	public @property final auto ref ScriptArray!(MaterialInterface) WeaponOverlays() { return *cast(ScriptArray!(MaterialInterface)*)(cast(size_t)cast(void*)this + 600); }
	public @property final bool bAllowKeyboardAndMouse() { return (*cast(uint*)(cast(size_t)cast(void*)this + 568) & 0x10) != 0; }
	public @property final bool bAllowKeyboardAndMouse(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 568) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 568) &= ~0x10; } return val; }
	public @property final auto ref int BotDifficulty() { return *cast(int*)(cast(size_t)cast(void*)this + 564); }
	public @property final auto ref int MinNetPlayers() { return *cast(int*)(cast(size_t)cast(void*)this + 560); }
	public @property final bool bRequireReady() { return (*cast(uint*)(cast(size_t)cast(void*)this + 568) & 0x40) != 0; }
	public @property final bool bRequireReady(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 568) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 568) &= ~0x40; } return val; }
	public @property final auto ref ScriptString MutatorList() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 576); }
	public @property final auto ref ScriptString RulesString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 588); }
	public @property final bool bWarmupRound() { return (*cast(uint*)(cast(size_t)cast(void*)this + 568) & 0x1) != 0; }
	public @property final bool bWarmupRound(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 568) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 568) &= ~0x1; } return val; }
	public @property final auto ref UTGameReplicationInfo.EFlagState FlagState() { return *cast(UTGameReplicationInfo.EFlagState*)(cast(size_t)cast(void*)this + 572); }
	public @property final auto ref float WeaponBerserk() { return *cast(float*)(cast(size_t)cast(void*)this + 556); }
	public @property final bool bForceDefaultCharacter() { return (*cast(uint*)(cast(size_t)cast(void*)this + 568) & 0x2) != 0; }
	public @property final bool bForceDefaultCharacter(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 568) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 568) &= ~0x2; } return val; }
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46039], cast(void*)0, cast(void*)0);
	}
	final bool InOrder(PlayerReplicationInfo P1, PlayerReplicationInfo P2)
	{
		ubyte params[12];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = P1;
		*cast(PlayerReplicationInfo*)&params[4] = P2;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46048], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final void SortPRIArray()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46054], cast(void*)0, cast(void*)0);
	}
	final void CharacterProcessingComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46059], cast(void*)0, cast(void*)0);
	}
	final void SetFlagHome(int TeamIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46061], params.ptr, cast(void*)0);
	}
	final bool FlagIsHome(int TeamIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46064], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool FlagsAreHome()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46067], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void SetFlagHeldFriendly(int TeamIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46069], params.ptr, cast(void*)0);
	}
	final bool FlagIsHeldFriendly(int TeamIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46071], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void SetFlagHeldEnemy(int TeamIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46074], params.ptr, cast(void*)0);
	}
	final bool FlagIsHeldEnemy(int TeamIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46076], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void SetFlagDown(int TeamIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46079], params.ptr, cast(void*)0);
	}
	final bool FlagIsDown(int TeamIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46081], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void Timer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46084], cast(void*)0, cast(void*)0);
	}
	final void ShowMidGameMenu(UTPlayerController InstigatorPC, ScriptName TabTag, bool bEnableInput)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = InstigatorPC;
		*cast(ScriptName*)&params[4] = TabTag;
		*cast(bool*)&params[12] = bEnableInput;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46087], params.ptr, cast(void*)0);
	}
	final void SetHudShowScores(bool bShow)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bShow;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46091], params.ptr, cast(void*)0);
	}
	final void AddGameRule(ScriptString Rule)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Rule;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46094], params.ptr, cast(void*)0);
	}
}
