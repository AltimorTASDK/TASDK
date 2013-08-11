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
	public @property final auto ref ScriptArray!(GFxObject) EnemyIcons() { return *cast(ScriptArray!(GFxObject)*)(cast(size_t)cast(void*)this + 152); }
	public @property final auto ref ScriptArray!(GFxObject) MyTeamIcons() { return *cast(ScriptArray!(GFxObject)*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref ScriptArray!(GFxObject) FlagIcons() { return *cast(ScriptArray!(GFxObject)*)(cast(size_t)cast(void*)this + 176); }
	public @property final auto ref ScriptArray!(GFxObject) ObjectiveIcons() { return *cast(ScriptArray!(GFxObject)*)(cast(size_t)cast(void*)this + 188); }
	public @property final auto ref ScriptArray!(UTGameObjective) Objectives() { return *cast(ScriptArray!(UTGameObjective)*)(cast(size_t)cast(void*)this + 296); }
	public @property final auto ref int IconsFlagCount() { return *cast(int*)(cast(size_t)cast(void*)this + 292); }
	public @property final auto ref int IconsBlueCount() { return *cast(int*)(cast(size_t)cast(void*)this + 288); }
	public @property final auto ref int IconsRedCount() { return *cast(int*)(cast(size_t)cast(void*)this + 284); }
	public @property final auto ref GFxObject IconsFlagMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 280); }
	public @property final auto ref GFxObject IconsBlueMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 276); }
	public @property final auto ref GFxObject IconsRedMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 272); }
	public @property final auto ref UObject.Matrix IconMatrix() { return *cast(UObject.Matrix*)(cast(size_t)cast(void*)this + 208); }
	public @property final auto ref GFxObject MapMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 148); }
	public @property final auto ref GFxObject CompassIcon() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref GFxObject PlayerIcon() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 140); }
	public @property final bool bNeedsUpdateData() { return (*cast(uint*)(cast(size_t)cast(void*)this + 136) & 0x1) != 0; }
	public @property final bool bNeedsUpdateData(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 136) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 136) &= ~0x1; } return val; }
	public @property final auto ref int MapTexSize() { return *cast(int*)(cast(size_t)cast(void*)this + 132); }
	// WARNING: Property 'MapInfo' has the same name as a defined type!
	public @property final auto ref WorldInfo ThisWorld() { return *cast(WorldInfo*)(cast(size_t)cast(void*)this + 124); }
	// WARNING: Property 'HUD' has the same name as a defined type!
	final void Init(GFxMinimapHud H)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxMinimapHud*)params.ptr = H;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37319], params.ptr, cast(void*)0);
	}
	final void UpdateData()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37330], cast(void*)0, cast(void*)0);
	}
	final ScriptArray!(GFxObject) GenFriendIcons(int N)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = N;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37331], params.ptr, cast(void*)0);
		return *cast(ScriptArray!(GFxObject)*)&params[4];
	}
	final ScriptArray!(GFxObject) GenEnemyIcons(int N)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = N;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37339], params.ptr, cast(void*)0);
		return *cast(ScriptArray!(GFxObject)*)&params[4];
	}
	final ScriptArray!(GFxObject) GenFlagIcons(int N)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = N;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37347], params.ptr, cast(void*)0);
		return *cast(ScriptArray!(GFxObject)*)&params[4];
	}
	final void UpdateIcons(ScriptArray!(Actor)* Actors, ScriptArray!(GFxObject)* ActorIcons, bool bIsRedIconType)
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
	final void Update(float Scale)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = Scale;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37368], params.ptr, cast(void*)0);
	}
}
