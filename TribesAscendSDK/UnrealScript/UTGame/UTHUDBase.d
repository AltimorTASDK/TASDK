module UnrealScript.UTGame.UTHUDBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKHUD;
import UnrealScript.UTGame.UTGameReplicationInfo;
import UnrealScript.Engine.Canvas;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Texture2D;
import UnrealScript.UTGame.UTPlayerController;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.UIRoot;
import UnrealScript.UTGame.GFxUI_PauseMenu;

extern(C++) interface UTHUDBase : UDKHUD
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTHUDBase")()); }
	private static __gshared UTHUDBase mDefaultProperties;
	@property final static UTHUDBase DefaultProperties() { mixin(MGDPC!(UTHUDBase, "UTHUDBase UTGame.Default__UTHUDBase")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mTimer;
			ScriptFunction mShowMenu;
			ScriptFunction mResolutionChanged;
			ScriptFunction mDisplayHit;
			ScriptFunction mPostRender;
			ScriptFunction mRemoveMovies;
			ScriptFunction mSetVisible;
			ScriptFunction mCloseOtherMenus;
			ScriptFunction mTogglePauseMenu;
			ScriptFunction mCompletePauseMenuClose;
			ScriptFunction mReleaseShowScores;
			ScriptFunction mGetLocalPlayerOwnerIndex;
			ScriptFunction mDrawToolTip;
			ScriptFunction mCheckCrosshairOnFriendly;
			ScriptFunction mClearCrosshairOnFriendly;
			ScriptFunction mDrawShadowedTile;
			ScriptFunction mDrawShadowedStretchedTile;
			ScriptFunction mDrawShadowedRotatedTile;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function UTGame.UTHUDBase.PostBeginPlay")()); }
			ScriptFunction Timer() { mixin(MGF!("mTimer", "Function UTGame.UTHUDBase.Timer")()); }
			ScriptFunction ShowMenu() { mixin(MGF!("mShowMenu", "Function UTGame.UTHUDBase.ShowMenu")()); }
			ScriptFunction ResolutionChanged() { mixin(MGF!("mResolutionChanged", "Function UTGame.UTHUDBase.ResolutionChanged")()); }
			ScriptFunction DisplayHit() { mixin(MGF!("mDisplayHit", "Function UTGame.UTHUDBase.DisplayHit")()); }
			ScriptFunction PostRender() { mixin(MGF!("mPostRender", "Function UTGame.UTHUDBase.PostRender")()); }
			ScriptFunction RemoveMovies() { mixin(MGF!("mRemoveMovies", "Function UTGame.UTHUDBase.RemoveMovies")()); }
			ScriptFunction SetVisible() { mixin(MGF!("mSetVisible", "Function UTGame.UTHUDBase.SetVisible")()); }
			ScriptFunction CloseOtherMenus() { mixin(MGF!("mCloseOtherMenus", "Function UTGame.UTHUDBase.CloseOtherMenus")()); }
			ScriptFunction TogglePauseMenu() { mixin(MGF!("mTogglePauseMenu", "Function UTGame.UTHUDBase.TogglePauseMenu")()); }
			ScriptFunction CompletePauseMenuClose() { mixin(MGF!("mCompletePauseMenuClose", "Function UTGame.UTHUDBase.CompletePauseMenuClose")()); }
			ScriptFunction ReleaseShowScores() { mixin(MGF!("mReleaseShowScores", "Function UTGame.UTHUDBase.ReleaseShowScores")()); }
			ScriptFunction GetLocalPlayerOwnerIndex() { mixin(MGF!("mGetLocalPlayerOwnerIndex", "Function UTGame.UTHUDBase.GetLocalPlayerOwnerIndex")()); }
			ScriptFunction DrawToolTip() { mixin(MGF!("mDrawToolTip", "Function UTGame.UTHUDBase.DrawToolTip")()); }
			ScriptFunction CheckCrosshairOnFriendly() { mixin(MGF!("mCheckCrosshairOnFriendly", "Function UTGame.UTHUDBase.CheckCrosshairOnFriendly")()); }
			ScriptFunction ClearCrosshairOnFriendly() { mixin(MGF!("mClearCrosshairOnFriendly", "Function UTGame.UTHUDBase.ClearCrosshairOnFriendly")()); }
			ScriptFunction DrawShadowedTile() { mixin(MGF!("mDrawShadowedTile", "Function UTGame.UTHUDBase.DrawShadowedTile")()); }
			ScriptFunction DrawShadowedStretchedTile() { mixin(MGF!("mDrawShadowedStretchedTile", "Function UTGame.UTHUDBase.DrawShadowedStretchedTile")()); }
			ScriptFunction DrawShadowedRotatedTile() { mixin(MGF!("mDrawShadowedRotatedTile", "Function UTGame.UTHUDBase.DrawShadowedRotatedTile")()); }
		}
	}
	@property final
	{
		auto ref
		{
			UObject.Color BlackColor() { mixin(MGPC!("UObject.Color", 1492)()); }
			Texture2D IconHudTexture() { mixin(MGPC!("Texture2D", 1468)()); }
			float ResolutionScale() { mixin(MGPC!("float", 1508)()); }
			float LastPickupTime() { mixin(MGPC!("float", 1488)()); }
			float ConfiguredCrosshairScaling() { mixin(MGPC!("float", 1484)()); }
			UObject.Color LightGreenColor() { mixin(MGPC!("UObject.Color", 1504)()); }
			int ViewY() { mixin(MGPC!("int", 1520)()); }
			int ViewX() { mixin(MGPC!("int", 1516)()); }
			float ResolutionScaleX() { mixin(MGPC!("float", 1512)()); }
			UObject.Color LightGoldColor() { mixin(MGPC!("UObject.Color", 1500)()); }
			UObject.Color GoldColor() { mixin(MGPC!("UObject.Color", 1496)()); }
			ScriptString ConsoleIconFontClassName() { mixin(MGPC!("ScriptString", 1472)()); }
			float LastTimeTooltipDrawn() { mixin(MGPC!("float", 1464)()); }
			UIRoot.TextureCoordinates ToolTipSepCoords() { mixin(MGPC!("UIRoot.TextureCoordinates", 1448)()); }
			UTGameReplicationInfo UTGRI() { mixin(MGPC!("UTGameReplicationInfo", 1440)()); }
			UTPlayerController UTPlayerOwner() { mixin(MGPC!("UTPlayerController", 1436)()); }
			ScriptClass MusicManagerClass() { mixin(MGPC!("ScriptClass", 1432)()); }
			GFxUI_PauseMenu PauseMenuMovie() { mixin(MGPC!("GFxUI_PauseMenu", 1428)()); }
		}
		bool bCrosshairShow() { mixin(MGBPC!(1444, 0x4)()); }
		bool bCrosshairShow(bool val) { mixin(MSBPC!(1444, 0x4)()); }
		bool bCrosshairOnFriendly() { mixin(MGBPC!(1444, 0x8)()); }
		bool bCrosshairOnFriendly(bool val) { mixin(MSBPC!(1444, 0x8)()); }
		bool bGreenCrosshair() { mixin(MGBPC!(1444, 0x10)()); }
		bool bGreenCrosshair(bool val) { mixin(MSBPC!(1444, 0x10)()); }
		bool bIsSplitScreen() { mixin(MGBPC!(1444, 0x1)()); }
		bool bIsSplitScreen(bool val) { mixin(MSBPC!(1444, 0x1)()); }
		bool bEnableActorOverlays() { mixin(MGBPC!(1444, 0x2)()); }
		bool bEnableActorOverlays(bool val) { mixin(MSBPC!(1444, 0x2)()); }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void Timer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Timer, cast(void*)0, cast(void*)0);
	}
	void ShowMenu()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowMenu, cast(void*)0, cast(void*)0);
	}
	void ResolutionChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResolutionChanged, cast(void*)0, cast(void*)0);
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
	void PostRender()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostRender, cast(void*)0, cast(void*)0);
	}
	void RemoveMovies()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveMovies, cast(void*)0, cast(void*)0);
	}
	void SetVisible(bool bNewVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewVisible;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetVisible, params.ptr, cast(void*)0);
	}
	void CloseOtherMenus()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CloseOtherMenus, cast(void*)0, cast(void*)0);
	}
	void TogglePauseMenu()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TogglePauseMenu, cast(void*)0, cast(void*)0);
	}
	void CompletePauseMenuClose()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CompletePauseMenuClose, cast(void*)0, cast(void*)0);
	}
	void ReleaseShowScores()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ReleaseShowScores, cast(void*)0, cast(void*)0);
	}
	int GetLocalPlayerOwnerIndex()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetLocalPlayerOwnerIndex, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void DrawToolTip(Canvas Cvs, PlayerController PC, ScriptString Command, float X, float Y, float U, float V, float UL, float VL, float ResScale, Texture2D* IconTexture = null, float* Alpha = null)
	{
		ubyte params[56];
		params[] = 0;
		*cast(Canvas*)params.ptr = Cvs;
		*cast(PlayerController*)&params[4] = PC;
		*cast(ScriptString*)&params[8] = Command;
		*cast(float*)&params[20] = X;
		*cast(float*)&params[24] = Y;
		*cast(float*)&params[28] = U;
		*cast(float*)&params[32] = V;
		*cast(float*)&params[36] = UL;
		*cast(float*)&params[40] = VL;
		*cast(float*)&params[44] = ResScale;
		if (IconTexture !is null)
			*cast(Texture2D*)&params[48] = *IconTexture;
		if (Alpha !is null)
			*cast(float*)&params[52] = *Alpha;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawToolTip, params.ptr, cast(void*)0);
	}
	bool CheckCrosshairOnFriendly()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckCrosshairOnFriendly, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ClearCrosshairOnFriendly()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearCrosshairOnFriendly, cast(void*)0, cast(void*)0);
	}
	void DrawShadowedTile(Texture2D Tex, float X, float Y, float XL, float YL, float U, float V, float UL, float VL, UObject.Color TileColor, bool* bScaleToRes = null)
	{
		ubyte params[44];
		params[] = 0;
		*cast(Texture2D*)params.ptr = Tex;
		*cast(float*)&params[4] = X;
		*cast(float*)&params[8] = Y;
		*cast(float*)&params[12] = XL;
		*cast(float*)&params[16] = YL;
		*cast(float*)&params[20] = U;
		*cast(float*)&params[24] = V;
		*cast(float*)&params[28] = UL;
		*cast(float*)&params[32] = VL;
		*cast(UObject.Color*)&params[36] = TileColor;
		if (bScaleToRes !is null)
			*cast(bool*)&params[40] = *bScaleToRes;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawShadowedTile, params.ptr, cast(void*)0);
	}
	void DrawShadowedStretchedTile(Texture2D Tex, float X, float Y, float XL, float YL, float U, float V, float UL, float VL, UObject.Color TileColor, bool* bScaleToRes = null)
	{
		ubyte params[44];
		params[] = 0;
		*cast(Texture2D*)params.ptr = Tex;
		*cast(float*)&params[4] = X;
		*cast(float*)&params[8] = Y;
		*cast(float*)&params[12] = XL;
		*cast(float*)&params[16] = YL;
		*cast(float*)&params[20] = U;
		*cast(float*)&params[24] = V;
		*cast(float*)&params[28] = UL;
		*cast(float*)&params[32] = VL;
		*cast(UObject.Color*)&params[36] = TileColor;
		if (bScaleToRes !is null)
			*cast(bool*)&params[40] = *bScaleToRes;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawShadowedStretchedTile, params.ptr, cast(void*)0);
	}
	void DrawShadowedRotatedTile(Texture2D Tex, Rotator Rot, float X, float Y, float XL, float YL, float U, float V, float UL, float VL, UObject.Color TileColor, bool* bScaleToRes = null)
	{
		ubyte params[56];
		params[] = 0;
		*cast(Texture2D*)params.ptr = Tex;
		*cast(Rotator*)&params[4] = Rot;
		*cast(float*)&params[16] = X;
		*cast(float*)&params[20] = Y;
		*cast(float*)&params[24] = XL;
		*cast(float*)&params[28] = YL;
		*cast(float*)&params[32] = U;
		*cast(float*)&params[36] = V;
		*cast(float*)&params[40] = UL;
		*cast(float*)&params[44] = VL;
		*cast(UObject.Color*)&params[48] = TileColor;
		if (bScaleToRes !is null)
			*cast(bool*)&params[52] = *bScaleToRes;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawShadowedRotatedTile, params.ptr, cast(void*)0);
	}
}
