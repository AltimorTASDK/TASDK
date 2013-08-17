module UnrealScript.UTGame.UTMapInfo;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTMapInfo")()); }
	private static __gshared UTMapInfo mDefaultProperties;
	@property final static UTMapInfo DefaultProperties() { mixin(MGDPC!(UTMapInfo, "UTMapInfo UTGame.Default__UTMapInfo")()); }
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
			ScriptFunction VerifyMapExtent() { mixin(MGF!("mVerifyMapExtent", "Function UTGame.UTMapInfo.VerifyMapExtent")()); }
			ScriptFunction FindObjectives() { mixin(MGF!("mFindObjectives", "Function UTGame.UTMapInfo.FindObjectives")()); }
			ScriptFunction RenderLinks() { mixin(MGF!("mRenderLinks", "Function UTGame.UTMapInfo.RenderLinks")()); }
			ScriptFunction RenderAdditionalInformation() { mixin(MGF!("mRenderAdditionalInformation", "Function UTGame.UTMapInfo.RenderAdditionalInformation")()); }
			ScriptFunction UpdateNodes() { mixin(MGF!("mUpdateNodes", "Function UTGame.UTMapInfo.UpdateNodes")()); }
			ScriptFunction DrawMap() { mixin(MGF!("mDrawMap", "Function UTGame.UTMapInfo.DrawMap")()); }
			ScriptFunction AddKeyVehicle() { mixin(MGF!("mAddKeyVehicle", "Function UTGame.UTMapInfo.AddKeyVehicle")()); }
			ScriptFunction DrawRotatedTile() { mixin(MGF!("mDrawRotatedTile", "Function UTGame.UTMapInfo.DrawRotatedTile")()); }
			ScriptFunction DrawRotatedMaterialTile() { mixin(MGF!("mDrawRotatedMaterialTile", "Function UTGame.UTMapInfo.DrawRotatedMaterialTile")()); }
			ScriptFunction UpdateHUDLocation() { mixin(MGF!("mUpdateHUDLocation", "Function UTGame.UTMapInfo.UpdateHUDLocation")()); }
			ScriptFunction ChangeMapRotation() { mixin(MGF!("mChangeMapRotation", "Function UTGame.UTMapInfo.ChangeMapRotation")()); }
			ScriptFunction DrawMapImage() { mixin(MGF!("mDrawMapImage", "Function UTGame.UTMapInfo.DrawMapImage")()); }
			ScriptFunction GetActorHudLocation() { mixin(MGF!("mGetActorHudLocation", "Function UTGame.UTMapInfo.GetActorHudLocation")()); }
		}
	}
	@property final
	{
		auto ref
		{
			Texture MapTexture() { mixin(MGPC!("Texture", 76)()); }
			Vector MapCenter() { mixin(MGPC!("Vector", 84)()); }
			float MapExtent() { mixin(MGPC!("float", 96)()); }
			float MapScale() { mixin(MGPC!("float", 216)()); }
			int RecommendedPlayersMax() { mixin(MGPC!("int", 68)()); }
			int RecommendedPlayersMin() { mixin(MGPC!("int", 64)()); }
			ScriptArray!(UTGameObjective) Objectives() { mixin(MGPC!("ScriptArray!(UTGameObjective)", 112)()); }
			ScriptArray!(UTGameObjective) Sensors() { mixin(MGPC!("ScriptArray!(UTGameObjective)", 252)()); }
			UDKVehicle KeyVehicles() { mixin(MGPC!("UDKVehicle", 244)()); }
			UIRoot.TextureCoordinates PlayerIconCoords() { mixin(MGPC!("UIRoot.TextureCoordinates", 228)()); }
			MaterialInstanceConstant GreenIconMaterialInstance() { mixin(MGPC!("MaterialInstanceConstant", 224)()); }
			float ColorPercent() { mixin(MGPC!("float", 220)()); }
			Vector CenterPos() { mixin(MGPC!("Vector", 204)()); }
			float RadarRange() { mixin(MGPC!("float", 200)()); }
			float RadarWidth() { mixin(MGPC!("float", 196)()); }
			Vector ActualMapCenter() { mixin(MGPC!("Vector", 184)()); }
			float UseableRadius() { mixin(MGPC!("float", 180)()); }
			Material MapMaterialReference() { mixin(MGPC!("Material", 176)()); }
			MaterialInstanceConstant MapMaterialInstance() { mixin(MGPC!("MaterialInstanceConstant", 172)()); }
			int CurrentMapRotYaw() { mixin(MGPC!("int", 168)()); }
			Vector MapRotY() { mixin(MGPC!("Vector", 156)()); }
			Vector MapRotX() { mixin(MGPC!("Vector", 144)()); }
			Texture2D HUDIconsT() { mixin(MGPC!("Texture2D", 140)()); }
			Material HudIcons() { mixin(MGPC!("Material", 136)()); }
			Actor WatchedActor() { mixin(MGPC!("Actor", 132)()); }
			Actor CurrentActor() { mixin(MGPC!("Actor", 128)()); }
			float DefaultMapSize() { mixin(MGPC!("float", 108)()); }
			float RotatingMiniMapRange() { mixin(MGPC!("float", 104)()); }
			int MapYaw() { mixin(MGPC!("int", 100)()); }
			float MapTextureYaw() { mixin(MGPC!("float", 80)()); }
			UTMapMusicInfo MapMusicInfo() { mixin(MGPC!("UTMapMusicInfo", 72)()); }
		}
		bool bMapUpToDate() { mixin(MGBPC!(124, 0x1)()); }
		bool bMapUpToDate(bool val) { mixin(MSBPC!(124, 0x1)()); }
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
