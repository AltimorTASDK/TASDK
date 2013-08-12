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
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTMapInfo")); }
	private static __gshared UTMapInfo mDefaultProperties;
	@property final static UTMapInfo DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTMapInfo)("UTMapInfo UTGame.Default__UTMapInfo")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mVerifyMapExtent;
			ScriptFunction mFindObjectives;
			ScriptFunction mRenderLinks;
			ScriptFunction mRenderAdditionalInformation;
			ScriptFunction mUpdateNodes;
			ScriptFunction mDrawMap;
			ScriptFunction mAddKeyVehicle;
			ScriptFunction mDrawRotatedTile;
			ScriptFunction mDrawRotatedMaterialTile;
			ScriptFunction mUpdateHUDLocation;
			ScriptFunction mChangeMapRotation;
			ScriptFunction mDrawMapImage;
			ScriptFunction mGetActorHudLocation;
		}
		public @property static final
		{
			ScriptFunction VerifyMapExtent() { return mVerifyMapExtent ? mVerifyMapExtent : (mVerifyMapExtent = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTMapInfo.VerifyMapExtent")); }
			ScriptFunction FindObjectives() { return mFindObjectives ? mFindObjectives : (mFindObjectives = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTMapInfo.FindObjectives")); }
			ScriptFunction RenderLinks() { return mRenderLinks ? mRenderLinks : (mRenderLinks = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTMapInfo.RenderLinks")); }
			ScriptFunction RenderAdditionalInformation() { return mRenderAdditionalInformation ? mRenderAdditionalInformation : (mRenderAdditionalInformation = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTMapInfo.RenderAdditionalInformation")); }
			ScriptFunction UpdateNodes() { return mUpdateNodes ? mUpdateNodes : (mUpdateNodes = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTMapInfo.UpdateNodes")); }
			ScriptFunction DrawMap() { return mDrawMap ? mDrawMap : (mDrawMap = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTMapInfo.DrawMap")); }
			ScriptFunction AddKeyVehicle() { return mAddKeyVehicle ? mAddKeyVehicle : (mAddKeyVehicle = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTMapInfo.AddKeyVehicle")); }
			ScriptFunction DrawRotatedTile() { return mDrawRotatedTile ? mDrawRotatedTile : (mDrawRotatedTile = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTMapInfo.DrawRotatedTile")); }
			ScriptFunction DrawRotatedMaterialTile() { return mDrawRotatedMaterialTile ? mDrawRotatedMaterialTile : (mDrawRotatedMaterialTile = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTMapInfo.DrawRotatedMaterialTile")); }
			ScriptFunction UpdateHUDLocation() { return mUpdateHUDLocation ? mUpdateHUDLocation : (mUpdateHUDLocation = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTMapInfo.UpdateHUDLocation")); }
			ScriptFunction ChangeMapRotation() { return mChangeMapRotation ? mChangeMapRotation : (mChangeMapRotation = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTMapInfo.ChangeMapRotation")); }
			ScriptFunction DrawMapImage() { return mDrawMapImage ? mDrawMapImage : (mDrawMapImage = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTMapInfo.DrawMapImage")); }
			ScriptFunction GetActorHudLocation() { return mGetActorHudLocation ? mGetActorHudLocation : (mGetActorHudLocation = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTMapInfo.GetActorHudLocation")); }
		}
	}
	@property final
	{
		auto ref
		{
			Texture MapTexture() { return *cast(Texture*)(cast(size_t)cast(void*)this + 76); }
			Vector MapCenter() { return *cast(Vector*)(cast(size_t)cast(void*)this + 84); }
			float MapExtent() { return *cast(float*)(cast(size_t)cast(void*)this + 96); }
			float MapScale() { return *cast(float*)(cast(size_t)cast(void*)this + 216); }
			int RecommendedPlayersMax() { return *cast(int*)(cast(size_t)cast(void*)this + 68); }
			int RecommendedPlayersMin() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
			ScriptArray!(UTGameObjective) Objectives() { return *cast(ScriptArray!(UTGameObjective)*)(cast(size_t)cast(void*)this + 112); }
			ScriptArray!(UTGameObjective) Sensors() { return *cast(ScriptArray!(UTGameObjective)*)(cast(size_t)cast(void*)this + 252); }
			UDKVehicle KeyVehicles() { return *cast(UDKVehicle*)(cast(size_t)cast(void*)this + 244); }
			UIRoot.TextureCoordinates PlayerIconCoords() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 228); }
			MaterialInstanceConstant GreenIconMaterialInstance() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 224); }
			float ColorPercent() { return *cast(float*)(cast(size_t)cast(void*)this + 220); }
			Vector CenterPos() { return *cast(Vector*)(cast(size_t)cast(void*)this + 204); }
			float RadarRange() { return *cast(float*)(cast(size_t)cast(void*)this + 200); }
			float RadarWidth() { return *cast(float*)(cast(size_t)cast(void*)this + 196); }
			Vector ActualMapCenter() { return *cast(Vector*)(cast(size_t)cast(void*)this + 184); }
			float UseableRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 180); }
			Material MapMaterialReference() { return *cast(Material*)(cast(size_t)cast(void*)this + 176); }
			MaterialInstanceConstant MapMaterialInstance() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 172); }
			int CurrentMapRotYaw() { return *cast(int*)(cast(size_t)cast(void*)this + 168); }
			Vector MapRotY() { return *cast(Vector*)(cast(size_t)cast(void*)this + 156); }
			Vector MapRotX() { return *cast(Vector*)(cast(size_t)cast(void*)this + 144); }
			Texture2D HUDIconsT() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 140); }
			Material HudIcons() { return *cast(Material*)(cast(size_t)cast(void*)this + 136); }
			Actor WatchedActor() { return *cast(Actor*)(cast(size_t)cast(void*)this + 132); }
			Actor CurrentActor() { return *cast(Actor*)(cast(size_t)cast(void*)this + 128); }
			float DefaultMapSize() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
			float RotatingMiniMapRange() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
			int MapYaw() { return *cast(int*)(cast(size_t)cast(void*)this + 100); }
			float MapTextureYaw() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
			UTMapMusicInfo MapMusicInfo() { return *cast(UTMapMusicInfo*)(cast(size_t)cast(void*)this + 72); }
		}
		bool bMapUpToDate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 124) & 0x1) != 0; }
		bool bMapUpToDate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 124) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 124) &= ~0x1; } return val; }
	}
final:
	void VerifyMapExtent()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.VerifyMapExtent, cast(void*)0, cast(void*)0);
	}
	void FindObjectives()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FindObjectives, cast(void*)0, cast(void*)0);
	}
	void RenderLinks(Canvas pCanvas, UTPlayerController PlayerOwner)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		*cast(UTPlayerController*)&params[4] = PlayerOwner;
		(cast(ScriptObject)this).ProcessEvent(Functions.RenderLinks, params.ptr, cast(void*)0);
	}
	void RenderAdditionalInformation(Canvas pCanvas, UTPlayerController PlayerOwner)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		*cast(UTPlayerController*)&params[4] = PlayerOwner;
		(cast(ScriptObject)this).ProcessEvent(Functions.RenderAdditionalInformation, params.ptr, cast(void*)0);
	}
	void UpdateNodes(UTPlayerController PlayerOwner)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = PlayerOwner;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateNodes, params.ptr, cast(void*)0);
	}
	void DrawMap(Canvas pCanvas, UTPlayerController PlayerOwner, float XPos, float YPos, float Width, float Height, bool bFullDetail, float AspectRatio)
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
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawMap, params.ptr, cast(void*)0);
	}
	void AddKeyVehicle(UTVehicle V)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTVehicle*)params.ptr = V;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddKeyVehicle, params.ptr, cast(void*)0);
	}
	void DrawRotatedTile(Canvas pCanvas, Texture2D T, Vector MapLocation, int InYaw, float IconScale, UIRoot.TextureCoordinates TexCoords, UObject.LinearColor DrawColor)
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
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawRotatedTile, params.ptr, cast(void*)0);
	}
	void DrawRotatedMaterialTile(Canvas pCanvas, MaterialInstanceConstant M, Vector MapLocation, int InYaw, float XWidth, float YWidth, float XStart, float YStart, float XLength, float YLength)
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
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawRotatedMaterialTile, params.ptr, cast(void*)0);
	}
	Vector UpdateHUDLocation(Vector InLocation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = InLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateHUDLocation, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[12];
	}
	void ChangeMapRotation(Rotator NewMapRotation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Rotator*)params.ptr = NewMapRotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.ChangeMapRotation, params.ptr, cast(void*)0);
	}
	void DrawMapImage(Canvas pCanvas, float X, float Y, float W, float H, float PlayerYaw, float BkgImgScaling)
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
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawMapImage, params.ptr, cast(void*)0);
	}
	Vector GetActorHudLocation(Actor CActor)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Actor*)params.ptr = CActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetActorHudLocation, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
}
