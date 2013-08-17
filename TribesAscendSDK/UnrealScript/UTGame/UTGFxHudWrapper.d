module UnrealScript.UTGame.UTGFxHudWrapper;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTHUDBase;
import UnrealScript.UTGame.GFxProjectedUI;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Core.UObject;
import UnrealScript.UTGame.GFxMinimapHud;

extern(C++) interface UTGFxHudWrapper : UTHUDBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTGFxHudWrapper")); }
	private static __gshared UTGFxHudWrapper mDefaultProperties;
	@property final static UTGFxHudWrapper DefaultProperties() { mixin(MGDPC("UTGFxHudWrapper", "UTGFxHudWrapper UTGame.Default__UTGFxHudWrapper")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mDestroyed;
			ScriptFunction mRemoveMovies;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mCreateHUDMovie;
			ScriptFunction mGetLocalPlayerOwnerIndex;
			ScriptFunction mSetVisible;
			ScriptFunction mDisplayHit;
			ScriptFunction mCloseOtherMenus;
			ScriptFunction mResolutionChanged;
			ScriptFunction mPostRender;
			ScriptFunction mDrawHUD;
			ScriptFunction mLocalizedMessage;
			ScriptFunction mAddConsoleMessage;
			ScriptFunction mCompleteCloseInventory;
			ScriptFunction mCompleteCloseTimer;
		}
		public @property static final
		{
			ScriptFunction Destroyed() { mixin(MGF("mDestroyed", "Function UTGame.UTGFxHudWrapper.Destroyed")); }
			ScriptFunction RemoveMovies() { mixin(MGF("mRemoveMovies", "Function UTGame.UTGFxHudWrapper.RemoveMovies")); }
			ScriptFunction PostBeginPlay() { mixin(MGF("mPostBeginPlay", "Function UTGame.UTGFxHudWrapper.PostBeginPlay")); }
			ScriptFunction CreateHUDMovie() { mixin(MGF("mCreateHUDMovie", "Function UTGame.UTGFxHudWrapper.CreateHUDMovie")); }
			ScriptFunction GetLocalPlayerOwnerIndex() { mixin(MGF("mGetLocalPlayerOwnerIndex", "Function UTGame.UTGFxHudWrapper.GetLocalPlayerOwnerIndex")); }
			ScriptFunction SetVisible() { mixin(MGF("mSetVisible", "Function UTGame.UTGFxHudWrapper.SetVisible")); }
			ScriptFunction DisplayHit() { mixin(MGF("mDisplayHit", "Function UTGame.UTGFxHudWrapper.DisplayHit")); }
			ScriptFunction CloseOtherMenus() { mixin(MGF("mCloseOtherMenus", "Function UTGame.UTGFxHudWrapper.CloseOtherMenus")); }
			ScriptFunction ResolutionChanged() { mixin(MGF("mResolutionChanged", "Function UTGame.UTGFxHudWrapper.ResolutionChanged")); }
			ScriptFunction PostRender() { mixin(MGF("mPostRender", "Function UTGame.UTGFxHudWrapper.PostRender")); }
			ScriptFunction DrawHUD() { mixin(MGF("mDrawHUD", "Function UTGame.UTGFxHudWrapper.DrawHUD")); }
			ScriptFunction LocalizedMessage() { mixin(MGF("mLocalizedMessage", "Function UTGame.UTGFxHudWrapper.LocalizedMessage")); }
			ScriptFunction AddConsoleMessage() { mixin(MGF("mAddConsoleMessage", "Function UTGame.UTGFxHudWrapper.AddConsoleMessage")); }
			ScriptFunction CompleteCloseInventory() { mixin(MGF("mCompleteCloseInventory", "Function UTGame.UTGFxHudWrapper.CompleteCloseInventory")); }
			ScriptFunction CompleteCloseTimer() { mixin(MGF("mCompleteCloseTimer", "Function UTGame.UTGFxHudWrapper.CompleteCloseTimer")); }
		}
	}
	@property final auto ref
	{
		ScriptClass MinimapHUDClass() { mixin(MGPC("ScriptClass", 1532)); }
		GFxProjectedUI InventoryMovie() { mixin(MGPC("GFxProjectedUI", 1528)); }
		GFxMinimapHud HudMovie() { mixin(MGPC("GFxMinimapHud", 1524)); }
	}
final:
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	void RemoveMovies()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveMovies, cast(void*)0, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void CreateHUDMovie()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateHUDMovie, cast(void*)0, cast(void*)0);
	}
	int GetLocalPlayerOwnerIndex()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetLocalPlayerOwnerIndex, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void SetVisible(bool bNewVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewVisible;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetVisible, params.ptr, cast(void*)0);
	}
	void DisplayHit(Vector HitDir, int Damage, ScriptClass pDamageType)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = HitDir;
		*cast(int*)&params[12] = Damage;
		*cast(ScriptClass*)&params[16] = pDamageType;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayHit, params.ptr, cast(void*)0);
	}
	void CloseOtherMenus()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CloseOtherMenus, cast(void*)0, cast(void*)0);
	}
	void ResolutionChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResolutionChanged, cast(void*)0, cast(void*)0);
	}
	void PostRender()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostRender, cast(void*)0, cast(void*)0);
	}
	void DrawHUD()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawHUD, cast(void*)0, cast(void*)0);
	}
	void LocalizedMessage(ScriptClass InMessageClass, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, ScriptString CriticalString, int Switch, float Position, float Lifetime, int FontSize, UObject.Color DrawColor, UObject* OptionalObject = null)
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
		if (OptionalObject !is null)
			*cast(UObject*)&params[44] = *OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(Functions.LocalizedMessage, params.ptr, cast(void*)0);
	}
	void AddConsoleMessage(ScriptString M, ScriptClass InMessageClass, PlayerReplicationInfo PRI, float* Lifetime = null)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = M;
		*cast(ScriptClass*)&params[12] = InMessageClass;
		*cast(PlayerReplicationInfo*)&params[16] = PRI;
		if (Lifetime !is null)
			*cast(float*)&params[20] = *Lifetime;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddConsoleMessage, params.ptr, cast(void*)0);
	}
	void CompleteCloseInventory()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CompleteCloseInventory, cast(void*)0, cast(void*)0);
	}
	void CompleteCloseTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CompleteCloseTimer, cast(void*)0, cast(void*)0);
	}
}
