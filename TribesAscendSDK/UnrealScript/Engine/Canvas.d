module UnrealScript.Engine.Canvas;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.Texture;
import UnrealScript.Engine.Font;
import UnrealScript.Engine.EngineTypes;

extern(C++) interface Canvas : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.Canvas")()); }
	private static __gshared Canvas mDefaultProperties;
	@property final static Canvas DefaultProperties() { mixin(MGDPC!(Canvas, "Canvas Engine.Default__Canvas")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetPos;
			ScriptFunction mSetDrawColor;
			ScriptFunction mDrawText;
			ScriptFunction mProject;
			ScriptFunction mStrLen;
			ScriptFunction mDrawTile;
			ScriptFunction mPreOptimizeDrawTiles;
			ScriptFunction mDrawMaterialTile;
			ScriptFunction mDrawRotatedTile;
			ScriptFunction mDrawRotatedMaterialTile;
			ScriptFunction mDrawTileStretched;
			ScriptFunction mDrawTris;
			ScriptFunction mCreateFontRenderInfo;
			ScriptFunction mTextSize;
			ScriptFunction mDeProject;
			ScriptFunction mPushTranslationMatrix;
			ScriptFunction mPopTransform;
			ScriptFunction mReset;
			ScriptFunction mSetOrigin;
			ScriptFunction mSetClip;
			ScriptFunction mDrawTexture;
			ScriptFunction mDrawTextureBlended;
			ScriptFunction mMakeIcon;
			ScriptFunction mDrawIcon;
			ScriptFunction mDrawRect;
			ScriptFunction mDrawBox;
			ScriptFunction mSetDrawColorStruct;
			ScriptFunction mDraw2DLine;
			ScriptFunction mDrawTextureLine;
			ScriptFunction mDrawTextureDoubleLine;
			ScriptFunction mDrawDebugGraph;
		}
		public @property static final
		{
			ScriptFunction SetPos() { mixin(MGF!("mSetPos", "Function Engine.Canvas.SetPos")()); }
			ScriptFunction SetDrawColor() { mixin(MGF!("mSetDrawColor", "Function Engine.Canvas.SetDrawColor")()); }
			ScriptFunction DrawText() { mixin(MGF!("mDrawText", "Function Engine.Canvas.DrawText")()); }
			ScriptFunction Project() { mixin(MGF!("mProject", "Function Engine.Canvas.Project")()); }
			ScriptFunction StrLen() { mixin(MGF!("mStrLen", "Function Engine.Canvas.StrLen")()); }
			ScriptFunction DrawTile() { mixin(MGF!("mDrawTile", "Function Engine.Canvas.DrawTile")()); }
			ScriptFunction PreOptimizeDrawTiles() { mixin(MGF!("mPreOptimizeDrawTiles", "Function Engine.Canvas.PreOptimizeDrawTiles")()); }
			ScriptFunction DrawMaterialTile() { mixin(MGF!("mDrawMaterialTile", "Function Engine.Canvas.DrawMaterialTile")()); }
			ScriptFunction DrawRotatedTile() { mixin(MGF!("mDrawRotatedTile", "Function Engine.Canvas.DrawRotatedTile")()); }
			ScriptFunction DrawRotatedMaterialTile() { mixin(MGF!("mDrawRotatedMaterialTile", "Function Engine.Canvas.DrawRotatedMaterialTile")()); }
			ScriptFunction DrawTileStretched() { mixin(MGF!("mDrawTileStretched", "Function Engine.Canvas.DrawTileStretched")()); }
			ScriptFunction DrawTris() { mixin(MGF!("mDrawTris", "Function Engine.Canvas.DrawTris")()); }
			ScriptFunction CreateFontRenderInfo() { mixin(MGF!("mCreateFontRenderInfo", "Function Engine.Canvas.CreateFontRenderInfo")()); }
			ScriptFunction TextSize() { mixin(MGF!("mTextSize", "Function Engine.Canvas.TextSize")()); }
			ScriptFunction DeProject() { mixin(MGF!("mDeProject", "Function Engine.Canvas.DeProject")()); }
			ScriptFunction PushTranslationMatrix() { mixin(MGF!("mPushTranslationMatrix", "Function Engine.Canvas.PushTranslationMatrix")()); }
			ScriptFunction PopTransform() { mixin(MGF!("mPopTransform", "Function Engine.Canvas.PopTransform")()); }
			ScriptFunction Reset() { mixin(MGF!("mReset", "Function Engine.Canvas.Reset")()); }
			ScriptFunction SetOrigin() { mixin(MGF!("mSetOrigin", "Function Engine.Canvas.SetOrigin")()); }
			ScriptFunction SetClip() { mixin(MGF!("mSetClip", "Function Engine.Canvas.SetClip")()); }
			ScriptFunction DrawTexture() { mixin(MGF!("mDrawTexture", "Function Engine.Canvas.DrawTexture")()); }
			ScriptFunction DrawTextureBlended() { mixin(MGF!("mDrawTextureBlended", "Function Engine.Canvas.DrawTextureBlended")()); }
			ScriptFunction MakeIcon() { mixin(MGF!("mMakeIcon", "Function Engine.Canvas.MakeIcon")()); }
			ScriptFunction DrawIcon() { mixin(MGF!("mDrawIcon", "Function Engine.Canvas.DrawIcon")()); }
			ScriptFunction DrawRect() { mixin(MGF!("mDrawRect", "Function Engine.Canvas.DrawRect")()); }
			ScriptFunction DrawBox() { mixin(MGF!("mDrawBox", "Function Engine.Canvas.DrawBox")()); }
			ScriptFunction SetDrawColorStruct() { mixin(MGF!("mSetDrawColorStruct", "Function Engine.Canvas.SetDrawColorStruct")()); }
			ScriptFunction Draw2DLine() { mixin(MGF!("mDraw2DLine", "Function Engine.Canvas.Draw2DLine")()); }
			ScriptFunction DrawTextureLine() { mixin(MGF!("mDrawTextureLine", "Function Engine.Canvas.DrawTextureLine")()); }
			ScriptFunction DrawTextureDoubleLine() { mixin(MGF!("mDrawTextureDoubleLine", "Function Engine.Canvas.DrawTextureDoubleLine")()); }
			ScriptFunction DrawDebugGraph() { mixin(MGF!("mDrawDebugGraph", "Function Engine.Canvas.DrawDebugGraph")()); }
		}
	}
	struct CanvasIcon
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.Canvas.CanvasIcon")()); }
		@property final auto ref
		{
			float VL() { mixin(MGPS!(float, 16)()); }
			float UL() { mixin(MGPS!(float, 12)()); }
			float V() { mixin(MGPS!(float, 8)()); }
			float U() { mixin(MGPS!(float, 4)()); }
			// WARNING: Property 'Texture' has the same name as a defined type!
		}
	}
	struct DepthFieldGlowInfo
	{
		private ubyte __buffer__[36];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.Canvas.DepthFieldGlowInfo")()); }
		@property final
		{
			auto ref
			{
				UObject.Vector2D GlowInnerRadius() { mixin(MGPS!(UObject.Vector2D, 28)()); }
				UObject.Vector2D GlowOuterRadius() { mixin(MGPS!(UObject.Vector2D, 20)()); }
				UObject.LinearColor GlowColor() { mixin(MGPS!(UObject.LinearColor, 4)()); }
			}
			bool bEnableGlow() { mixin(MGBPS!(0, 0x1)()); }
			bool bEnableGlow(bool val) { mixin(MSBPS!(0, 0x1)()); }
		}
	}
	struct FontRenderInfo
	{
		private ubyte __buffer__[40];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.Canvas.FontRenderInfo")()); }
		@property final
		{
			@property final auto ref Canvas.DepthFieldGlowInfo GlowInfo() { mixin(MGPS!(Canvas.DepthFieldGlowInfo, 4)()); }
			bool bEnableShadow() { mixin(MGBPS!(0, 0x2)()); }
			bool bEnableShadow(bool val) { mixin(MSBPS!(0, 0x2)()); }
			bool bClipText() { mixin(MGBPS!(0, 0x1)()); }
			bool bClipText(bool val) { mixin(MSBPS!(0, 0x1)()); }
		}
	}
	struct CanvasUVTri
	{
		private ubyte __buffer__[48];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.Canvas.CanvasUVTri")()); }
		@property final auto ref
		{
			UObject.Vector2D V2_UV() { mixin(MGPS!(UObject.Vector2D, 40)()); }
			UObject.Vector2D V2_Pos() { mixin(MGPS!(UObject.Vector2D, 32)()); }
			UObject.Vector2D V1_UV() { mixin(MGPS!(UObject.Vector2D, 24)()); }
			UObject.Vector2D V1_Pos() { mixin(MGPS!(UObject.Vector2D, 16)()); }
			UObject.Vector2D V0_UV() { mixin(MGPS!(UObject.Vector2D, 8)()); }
			UObject.Vector2D V0_Pos() { mixin(MGPS!(UObject.Vector2D, 0)()); }
		}
	}
	struct TextSizingParameters
	{
		private ubyte __buffer__[40];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.Canvas.TextSizingParameters")()); }
		@property final auto ref
		{
			float ViewportHeight() { mixin(MGPS!(float, 36)()); }
			UObject.Vector2D SpacingAdjust() { mixin(MGPS!(UObject.Vector2D, 28)()); }
			Font DrawFont() { mixin(MGPS!(Font, 24)()); }
			UObject.Vector2D Scaling() { mixin(MGPS!(UObject.Vector2D, 16)()); }
			float DrawYL() { mixin(MGPS!(float, 12)()); }
			float DrawXL() { mixin(MGPS!(float, 8)()); }
			float DrawY() { mixin(MGPS!(float, 4)()); }
			float DrawX() { mixin(MGPS!(float, 0)()); }
		}
	}
	struct WrappedStringElement
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.Canvas.WrappedStringElement")()); }
		@property final auto ref
		{
			UObject.Vector2D LineExtent() { mixin(MGPS!(UObject.Vector2D, 12)()); }
			ScriptString Value() { mixin(MGPS!(ScriptString, 0)()); }
		}
	}
	@property final
	{
		auto ref
		{
			UObject.Color DrawColor() { mixin(MGPC!(UObject.Color, 96)()); }
			// WARNING: Property 'Font' has the same name as a defined type!
			Texture2D DefaultTexture() { mixin(MGPC!(Texture2D, 144)()); }
			UObject.Plane ColorModulate() { mixin(MGPC!(UObject.Plane, 128)()); }
			UObject.Pointer SceneView() { mixin(MGPC!(UObject.Pointer, 116)()); }
			// WARNING: Property 'Canvas' has the same name as a defined type!
			int SizeY() { mixin(MGPC!(int, 108)()); }
			int SizeX() { mixin(MGPC!(int, 104)()); }
			float CurYL() { mixin(MGPC!(float, 92)()); }
			float CurZ() { mixin(MGPC!(float, 88)()); }
			float CurY() { mixin(MGPC!(float, 84)()); }
			float CurX() { mixin(MGPC!(float, 80)()); }
			float ClipY() { mixin(MGPC!(float, 76)()); }
			float ClipX() { mixin(MGPC!(float, 72)()); }
			float OrgY() { mixin(MGPC!(float, 68)()); }
			float OrgX() { mixin(MGPC!(float, 64)()); }
		}
		bool bNoSmooth() { mixin(MGBPC!(100, 0x2)()); }
		bool bNoSmooth(bool val) { mixin(MSBPC!(100, 0x2)()); }
		bool bCenter() { mixin(MGBPC!(100, 0x1)()); }
		bool bCenter(bool val) { mixin(MSBPC!(100, 0x1)()); }
	}
