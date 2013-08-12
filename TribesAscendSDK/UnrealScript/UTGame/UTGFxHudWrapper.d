module UnrealScript.UTGame.UTGFxHudWrapper;

import ScriptClasses;
import UnrealScript.UTGame.UTHUDBase;
import UnrealScript.UTGame.GFxProjectedUI;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Core.UObject;
import UnrealScript.UTGame.GFxMinimapHud;

extern(C++) interface UTGFxHudWrapper : UTHUDBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTGFxHudWrapper")); }
	private static __gshared UTGFxHudWrapper mDefaultProperties;
	@property final static UTGFxHudWrapper DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTGFxHudWrapper)("UTGFxHudWrapper UTGame.Default__UTGFxHudWrapper")); }
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
			ScriptFunction Destroyed() { return mDestroyed ? mDestroyed : (mDestroyed = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGFxHudWrapper.Destroyed")); }
			ScriptFunction RemoveMovies() { return mRemoveMovies ? mRemoveMovies : (mRemoveMovies = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGFxHudWrapper.RemoveMovies")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGFxHudWrapper.PostBeginPlay")); }
			ScriptFunction CreateHUDMovie() { return mCreateHUDMovie ? mCreateHUDMovie : (mCreateHUDMovie = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGFxHudWrapper.CreateHUDMovie")); }
			ScriptFunction GetLocalPlayerOwnerIndex() { return mGetLocalPlayerOwnerIndex ? mGetLocalPlayerOwnerIndex : (mGetLocalPlayerOwnerIndex = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGFxHudWrapper.GetLocalPlayerOwnerIndex")); }
			ScriptFunction SetVisible() { return mSetVisible ? mSetVisible : (mSetVisible = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGFxHudWrapper.SetVisible")); }
			ScriptFunction DisplayHit() { return mDisplayHit ? mDisplayHit : (mDisplayHit = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGFxHudWrapper.DisplayHit")); }
			ScriptFunction CloseOtherMenus() { return mCloseOtherMenus ? mCloseOtherMenus : (mCloseOtherMenus = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGFxHudWrapper.CloseOtherMenus")); }
			ScriptFunction ResolutionChanged() { return mResolutionChanged ? mResolutionChanged : (mResolutionChanged = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGFxHudWrapper.ResolutionChanged")); }
			ScriptFunction PostRender() { return mPostRender ? mPostRender : (mPostRender = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGFxHudWrapper.PostRender")); }
			ScriptFunction DrawHUD() { return mDrawHUD ? mDrawHUD : (mDrawHUD = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGFxHudWrapper.DrawHUD")); }
			ScriptFunction LocalizedMessage() { return mLocalizedMessage ? mLocalizedMessage : (mLocalizedMessage = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGFxHudWrapper.LocalizedMessage")); }
			ScriptFunction AddConsoleMessage() { return mAddConsoleMessage ? mAddConsoleMessage : (mAddConsoleMessage = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGFxHudWrapper.AddConsoleMessage")); }
			ScriptFunction CompleteCloseInventory() { return mCompleteCloseInventory ? mCompleteCloseInventory : (mCompleteCloseInventory = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGFxHudWrapper.CompleteCloseInventory")); }
			ScriptFunction CompleteCloseTimer() { return mCompleteCloseTimer ? mCompleteCloseTimer : (mCompleteCloseTimer = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGFxHudWrapper.CompleteCloseTimer")); }
		}
	}
	@property final auto ref
	{
		ScriptClass MinimapHUDClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1532); }
		GFxProjectedUI InventoryMovie() { return *cast(GFxProjectedUI*)(cast(size_t)cast(void*)this + 1528); }
		GFxMinimapHud HudMovie() { return *cast(GFxMinimapHud*)(cast(size_t)cast(void*)this + 1524); }
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
	void LocalizedMessage(ScriptClass InMessageClass, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, ScriptString CriticalString, int Switch, float Position, float Lifetime, int FontSize, UObject.Color DrawColor, UObject OptionalObject)
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
		(cast(ScriptObject)this).ProcessEvent(Functions.LocalizedMessage, params.ptr, cast(void*)0);
	}
	void AddConsoleMessage(ScriptString M, ScriptClass InMessageClass, PlayerReplicationInfo PRI, float Lifetime)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = M;
		*cast(ScriptClass*)&params[12] = InMessageClass;
		*cast(PlayerReplicationInfo*)&params[16] = PRI;
		*cast(float*)&params[20] = Lifetime;
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
