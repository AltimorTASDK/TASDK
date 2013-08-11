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
public extern(D):
	@property final
	{
		auto ref
		{
			UObject.Color BlackColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 1492); }
			Texture2D IconHudTexture() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1468); }
			float ResolutionScale() { return *cast(float*)(cast(size_t)cast(void*)this + 1508); }
			float LastPickupTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1488); }
			float ConfiguredCrosshairScaling() { return *cast(float*)(cast(size_t)cast(void*)this + 1484); }
			UObject.Color LightGreenColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 1504); }
			int ViewY() { return *cast(int*)(cast(size_t)cast(void*)this + 1520); }
			int ViewX() { return *cast(int*)(cast(size_t)cast(void*)this + 1516); }
			float ResolutionScaleX() { return *cast(float*)(cast(size_t)cast(void*)this + 1512); }
			UObject.Color LightGoldColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 1500); }
			UObject.Color GoldColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 1496); }
			ScriptString ConsoleIconFontClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1472); }
			float LastTimeTooltipDrawn() { return *cast(float*)(cast(size_t)cast(void*)this + 1464); }
			UIRoot.TextureCoordinates ToolTipSepCoords() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 1448); }
			UTGameReplicationInfo UTGRI() { return *cast(UTGameReplicationInfo*)(cast(size_t)cast(void*)this + 1440); }
			UTPlayerController UTPlayerOwner() { return *cast(UTPlayerController*)(cast(size_t)cast(void*)this + 1436); }
			ScriptClass MusicManagerClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1432); }
			GFxUI_PauseMenu PauseMenuMovie() { return *cast(GFxUI_PauseMenu*)(cast(size_t)cast(void*)this + 1428); }
		}
		bool bCrosshairShow() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1444) & 0x4) != 0; }
		bool bCrosshairShow(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1444) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1444) &= ~0x4; } return val; }
		bool bCrosshairOnFriendly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1444) & 0x8) != 0; }
		bool bCrosshairOnFriendly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1444) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1444) &= ~0x8; } return val; }
		bool bGreenCrosshair() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1444) & 0x10) != 0; }
		bool bGreenCrosshair(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1444) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1444) &= ~0x10; } return val; }
		bool bIsSplitScreen() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1444) & 0x1) != 0; }
		bool bIsSplitScreen(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1444) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1444) &= ~0x1; } return val; }
		bool bEnableActorOverlays() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1444) & 0x2) != 0; }
		bool bEnableActorOverlays(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1444) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1444) &= ~0x2; } return val; }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45438], cast(void*)0, cast(void*)0);
	}
	void Timer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45441], cast(void*)0, cast(void*)0);
	}
	void ShowMenu()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45442], cast(void*)0, cast(void*)0);
	}
	void ResolutionChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45443], cast(void*)0, cast(void*)0);
	}
	void DisplayHit(Vector HitDir, int Damage, ScriptClass pDamageType)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = HitDir;
		*cast(int*)&params[12] = Damage;
		*cast(ScriptClass*)&params[16] = pDamageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45445], params.ptr, cast(void*)0);
	}
	void PostRender()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45449], cast(void*)0, cast(void*)0);
	}
	void RemoveMovies()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45450], cast(void*)0, cast(void*)0);
	}
	void SetVisible(bool bNewVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45451], params.ptr, cast(void*)0);
	}
	void CloseOtherMenus()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45453], cast(void*)0, cast(void*)0);
	}
	void TogglePauseMenu()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45454], cast(void*)0, cast(void*)0);
	}
	void CompletePauseMenuClose()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45455], cast(void*)0, cast(void*)0);
	}
	void ReleaseShowScores()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45456], cast(void*)0, cast(void*)0);
	}
	int GetLocalPlayerOwnerIndex()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45457], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void DrawToolTip(Canvas Cvs, PlayerController PC, ScriptString Command, float X, float Y, float U, float V, float UL, float VL, float ResScale, Texture2D IconTexture, float Alpha)
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
	bool CheckCrosshairOnFriendly()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45482], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ClearCrosshairOnFriendly()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45495], cast(void*)0, cast(void*)0);
	}
	void DrawShadowedTile(Texture2D Tex, float X, float Y, float XL, float YL, float U, float V, float UL, float VL, UObject.Color TileColor, bool bScaleToRes)
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
	void DrawShadowedStretchedTile(Texture2D Tex, float X, float Y, float XL, float YL, float U, float V, float UL, float VL, UObject.Color TileColor, bool bScaleToRes)
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
	void DrawShadowedRotatedTile(Texture2D Tex, Rotator Rot, float X, float Y, float XL, float YL, float U, float V, float UL, float VL, UObject.Color TileColor, bool bScaleToRes)
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