final:
	void SetPos(float PosX, float PosY, float PosZ)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = PosX;
		*cast(float*)&params[4] = PosY;
		*cast(float*)&params[8] = PosZ;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPos, params.ptr, cast(void*)0);
	}
	void SetDrawColor(ubyte R, ubyte G, ubyte B, ubyte A)
	{
		ubyte params[4];
		params[] = 0;
		params[0] = R;
		params[1] = G;
		params[2] = B;
		params[3] = A;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetDrawColor, params.ptr, cast(void*)0);
	}
	void DrawText(ScriptString Text, bool CR, float XScale, float YScale, const Canvas.FontRenderInfo* RenderInfo)
	{
		ubyte params[64];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		*cast(bool*)&params[12] = CR;
		*cast(float*)&params[16] = XScale;
		*cast(float*)&params[20] = YScale;
		*cast(Canvas.FontRenderInfo*)&params[24] = RenderInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawText, params.ptr, cast(void*)0);
		*RenderInfo = *cast(Canvas.FontRenderInfo*)&params[24];
	}
	Vector Project(Vector Location)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = Location;
		(cast(ScriptObject)this).ProcessEvent(Functions.Project, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[12];
	}
	void StrLen(ScriptString String, ref float XL, ref float YL)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = String;
		*cast(float*)&params[12] = XL;
		*cast(float*)&params[16] = YL;
		(cast(ScriptObject)this).ProcessEvent(Functions.StrLen, params.ptr, cast(void*)0);
		*XL = *cast(float*)&params[12];
		*YL = *cast(float*)&params[16];
	}
	void DrawTile(Texture Tex, float XL, float YL, float U, float V, float UL, float VL, UObject.LinearColor LColor, bool ClipTile, EngineTypes.EBlendMode Blend)
	{
		ubyte params[49];
		params[] = 0;
		*cast(Texture*)params.ptr = Tex;
		*cast(float*)&params[4] = XL;
		*cast(float*)&params[8] = YL;
		*cast(float*)&params[12] = U;
		*cast(float*)&params[16] = V;
		*cast(float*)&params[20] = UL;
		*cast(float*)&params[24] = VL;
		*cast(UObject.LinearColor*)&params[28] = LColor;
		*cast(bool*)&params[44] = ClipTile;
		*cast(EngineTypes.EBlendMode*)&params[48] = Blend;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawTile, params.ptr, cast(void*)0);
	}
	void PreOptimizeDrawTiles(int Num, Texture Tex, EngineTypes.EBlendMode Blend)
	{
		ubyte params[9];
		params[] = 0;
		*cast(int*)params.ptr = Num;
		*cast(Texture*)&params[4] = Tex;
		*cast(EngineTypes.EBlendMode*)&params[8] = Blend;
		(cast(ScriptObject)this).ProcessEvent(Functions.PreOptimizeDrawTiles, params.ptr, cast(void*)0);
	}
	void DrawMaterialTile(MaterialInterface Mat, float XL, float YL, float U, float V, float UL, float VL, bool bClipTile)
	{
		ubyte params[32];
		params[] = 0;
		*cast(MaterialInterface*)params.ptr = Mat;
		*cast(float*)&params[4] = XL;
		*cast(float*)&params[8] = YL;
		*cast(float*)&params[12] = U;
		*cast(float*)&params[16] = V;
		*cast(float*)&params[20] = UL;
		*cast(float*)&params[24] = VL;
		*cast(bool*)&params[28] = bClipTile;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawMaterialTile, params.ptr, cast(void*)0);
	}
	void DrawRotatedTile(Texture Tex, Rotator Rotation, float XL, float YL, float U, float V, float UL, float VL, float AnchorX, float AnchorY)
	{
		ubyte params[48];
		params[] = 0;
		*cast(Texture*)params.ptr = Tex;
		*cast(Rotator*)&params[4] = Rotation;
		*cast(float*)&params[16] = XL;
		*cast(float*)&params[20] = YL;
		*cast(float*)&params[24] = U;
		*cast(float*)&params[28] = V;
		*cast(float*)&params[32] = UL;
		*cast(float*)&params[36] = VL;
		*cast(float*)&params[40] = AnchorX;
		*cast(float*)&params[44] = AnchorY;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawRotatedTile, params.ptr, cast(void*)0);
	}
	void DrawRotatedMaterialTile(MaterialInterface Mat, Rotator Rotation, float XL, float YL, float U, float V, float UL, float VL, float AnchorX, float AnchorY)
	{
		ubyte params[48];
		params[] = 0;
		*cast(MaterialInterface*)params.ptr = Mat;
		*cast(Rotator*)&params[4] = Rotation;
		*cast(float*)&params[16] = XL;
		*cast(float*)&params[20] = YL;
		*cast(float*)&params[24] = U;
		*cast(float*)&params[28] = V;
		*cast(float*)&params[32] = UL;
		*cast(float*)&params[36] = VL;
		*cast(float*)&params[40] = AnchorX;
		*cast(float*)&params[44] = AnchorY;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawRotatedMaterialTile, params.ptr, cast(void*)0);
	}
	void DrawTileStretched(Texture Tex, float XL, float YL, float U, float V, float UL, float VL, UObject.LinearColor LColor, bool bStretchHorizontally, bool bStretchVertically, float ScalingFactor)
	{
		ubyte params[56];
		params[] = 0;
		*cast(Texture*)params.ptr = Tex;
		*cast(float*)&params[4] = XL;
		*cast(float*)&params[8] = YL;
		*cast(float*)&params[12] = U;
		*cast(float*)&params[16] = V;
		*cast(float*)&params[20] = UL;
		*cast(float*)&params[24] = VL;
		*cast(UObject.LinearColor*)&params[28] = LColor;
		*cast(bool*)&params[44] = bStretchHorizontally;
		*cast(bool*)&params[48] = bStretchVertically;
		*cast(float*)&params[52] = ScalingFactor;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawTileStretched, params.ptr, cast(void*)0);
	}
	void DrawTris(Texture Tex, ScriptArray!(Canvas.CanvasUVTri) Triangles)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Texture*)params.ptr = Tex;
		*cast(ScriptArray!(Canvas.CanvasUVTri)*)&params[4] = Triangles;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawTris, params.ptr, cast(void*)0);
	}
	static Canvas.FontRenderInfo CreateFontRenderInfo(bool bClipText, bool bEnableShadow, UObject.LinearColor GlowColor, UObject.Vector2D GlowOuterRadius, UObject.Vector2D GlowInnerRadius)
	{
		ubyte params[80];
		params[] = 0;
		*cast(bool*)params.ptr = bClipText;
		*cast(bool*)&params[4] = bEnableShadow;
		*cast(UObject.LinearColor*)&params[8] = GlowColor;
		*cast(UObject.Vector2D*)&params[24] = GlowOuterRadius;
		*cast(UObject.Vector2D*)&params[32] = GlowInnerRadius;
		StaticClass.ProcessEvent(Functions.CreateFontRenderInfo, params.ptr, cast(void*)0);
		return *cast(Canvas.FontRenderInfo*)&params[40];
	}
	void TextSize(ScriptString String, ref float XL, ref float YL)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = String;
		*cast(float*)&params[12] = XL;
		*cast(float*)&params[16] = YL;
		(cast(ScriptObject)this).ProcessEvent(Functions.TextSize, params.ptr, cast(void*)0);
		*XL = *cast(float*)&params[12];
		*YL = *cast(float*)&params[16];
	}
	void DeProject(UObject.Vector2D ScreenPos, ref Vector WorldOrigin, ref Vector WorldDirection)
	{
		ubyte params[32];
		params[] = 0;
		*cast(UObject.Vector2D*)params.ptr = ScreenPos;
		*cast(Vector*)&params[8] = WorldOrigin;
		*cast(Vector*)&params[20] = WorldDirection;
		(cast(ScriptObject)this).ProcessEvent(Functions.DeProject, params.ptr, cast(void*)0);
		*WorldOrigin = *cast(Vector*)&params[8];
		*WorldDirection = *cast(Vector*)&params[20];
	}
	void PushTranslationMatrix(Vector TranslationVector)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = TranslationVector;
		(cast(ScriptObject)this).ProcessEvent(Functions.PushTranslationMatrix, params.ptr, cast(void*)0);
	}
	void PopTransform()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PopTransform, cast(void*)0, cast(void*)0);
	}
	void Reset(bool bKeepOrigin)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bKeepOrigin;
		(cast(ScriptObject)this).ProcessEvent(Functions.Reset, params.ptr, cast(void*)0);
	}
	void SetOrigin(float X, float Y)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = X;
		*cast(float*)&params[4] = Y;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetOrigin, params.ptr, cast(void*)0);
	}
	void SetClip(float X, float Y)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = X;
		*cast(float*)&params[4] = Y;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetClip, params.ptr, cast(void*)0);
	}
	void DrawTexture(Texture Tex, float Scale)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Texture*)params.ptr = Tex;
		*cast(float*)&params[4] = Scale;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawTexture, params.ptr, cast(void*)0);
	}
	void DrawTextureBlended(Texture Tex, float Scale, EngineTypes.EBlendMode Blend)
	{
		ubyte params[9];
		params[] = 0;
		*cast(Texture*)params.ptr = Tex;
		*cast(float*)&params[4] = Scale;
		*cast(EngineTypes.EBlendMode*)&params[8] = Blend;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawTextureBlended, params.ptr, cast(void*)0);
	}
	Canvas.CanvasIcon MakeIcon(Texture pTexture, float U, float V, float UL, float VL)
	{
		ubyte params[40];
		params[] = 0;
		*cast(Texture*)params.ptr = pTexture;
		*cast(float*)&params[4] = U;
		*cast(float*)&params[8] = V;
		*cast(float*)&params[12] = UL;
		*cast(float*)&params[16] = VL;
		(cast(ScriptObject)this).ProcessEvent(Functions.MakeIcon, params.ptr, cast(void*)0);
		return *cast(Canvas.CanvasIcon*)&params[20];
	}
	void DrawIcon(Canvas.CanvasIcon Icon, float X, float Y, float Scale)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Canvas.CanvasIcon*)params.ptr = Icon;
		*cast(float*)&params[20] = X;
		*cast(float*)&params[24] = Y;
		*cast(float*)&params[28] = Scale;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawIcon, params.ptr, cast(void*)0);
	}
	void DrawRect(float RectX, float RectY, Texture Tex)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = RectX;
		*cast(float*)&params[4] = RectY;
		*cast(Texture*)&params[8] = Tex;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawRect, params.ptr, cast(void*)0);
	}
	void DrawBox(float Width, float Height)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = Width;
		*cast(float*)&params[4] = Height;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawBox, params.ptr, cast(void*)0);
	}
	void SetDrawColorStruct(UObject.Color C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UObject.Color*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetDrawColorStruct, params.ptr, cast(void*)0);
	}
	void Draw2DLine(float X1, float Y1, float X2, float Y2, UObject.Color LineColor)
	{
		ubyte params[20];
		params[] = 0;
		*cast(float*)params.ptr = X1;
		*cast(float*)&params[4] = Y1;
		*cast(float*)&params[8] = X2;
		*cast(float*)&params[12] = Y2;
		*cast(UObject.Color*)&params[16] = LineColor;
		(cast(ScriptObject)this).ProcessEvent(Functions.Draw2DLine, params.ptr, cast(void*)0);
	}
	void DrawTextureLine(Vector StartPoint, Vector EndPoint, float Perc, float Width, UObject.Color LineColor, Texture LineTexture, float U, float V, float UL, float VL)
	{
		ubyte params[56];
		params[] = 0;
		*cast(Vector*)params.ptr = StartPoint;
		*cast(Vector*)&params[12] = EndPoint;
		*cast(float*)&params[24] = Perc;
		*cast(float*)&params[28] = Width;
		*cast(UObject.Color*)&params[32] = LineColor;
		*cast(Texture*)&params[36] = LineTexture;
		*cast(float*)&params[40] = U;
		*cast(float*)&params[44] = V;
		*cast(float*)&params[48] = UL;
		*cast(float*)&params[52] = VL;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawTextureLine, params.ptr, cast(void*)0);
	}
	void DrawTextureDoubleLine(Vector StartPoint, Vector EndPoint, float Perc, float Spacing, float Width, UObject.Color LineColor, UObject.Color AltLineColor, Texture Tex, float U, float V, float UL, float VL)
	{
		ubyte params[64];
		params[] = 0;
		*cast(Vector*)params.ptr = StartPoint;
		*cast(Vector*)&params[12] = EndPoint;
		*cast(float*)&params[24] = Perc;
		*cast(float*)&params[28] = Spacing;
		*cast(float*)&params[32] = Width;
		*cast(UObject.Color*)&params[36] = LineColor;
		*cast(UObject.Color*)&params[40] = AltLineColor;
		*cast(Texture*)&params[44] = Tex;
		*cast(float*)&params[48] = U;
		*cast(float*)&params[52] = V;
		*cast(float*)&params[56] = UL;
		*cast(float*)&params[60] = VL;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawTextureDoubleLine, params.ptr, cast(void*)0);
	}
	void DrawDebugGraph(ScriptString Title, float ValueX, float ValueY, float UL_X, float UL_Y, float W, float H, UObject.Vector2D RangeX, UObject.Vector2D RangeY)
	{
		ubyte params[52];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Title;
		*cast(float*)&params[12] = ValueX;
		*cast(float*)&params[16] = ValueY;
		*cast(float*)&params[20] = UL_X;
		*cast(float*)&params[24] = UL_Y;
		*cast(float*)&params[28] = W;
		*cast(float*)&params[32] = H;
		*cast(UObject.Vector2D*)&params[36] = RangeX;
		*cast(UObject.Vector2D*)&params[44] = RangeY;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawDebugGraph, params.ptr, cast(void*)0);
	}
}
