module UnrealScript.Engine.Canvas;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.Texture;
import UnrealScript.Engine.Font;
import UnrealScript.Engine.EngineTypes;

extern(C++) interface Canvas : UObject
{
	struct CanvasIcon
	{
		public @property final auto ref float VL() { return *cast(float*)(cast(size_t)&this + 16); }
		private ubyte __VL[4];
		public @property final auto ref float UL() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __UL[4];
		public @property final auto ref float V() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __V[4];
		public @property final auto ref float U() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __U[4];
		// WARNING: Property 'Texture' has the same name as a defined type!
	}
	struct DepthFieldGlowInfo
	{
		public @property final auto ref UObject.Vector2D GlowInnerRadius() { return *cast(UObject.Vector2D*)(cast(size_t)&this + 28); }
		private ubyte __GlowInnerRadius[8];
		public @property final auto ref UObject.Vector2D GlowOuterRadius() { return *cast(UObject.Vector2D*)(cast(size_t)&this + 20); }
		private ubyte __GlowOuterRadius[8];
		public @property final auto ref UObject.LinearColor GlowColor() { return *cast(UObject.LinearColor*)(cast(size_t)&this + 4); }
		private ubyte __GlowColor[16];
		public @property final bool bEnableGlow() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
		public @property final bool bEnableGlow(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		private ubyte __bEnableGlow[4];
	}
	struct FontRenderInfo
	{
		public @property final auto ref Canvas.DepthFieldGlowInfo GlowInfo() { return *cast(Canvas.DepthFieldGlowInfo*)(cast(size_t)&this + 4); }
		private ubyte __GlowInfo[36];
		public @property final bool bEnableShadow() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x2) != 0; }
		public @property final bool bEnableShadow(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x2; } return val; }
		private ubyte __bEnableShadow[4];
		public @property final bool bClipText() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
		public @property final bool bClipText(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		private ubyte __bClipText[4];
	}
	struct CanvasUVTri
	{
		public @property final auto ref UObject.Vector2D V2_UV() { return *cast(UObject.Vector2D*)(cast(size_t)&this + 40); }
		private ubyte __V2_UV[8];
		public @property final auto ref UObject.Vector2D V2_Pos() { return *cast(UObject.Vector2D*)(cast(size_t)&this + 32); }
		private ubyte __V2_Pos[8];
		public @property final auto ref UObject.Vector2D V1_UV() { return *cast(UObject.Vector2D*)(cast(size_t)&this + 24); }
		private ubyte __V1_UV[8];
		public @property final auto ref UObject.Vector2D V1_Pos() { return *cast(UObject.Vector2D*)(cast(size_t)&this + 16); }
		private ubyte __V1_Pos[8];
		public @property final auto ref UObject.Vector2D V0_UV() { return *cast(UObject.Vector2D*)(cast(size_t)&this + 8); }
		private ubyte __V0_UV[8];
		public @property final auto ref UObject.Vector2D V0_Pos() { return *cast(UObject.Vector2D*)(cast(size_t)&this + 0); }
		private ubyte __V0_Pos[8];
	}
	struct TextSizingParameters
	{
		public @property final auto ref float ViewportHeight() { return *cast(float*)(cast(size_t)&this + 36); }
		private ubyte __ViewportHeight[4];
		public @property final auto ref UObject.Vector2D SpacingAdjust() { return *cast(UObject.Vector2D*)(cast(size_t)&this + 28); }
		private ubyte __SpacingAdjust[8];
		public @property final auto ref Font DrawFont() { return *cast(Font*)(cast(size_t)&this + 24); }
		private ubyte __DrawFont[4];
		public @property final auto ref UObject.Vector2D Scaling() { return *cast(UObject.Vector2D*)(cast(size_t)&this + 16); }
		private ubyte __Scaling[8];
		public @property final auto ref float DrawYL() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __DrawYL[4];
		public @property final auto ref float DrawXL() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __DrawXL[4];
		public @property final auto ref float DrawY() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __DrawY[4];
		public @property final auto ref float DrawX() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __DrawX[4];
	}
	struct WrappedStringElement
	{
		public @property final auto ref UObject.Vector2D LineExtent() { return *cast(UObject.Vector2D*)(cast(size_t)&this + 12); }
		private ubyte __LineExtent[8];
		public @property final auto ref ScriptString Value() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		private ubyte __Value[12];
	}
	public @property final auto ref UObject.Color DrawColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 96); }
	// WARNING: Property 'Font' has the same name as a defined type!
	public @property final auto ref Texture2D DefaultTexture() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref UObject.Plane ColorModulate() { return *cast(UObject.Plane*)(cast(size_t)cast(void*)this + 128); }
	public @property final auto ref UObject.Pointer SceneView() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 116); }
	// WARNING: Property 'Canvas' has the same name as a defined type!
	public @property final auto ref int SizeY() { return *cast(int*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref int SizeX() { return *cast(int*)(cast(size_t)cast(void*)this + 104); }
	public @property final bool bNoSmooth() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x2) != 0; }
	public @property final bool bNoSmooth(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x2; } return val; }
	public @property final bool bCenter() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x1) != 0; }
	public @property final bool bCenter(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x1; } return val; }
	public @property final auto ref float CurYL() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref float CurZ() { return *cast(float*)(cast(size_t)cast(void*)this + 88); }
	public @property final auto ref float CurY() { return *cast(float*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref float CurX() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref float ClipY() { return *cast(float*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref float ClipX() { return *cast(float*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref float OrgY() { return *cast(float*)(cast(size_t)cast(void*)this + 68); }
	public @property final auto ref float OrgX() { return *cast(float*)(cast(size_t)cast(void*)this + 64); }
	final void SetPos(float PosX, float PosY, float PosZ)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = PosX;
		*cast(float*)&params[4] = PosY;
		*cast(float*)&params[8] = PosZ;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4180], params.ptr, cast(void*)0);
	}
	final void SetDrawColor(ubyte R, ubyte G, ubyte B, ubyte A)
	{
		ubyte params[4];
		params[] = 0;
		params[0] = R;
		params[1] = G;
		params[2] = B;
		params[3] = A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4181], params.ptr, cast(void*)0);
	}
	final void DrawText(ScriptString Text, bool CR, float XScale, float YScale, Canvas.FontRenderInfo* RenderInfo)
	{
		ubyte params[64];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		*cast(bool*)&params[12] = CR;
		*cast(float*)&params[16] = XScale;
		*cast(float*)&params[20] = YScale;
		*cast(Canvas.FontRenderInfo*)&params[24] = *RenderInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4183], params.ptr, cast(void*)0);
		*RenderInfo = *cast(Canvas.FontRenderInfo*)&params[24];
	}
	final Vector Project(Vector Location)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = Location;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9338], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[12];
	}
	final void StrLen(ScriptString String, float* XL, float* YL)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = String;
		*cast(float*)&params[12] = *XL;
		*cast(float*)&params[16] = *YL;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12128], params.ptr, cast(void*)0);
		*XL = *cast(float*)&params[12];
		*YL = *cast(float*)&params[16];
	}
	final void DrawTile(Texture Tex, float XL, float YL, float U, float V, float UL, float VL, UObject.LinearColor LColor, bool ClipTile, EngineTypes.EBlendMode Blend)
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12443], params.ptr, cast(void*)0);
	}
	final void PreOptimizeDrawTiles(int Num, Texture Tex, EngineTypes.EBlendMode Blend)
	{
		ubyte params[9];
		params[] = 0;
		*cast(int*)params.ptr = Num;
		*cast(Texture*)&params[4] = Tex;
		*cast(EngineTypes.EBlendMode*)&params[8] = Blend;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12454], params.ptr, cast(void*)0);
	}
	final void DrawMaterialTile(MaterialInterface Mat, float XL, float YL, float U, float V, float UL, float VL, bool bClipTile)
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12458], params.ptr, cast(void*)0);
	}
	final void DrawRotatedTile(Texture Tex, Rotator Rotation, float XL, float YL, float U, float V, float UL, float VL, float AnchorX, float AnchorY)
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12467], params.ptr, cast(void*)0);
	}
	final void DrawRotatedMaterialTile(MaterialInterface Mat, Rotator Rotation, float XL, float YL, float U, float V, float UL, float VL, float AnchorX, float AnchorY)
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12478], params.ptr, cast(void*)0);
	}
	final void DrawTileStretched(Texture Tex, float XL, float YL, float U, float V, float UL, float VL, UObject.LinearColor LColor, bool bStretchHorizontally, bool bStretchVertically, float ScalingFactor)
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12489], params.ptr, cast(void*)0);
	}
	final void DrawTris(Texture Tex, ScriptArray!(Canvas.CanvasUVTri) Triangles)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Texture*)params.ptr = Tex;
		*cast(ScriptArray!(Canvas.CanvasUVTri)*)&params[4] = Triangles;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12501], params.ptr, cast(void*)0);
	}
	final Canvas.FontRenderInfo CreateFontRenderInfo(bool bClipText, bool bEnableShadow, UObject.LinearColor GlowColor, UObject.Vector2D GlowOuterRadius, UObject.Vector2D GlowInnerRadius)
	{
		ubyte params[80];
		params[] = 0;
		*cast(bool*)params.ptr = bClipText;
		*cast(bool*)&params[4] = bEnableShadow;
		*cast(UObject.LinearColor*)&params[8] = GlowColor;
		*cast(UObject.Vector2D*)&params[24] = GlowOuterRadius;
		*cast(UObject.Vector2D*)&params[32] = GlowInnerRadius;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12505], params.ptr, cast(void*)0);
		return *cast(Canvas.FontRenderInfo*)&params[40];
	}
	final void TextSize(ScriptString String, float* XL, float* YL)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = String;
		*cast(float*)&params[12] = *XL;
		*cast(float*)&params[16] = *YL;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12516], params.ptr, cast(void*)0);
		*XL = *cast(float*)&params[12];
		*YL = *cast(float*)&params[16];
	}
	final void DeProject(UObject.Vector2D ScreenPos, Vector* WorldOrigin, Vector* WorldDirection)
	{
		ubyte params[32];
		params[] = 0;
		*cast(UObject.Vector2D*)params.ptr = ScreenPos;
		*cast(Vector*)&params[8] = *WorldOrigin;
		*cast(Vector*)&params[20] = *WorldDirection;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12526], params.ptr, cast(void*)0);
		*WorldOrigin = *cast(Vector*)&params[8];
		*WorldDirection = *cast(Vector*)&params[20];
	}
	final void PushTranslationMatrix(Vector TranslationVector)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = TranslationVector;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12530], params.ptr, cast(void*)0);
	}
	final void PopTransform()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12532], cast(void*)0, cast(void*)0);
	}
	final void Reset(bool bKeepOrigin)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bKeepOrigin;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12533], params.ptr, cast(void*)0);
	}
	final void SetOrigin(float X, float Y)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = X;
		*cast(float*)&params[4] = Y;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12538], params.ptr, cast(void*)0);
	}
	final void SetClip(float X, float Y)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = X;
		*cast(float*)&params[4] = Y;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12541], params.ptr, cast(void*)0);
	}
	final void DrawTexture(Texture Tex, float Scale)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Texture*)params.ptr = Tex;
		*cast(float*)&params[4] = Scale;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12544], params.ptr, cast(void*)0);
	}
	final void DrawTextureBlended(Texture Tex, float Scale, EngineTypes.EBlendMode Blend)
	{
		ubyte params[9];
		params[] = 0;
		*cast(Texture*)params.ptr = Tex;
		*cast(float*)&params[4] = Scale;
		*cast(EngineTypes.EBlendMode*)&params[8] = Blend;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12547], params.ptr, cast(void*)0);
	}
	final Canvas.CanvasIcon MakeIcon(Texture pTexture, float U, float V, float UL, float VL)
	{
		ubyte params[40];
		params[] = 0;
		*cast(Texture*)params.ptr = pTexture;
		*cast(float*)&params[4] = U;
		*cast(float*)&params[8] = V;
		*cast(float*)&params[12] = UL;
		*cast(float*)&params[16] = VL;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12552], params.ptr, cast(void*)0);
		return *cast(Canvas.CanvasIcon*)&params[20];
	}
	final void DrawIcon(Canvas.CanvasIcon Icon, float X, float Y, float Scale)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Canvas.CanvasIcon*)params.ptr = Icon;
		*cast(float*)&params[20] = X;
		*cast(float*)&params[24] = Y;
		*cast(float*)&params[28] = Scale;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12560], params.ptr, cast(void*)0);
	}
	final void DrawRect(float RectX, float RectY, Texture Tex)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = RectX;
		*cast(float*)&params[4] = RectY;
		*cast(Texture*)&params[8] = Tex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12565], params.ptr, cast(void*)0);
	}
	final void DrawBox(float Width, float Height)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = Width;
		*cast(float*)&params[4] = Height;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12569], params.ptr, cast(void*)0);
	}
	final void SetDrawColorStruct(UObject.Color C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UObject.Color*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12578], params.ptr, cast(void*)0);
	}
	final void Draw2DLine(float X1, float Y1, float X2, float Y2, UObject.Color LineColor)
	{
		ubyte params[20];
		params[] = 0;
		*cast(float*)params.ptr = X1;
		*cast(float*)&params[4] = Y1;
		*cast(float*)&params[8] = X2;
		*cast(float*)&params[12] = Y2;
		*cast(UObject.Color*)&params[16] = LineColor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12580], params.ptr, cast(void*)0);
	}
	final void DrawTextureLine(Vector StartPoint, Vector EndPoint, float Perc, float Width, UObject.Color LineColor, Texture LineTexture, float U, float V, float UL, float VL)
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12586], params.ptr, cast(void*)0);
	}
	final void DrawTextureDoubleLine(Vector StartPoint, Vector EndPoint, float Perc, float Spacing, float Width, UObject.Color LineColor, UObject.Color AltLineColor, Texture Tex, float U, float V, float UL, float VL)
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12597], params.ptr, cast(void*)0);
	}
	final void DrawDebugGraph(ScriptString Title, float ValueX, float ValueY, float UL_X, float UL_Y, float W, float H, UObject.Vector2D RangeX, UObject.Vector2D RangeY)
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12610], params.ptr, cast(void*)0);
	}
}
