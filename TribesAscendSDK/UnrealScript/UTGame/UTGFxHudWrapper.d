module UnrealScript.UTGame.UTGFxHudWrapper;

import ScriptClasses;
import UnrealScript.UTGame.UTHUDBase;
import UnrealScript.UTGame.GFxProjectedUI;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Core.UObject;
import UnrealScript.UTGame.GFxMinimapHud;

extern(C++) interface UTGFxHudWrapper : UTHUDBase
{
	public @property final auto ref ScriptClass MinimapHUDClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1532); }
	public @property final auto ref GFxProjectedUI InventoryMovie() { return *cast(GFxProjectedUI*)(cast(size_t)cast(void*)this + 1528); }
	public @property final auto ref GFxMinimapHud HudMovie() { return *cast(GFxMinimapHud*)(cast(size_t)cast(void*)this + 1524); }
	final void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47814], cast(void*)0, cast(void*)0);
	}
	final void RemoveMovies()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47815], cast(void*)0, cast(void*)0);
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47816], cast(void*)0, cast(void*)0);
	}
	final void CreateHUDMovie()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47817], cast(void*)0, cast(void*)0);
	}
	final int GetLocalPlayerOwnerIndex()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47818], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final void SetVisible(bool bNewVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47820], params.ptr, cast(void*)0);
	}
	final void DisplayHit(Vector HitDir, int Damage, ScriptClass DamageType)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = HitDir;
		*cast(int*)&params[12] = Damage;
		*cast(ScriptClass*)&params[16] = DamageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47822], params.ptr, cast(void*)0);
	}
	final void CloseOtherMenus()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47826], cast(void*)0, cast(void*)0);
	}
	final void ResolutionChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47827], cast(void*)0, cast(void*)0);
	}
	final void PostRender()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47829], cast(void*)0, cast(void*)0);
	}
	final void DrawHUD()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47830], cast(void*)0, cast(void*)0);
	}
	final void LocalizedMessage(ScriptClass InMessageClass, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, ScriptString CriticalString, int Switch, float Position, float Lifetime, int FontSize, UObject.Color DrawColor, UObject OptionalObject)
	{
		ubyte params[48];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = InMessageClass;
		*cast(PlayerReplicationInfo*)&params[4] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[8] = RelatedPRI_2;
		*cast(ScriptString*)&params[12] = CriticalString;
		*cast(int*)&params[24] = Switch;
		*cast(float*)&params[28] = Position;
		*cast(float*)&params[32] = Lifetime;
		*cast(int*)&params[36] = FontSize;
		*cast(UObject.Color*)&params[40] = DrawColor;
		*cast(UObject*)&params[44] = OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47836], params.ptr, cast(void*)0);
	}
	final void AddConsoleMessage(ScriptString M, ScriptClass InMessageClass, PlayerReplicationInfo PRI, float Lifetime)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = M;
		*cast(ScriptClass*)&params[12] = InMessageClass;
		*cast(PlayerReplicationInfo*)&params[16] = PRI;
		*cast(float*)&params[20] = Lifetime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47848], params.ptr, cast(void*)0);
	}
	final void CompleteCloseInventory()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47853], cast(void*)0, cast(void*)0);
	}
	final void CompleteCloseTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47854], cast(void*)0, cast(void*)0);
	}
}
