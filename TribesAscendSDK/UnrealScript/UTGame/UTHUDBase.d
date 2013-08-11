module UnrealScript.UTGame.UTHUDBase;

import ScriptClasses;
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
	public @property final bool bCrosshairShow() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1444) & 0x4) != 0; }
	public @property final bool bCrosshairShow(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1444) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1444) &= ~0x4; } return val; }
	public @property final auto ref UObject.Color BlackColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 1492); }
	public @property final auto ref Texture2D IconHudTexture() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1468); }
	public @property final bool bCrosshairOnFriendly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1444) & 0x8) != 0; }
	public @property final bool bCrosshairOnFriendly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1444) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1444) &= ~0x8; } return val; }
	public @property final auto ref float ResolutionScale() { return *cast(float*)(cast(size_t)cast(void*)this + 1508); }
	public @property final auto ref float LastPickupTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1488); }
	public @property final auto ref float ConfiguredCrosshairScaling() { return *cast(float*)(cast(size_t)cast(void*)this + 1484); }
	public @property final bool bGreenCrosshair() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1444) & 0x10) != 0; }
	public @property final bool bGreenCrosshair(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1444) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1444) &= ~0x10; } return val; }
	public @property final auto ref UObject.Color LightGreenColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 1504); }
	public @property final bool bIsSplitScreen() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1444) & 0x1) != 0; }
	public @property final bool bIsSplitScreen(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1444) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1444) &= ~0x1; } return val; }
	public @property final auto ref int ViewY() { return *cast(int*)(cast(size_t)cast(void*)this + 1520); }
	public @property final auto ref int ViewX() { return *cast(int*)(cast(size_t)cast(void*)this + 1516); }
	public @property final auto ref float ResolutionScaleX() { return *cast(float*)(cast(size_t)cast(void*)this + 1512); }
	public @property final auto ref UObject.Color LightGoldColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 1500); }
	public @property final auto ref UObject.Color GoldColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 1496); }
	public @property final auto ref ScriptString ConsoleIconFontClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1472); }
	public @property final auto ref float LastTimeTooltipDrawn() { return *cast(float*)(cast(size_t)cast(void*)this + 1464); }
	public @property final auto ref UIRoot.TextureCoordinates ToolTipSepCoords() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 1448); }
	public @property final bool bEnableActorOverlays() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1444) & 0x2) != 0; }
	public @property final bool bEnableActorOverlays(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1444) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1444) &= ~0x2; } return val; }
	public @property final auto ref UTGameReplicationInfo UTGRI() { return *cast(UTGameReplicationInfo*)(cast(size_t)cast(void*)this + 1440); }
	public @property final auto ref UTPlayerController UTPlayerOwner() { return *cast(UTPlayerController*)(cast(size_t)cast(void*)this + 1436); }
	public @property final auto ref ScriptClass MusicManagerClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1432); }
	public @property final auto ref GFxUI_PauseMenu PauseMenuMovie() { return *cast(GFxUI_PauseMenu*)(cast(size_t)cast(void*)this + 1428); }
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45438], cast(void*)0, cast(void*)0);
	}
	final void Timer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45441], cast(void*)0, cast(void*)0);
	}
	final void ShowMenu()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45442], cast(void*)0, cast(void*)0);
	}
	final void ResolutionChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45443], cast(void*)0, cast(void*)0);
	}
	final void DisplayHit(Vector HitDir, int Damage, ScriptClass DamageType)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = HitDir;
		*cast(int*)&params[12] = Damage;
		*cast(ScriptClass*)&params[16] = DamageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45445], params.ptr, cast(void*)0);
	}
	final void PostRender()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45449], cast(void*)0, cast(void*)0);
	}
	final void RemoveMovies()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45450], cast(void*)0, cast(void*)0);
	}
	final void SetVisible(bool bNewVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45451], params.ptr, cast(void*)0);
	}
	final void CloseOtherMenus()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45453], cast(void*)0, cast(void*)0);
	}
	final void TogglePauseMenu()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45454], cast(void*)0, cast(void*)0);
	}
	final void CompletePauseMenuClose()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45455], cast(void*)0, cast(void*)0);
	}
	final void ReleaseShowScores()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45456], cast(void*)0, cast(void*)0);
	}
	final int GetLocalPlayerOwnerIndex()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45457], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final void DrawToolTip(Canvas Cvs, PlayerController PC, ScriptString Command, float X, float Y, float U, float V, float UL, float VL, float ResScale, Texture2D IconTexture, float Alpha)
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
		*cast(Texture2D*)&params[48] = IconTexture;
		*cast(float*)&params[52] = Alpha;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45459], params.ptr, cast(void*)0);
	}
	final bool CheckCrosshairOnFriendly()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45482], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void ClearCrosshairOnFriendly()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45495], cast(void*)0, cast(void*)0);
	}
	final void DrawShadowedTile(Texture2D Tex, float X, float Y, float XL, float YL, float U, float V, float UL, float VL, UObject.Color TileColor, bool bScaleToRes)
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
		*cast(bool*)&params[40] = bScaleToRes;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45496], params.ptr, cast(void*)0);
	}
	final void DrawShadowedStretchedTile(Texture2D Tex, float X, float Y, float XL, float YL, float U, float V, float UL, float VL, UObject.Color TileColor, bool bScaleToRes)
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
		*cast(bool*)&params[40] = bScaleToRes;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45509], params.ptr, cast(void*)0);
	}
	final void DrawShadowedRotatedTile(Texture2D Tex, Rotator Rot, float X, float Y, float XL, float YL, float U, float V, float UL, float VL, UObject.Color TileColor, bool bScaleToRes)
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
		*cast(bool*)&params[52] = bScaleToRes;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45523], params.ptr, cast(void*)0);
	}
}
