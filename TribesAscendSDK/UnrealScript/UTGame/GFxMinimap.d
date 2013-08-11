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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37319], params.ptr, cast(void*)0);
	}
	void UpdateData()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37330], cast(void*)0, cast(void*)0);
	}
	ScriptArray!(GFxObject) GenFriendIcons(int N)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = N;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37331], params.ptr, cast(void*)0);
		return *cast(ScriptArray!(GFxObject)*)&params[4];
	}
	ScriptArray!(GFxObject) GenEnemyIcons(int N)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = N;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37339], params.ptr, cast(void*)0);
		return *cast(ScriptArray!(GFxObject)*)&params[4];
	}
	ScriptArray!(GFxObject) GenFlagIcons(int N)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = N;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37347], params.ptr, cast(void*)0);
		return *cast(ScriptArray!(GFxObject)*)&params[4];
	}
	void UpdateIcons(ScriptArray!(Actor)* Actors, ScriptArray!(GFxObject)* ActorIcons, bool bIsRedIconType)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptArray!(Actor)*)params.ptr = *Actors;
		*cast(ScriptArray!(GFxObject)*)&params[12] = *ActorIcons;
		*cast(bool*)&params[24] = bIsRedIconType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37355], params.ptr, cast(void*)0);
		*Actors = *cast(ScriptArray!(Actor)*)params.ptr;
		*ActorIcons = *cast(ScriptArray!(GFxObject)*)&params[12];
	}
	void Update(float Scale)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = Scale;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37368], params.ptr, cast(void*)0);
	}
}
