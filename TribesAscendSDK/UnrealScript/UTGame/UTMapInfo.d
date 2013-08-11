module UnrealScript.UTGame.UTMapInfo;

import ScriptClasses;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.Canvas;
import UnrealScript.UTGame.UTVehicle;
import UnrealScript.UDKBase.UDKVehicle;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Engine.Actor;
import UnrealScript.UTGame.UTPlayerController;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.UIRoot;
import UnrealScript.UDKBase.UDKMapInfo;
import UnrealScript.Engine.Texture;
import UnrealScript.UTGame.UTGameObjective;
import UnrealScript.Engine.Material;
import UnrealScript.UTGame.UTMapMusicInfo;

extern(C++) interface UTMapInfo : UDKMapInfo
{
	public @property final auto ref Texture MapTexture() { return *cast(Texture*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref Vector MapCenter() { return *cast(Vector*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref float MapExtent() { return *cast(float*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref float MapScale() { return *cast(float*)(cast(size_t)cast(void*)this + 216); }
	public @property final auto ref int RecommendedPlayersMax() { return *cast(int*)(cast(size_t)cast(void*)this + 68); }
	public @property final auto ref int RecommendedPlayersMin() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
	public @property final auto ref ScriptArray!(UTGameObjective) Objectives() { return *cast(ScriptArray!(UTGameObjective)*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref ScriptArray!(UTGameObjective) Sensors() { return *cast(ScriptArray!(UTGameObjective)*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref UDKVehicle KeyVehicles() { return *cast(UDKVehicle*)(cast(size_t)cast(void*)this + 244); }
	public @property final auto ref UIRoot.TextureCoordinates PlayerIconCoords() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 228); }
	public @property final auto ref MaterialInstanceConstant GreenIconMaterialInstance() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 224); }
	public @property final auto ref float ColorPercent() { return *cast(float*)(cast(size_t)cast(void*)this + 220); }
	public @property final auto ref Vector CenterPos() { return *cast(Vector*)(cast(size_t)cast(void*)this + 204); }
	public @property final auto ref float RadarRange() { return *cast(float*)(cast(size_t)cast(void*)this + 200); }
	public @property final auto ref float RadarWidth() { return *cast(float*)(cast(size_t)cast(void*)this + 196); }
	public @property final auto ref Vector ActualMapCenter() { return *cast(Vector*)(cast(size_t)cast(void*)this + 184); }
	public @property final auto ref float UseableRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 180); }
	public @property final auto ref Material MapMaterialReference() { return *cast(Material*)(cast(size_t)cast(void*)this + 176); }
	public @property final auto ref MaterialInstanceConstant MapMaterialInstance() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 172); }
	public @property final auto ref int CurrentMapRotYaw() { return *cast(int*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref Vector MapRotY() { return *cast(Vector*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref Vector MapRotX() { return *cast(Vector*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref Texture2D HUDIconsT() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 140); }
	public @property final auto ref Material HudIcons() { return *cast(Material*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref Actor WatchedActor() { return *cast(Actor*)(cast(size_t)cast(void*)this + 132); }
	public @property final auto ref Actor CurrentActor() { return *cast(Actor*)(cast(size_t)cast(void*)this + 128); }
	public @property final bool bMapUpToDate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 124) & 0x1) != 0; }
	public @property final bool bMapUpToDate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 124) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 124) &= ~0x1; } return val; }
	public @property final auto ref float DefaultMapSize() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref float RotatingMiniMapRange() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref int MapYaw() { return *cast(int*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref float MapTextureYaw() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref UTMapMusicInfo MapMusicInfo() { return *cast(UTMapMusicInfo*)(cast(size_t)cast(void*)this + 72); }
	final void VerifyMapExtent()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48361], cast(void*)0, cast(void*)0);
	}
	final void FindObjectives()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48365], cast(void*)0, cast(void*)0);
	}
	final void RenderLinks(Canvas pCanvas, UTPlayerController PlayerOwner)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		*cast(UTPlayerController*)&params[4] = PlayerOwner;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48367], params.ptr, cast(void*)0);
	}
	final void RenderAdditionalInformation(Canvas pCanvas, UTPlayerController PlayerOwner)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		*cast(UTPlayerController*)&params[4] = PlayerOwner;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48374], params.ptr, cast(void*)0);
	}
	final void UpdateNodes(UTPlayerController PlayerOwner)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = PlayerOwner;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48378], params.ptr, cast(void*)0);
	}
	final void DrawMap(Canvas pCanvas, UTPlayerController PlayerOwner, float XPos, float YPos, float Width, float Height, bool bFullDetail, float AspectRatio)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		*cast(UTPlayerController*)&params[4] = PlayerOwner;
		*cast(float*)&params[8] = XPos;
		*cast(float*)&params[12] = YPos;
		*cast(float*)&params[16] = Width;
		*cast(float*)&params[20] = Height;
		*cast(bool*)&params[24] = bFullDetail;
		*cast(float*)&params[28] = AspectRatio;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48381], params.ptr, cast(void*)0);
	}
	final void AddKeyVehicle(UTVehicle V)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTVehicle*)params.ptr = V;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48421], params.ptr, cast(void*)0);
	}
	final void DrawRotatedTile(Canvas pCanvas, Texture2D T, Vector MapLocation, int InYaw, float IconScale, UIRoot.TextureCoordinates TexCoords, UObject.LinearColor DrawColor)
	{
		ubyte params[60];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		*cast(Texture2D*)&params[4] = T;
		*cast(Vector*)&params[8] = MapLocation;
		*cast(int*)&params[20] = InYaw;
		*cast(float*)&params[24] = IconScale;
		*cast(UIRoot.TextureCoordinates*)&params[28] = TexCoords;
		*cast(UObject.LinearColor*)&params[44] = DrawColor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48424], params.ptr, cast(void*)0);
	}
	final void DrawRotatedMaterialTile(Canvas pCanvas, MaterialInstanceConstant M, Vector MapLocation, int InYaw, float XWidth, float YWidth, float XStart, float YStart, float XLength, float YLength)
	{
		ubyte params[48];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		*cast(MaterialInstanceConstant*)&params[4] = M;
		*cast(Vector*)&params[8] = MapLocation;
		*cast(int*)&params[20] = InYaw;
		*cast(float*)&params[24] = XWidth;
		*cast(float*)&params[28] = YWidth;
		*cast(float*)&params[32] = XStart;
		*cast(float*)&params[36] = YStart;
		*cast(float*)&params[40] = XLength;
		*cast(float*)&params[44] = YLength;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48435], params.ptr, cast(void*)0);
	}
	final Vector UpdateHUDLocation(Vector InLocation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = InLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48447], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[12];
	}
	final void ChangeMapRotation(Rotator NewMapRotation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Rotator*)params.ptr = NewMapRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48453], params.ptr, cast(void*)0);
	}
	final void DrawMapImage(Canvas pCanvas, float X, float Y, float W, float H, float PlayerYaw, float BkgImgScaling)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		*cast(float*)&params[4] = X;
		*cast(float*)&params[8] = Y;
		*cast(float*)&params[12] = W;
		*cast(float*)&params[16] = H;
		*cast(float*)&params[20] = PlayerYaw;
		*cast(float*)&params[24] = BkgImgScaling;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48456], params.ptr, cast(void*)0);
	}
	final Vector GetActorHudLocation(Actor CActor)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Actor*)params.ptr = CActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48466], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
}
