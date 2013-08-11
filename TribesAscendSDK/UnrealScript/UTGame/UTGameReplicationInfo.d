module UnrealScript.UTGame.UTGameReplicationInfo;

import ScriptClasses;
import UnrealScript.Engine.GameReplicationInfo;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.UTGame.UTPlayerController;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.StaticMesh;

extern(C++) interface UTGameReplicationInfo : GameReplicationInfo
{
public extern(D):
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
		private ubyte __buffer__[8];
	public extern(D):
		@property final auto ref
		{
			StaticMesh Mesh() { return *cast(StaticMesh*)(cast(size_t)&this + 0); }
			// WARNING: Property 'Material' has the same name as a defined type!
		}
	}
	@property final
	{
		auto ref
		{
			ScriptString MessageOfTheDay() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 624); }
			ScriptArray!(UTGameReplicationInfo.MeshEffect) VehicleWeaponEffects() { return *cast(ScriptArray!(UTGameReplicationInfo.MeshEffect)*)(cast(size_t)cast(void*)this + 612); }
			ScriptArray!(MaterialInterface) WeaponOverlays() { return *cast(ScriptArray!(MaterialInterface)*)(cast(size_t)cast(void*)this + 600); }
			int BotDifficulty() { return *cast(int*)(cast(size_t)cast(void*)this + 564); }
			int MinNetPlayers() { return *cast(int*)(cast(size_t)cast(void*)this + 560); }
			ScriptString MutatorList() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 576); }
			ScriptString RulesString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 588); }
			UTGameReplicationInfo.EFlagState FlagState() { return *cast(UTGameReplicationInfo.EFlagState*)(cast(size_t)cast(void*)this + 572); }
			float WeaponBerserk() { return *cast(float*)(cast(size_t)cast(void*)this + 556); }
		}
		bool bStoryMode() { return (*cast(uint*)(cast(size_t)cast(void*)this + 568) & 0x4) != 0; }
		bool bStoryMode(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 568) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 568) &= ~0x4; } return val; }
		bool bAnnouncementsDisabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 568) & 0x20) != 0; }
		bool bAnnouncementsDisabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 568) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 568) &= ~0x20; } return val; }
		bool bConsoleServer() { return (*cast(uint*)(cast(size_t)cast(void*)this + 568) & 0x8) != 0; }
		bool bConsoleServer(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 568) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 568) &= ~0x8; } return val; }
		bool bAllowKeyboardAndMouse() { return (*cast(uint*)(cast(size_t)cast(void*)this + 568) & 0x10) != 0; }
		bool bAllowKeyboardAndMouse(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 568) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 568) &= ~0x10; } return val; }
		bool bRequireReady() { return (*cast(uint*)(cast(size_t)cast(void*)this + 568) & 0x40) != 0; }
		bool bRequireReady(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 568) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 568) &= ~0x40; } return val; }
		bool bWarmupRound() { return (*cast(uint*)(cast(size_t)cast(void*)this + 568) & 0x1) != 0; }
		bool bWarmupRound(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 568) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 568) &= ~0x1; } return val; }
		bool bForceDefaultCharacter() { return (*cast(uint*)(cast(size_t)cast(void*)this + 568) & 0x2) != 0; }
		bool bForceDefaultCharacter(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 568) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 568) &= ~0x2; } return val; }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46039], cast(void*)0, cast(void*)0);
	}
	bool InOrder(PlayerReplicationInfo P1, PlayerReplicationInfo P2)
	{
		ubyte params[12];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = P1;
		*cast(PlayerReplicationInfo*)&params[4] = P2;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46048], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void SortPRIArray()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46054], cast(void*)0, cast(void*)0);
	}
	void CharacterProcessingComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46059], cast(void*)0, cast(void*)0);
	}
	void SetFlagHome(int TeamIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46061], params.ptr, cast(void*)0);
	}
	bool FlagIsHome(int TeamIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46064], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool FlagsAreHome()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46067], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SetFlagHeldFriendly(int TeamIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46069], params.ptr, cast(void*)0);
	}
	bool FlagIsHeldFriendly(int TeamIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46071], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void SetFlagHeldEnemy(int TeamIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46074], params.ptr, cast(void*)0);
	}
	bool FlagIsHeldEnemy(int TeamIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46076], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void SetFlagDown(int TeamIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46079], params.ptr, cast(void*)0);
	}
	bool FlagIsDown(int TeamIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46081], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void Timer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46084], cast(void*)0, cast(void*)0);
	}
	void ShowMidGameMenu(UTPlayerController InstigatorPC, ScriptName TabTag, bool bEnableInput)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = InstigatorPC;
		*cast(ScriptName*)&params[4] = TabTag;
		*cast(bool*)&params[12] = bEnableInput;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46087], params.ptr, cast(void*)0);
	}
	void SetHudShowScores(bool bShow)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bShow;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46091], params.ptr, cast(void*)0);
	}
	void AddGameRule(ScriptString Rule)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Rule;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46094], params.ptr, cast(void*)0);
	}
}
