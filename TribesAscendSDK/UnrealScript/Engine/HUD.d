module UnrealScript.Engine.HUD;

import ScriptClasses;
import UnrealScript.Engine.Canvas;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Actor;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.Font;

extern(C++) interface HUD : Actor
{
	struct KismetDrawTextInfo
	{
		public @property final auto ref UObject.Vector2D MessageOffset() { return *cast(UObject.Vector2D*)(cast(size_t)&this + 36); }
		private ubyte __MessageOffset[8];
		public @property final auto ref float MessageEndTime() { return *cast(float*)(cast(size_t)&this + 48); }
		private ubyte __MessageEndTime[4];
		public @property final auto ref UObject.Color MessageColor() { return *cast(UObject.Color*)(cast(size_t)&this + 44); }
		private ubyte __MessageColor[4];
		public @property final auto ref UObject.Vector2D MessageFontScale() { return *cast(UObject.Vector2D*)(cast(size_t)&this + 28); }
		private ubyte __MessageFontScale[8];
		public @property final auto ref Font MessageFont() { return *cast(Font*)(cast(size_t)&this + 24); }
		private ubyte __MessageFont[4];
		public @property final auto ref ScriptString AppendedText() { return *cast(ScriptString*)(cast(size_t)&this + 12); }
		private ubyte __AppendedText[12];
		public @property final auto ref ScriptString MessageText() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		private ubyte __MessageText[12];
	}
	struct ConsoleMessage
	{
		public @property final auto ref PlayerReplicationInfo PRI() { return *cast(PlayerReplicationInfo*)(cast(size_t)&this + 20); }
		private ubyte __PRI[4];
		public @property final auto ref float MessageLife() { return *cast(float*)(cast(size_t)&this + 16); }
		private ubyte __MessageLife[4];
		public @property final auto ref UObject.Color TextColor() { return *cast(UObject.Color*)(cast(size_t)&this + 12); }
		private ubyte __TextColor[4];
		public @property final auto ref ScriptString Text() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		private ubyte __Text[12];
	}
	struct HudLocalizedMessage
	{
		public @property final auto ref UObject OptionalObject() { return *cast(UObject*)(cast(size_t)&this + 60); }
		private ubyte __OptionalObject[4];
		public @property final auto ref int Count() { return *cast(int*)(cast(size_t)&this + 56); }
		private ubyte __Count[4];
		public @property final bool Drawn() { return (*cast(uint*)(cast(size_t)&this + 52) & 0x1) != 0; }
		public @property final bool Drawn(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 52) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 52) &= ~0x1; } return val; }
		private ubyte __Drawn[4];
		public @property final auto ref float DY() { return *cast(float*)(cast(size_t)&this + 48); }
		private ubyte __DY[4];
		public @property final auto ref float DX() { return *cast(float*)(cast(size_t)&this + 44); }
		private ubyte __DX[4];
		public @property final auto ref Font StringFont() { return *cast(Font*)(cast(size_t)&this + 40); }
		private ubyte __StringFont[4];
		public @property final auto ref int FontSize() { return *cast(int*)(cast(size_t)&this + 36); }
		private ubyte __FontSize[4];
		public @property final auto ref UObject.Color DrawColor() { return *cast(UObject.Color*)(cast(size_t)&this + 32); }
		private ubyte __DrawColor[4];
		public @property final auto ref float PosY() { return *cast(float*)(cast(size_t)&this + 28); }
		private ubyte __PosY[4];
		public @property final auto ref float Lifetime() { return *cast(float*)(cast(size_t)&this + 24); }
		private ubyte __Lifetime[4];
		public @property final auto ref float EndOfLife() { return *cast(float*)(cast(size_t)&this + 20); }
		private ubyte __EndOfLife[4];
		public @property final auto ref int Switch() { return *cast(int*)(cast(size_t)&this + 16); }
		private ubyte __Switch[4];
		public @property final auto ref ScriptString StringMessage() { return *cast(ScriptString*)(cast(size_t)&this + 4); }
		private ubyte __StringMessage[12];
		public @property final auto ref ScriptClass Message() { return *cast(ScriptClass*)(cast(size_t)&this + 0); }
		private ubyte __Message[4];
	}
	// WARNING: Property 'Canvas' has the same name as a defined type!
	public @property final auto ref ScriptArray!(Actor) PostRenderedActors() { return *cast(ScriptArray!(Actor)*)(cast(size_t)cast(void*)this + 500); }
	public @property final auto ref ScriptArray!(HUD.ConsoleMessage) ConsoleMessages() { return *cast(ScriptArray!(HUD.ConsoleMessage)*)(cast(size_t)cast(void*)this + 512); }
	public @property final auto ref ScriptArray!(ScriptName) DebugDisplay() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 1100); }
	public @property final auto ref ScriptArray!(HUD.KismetDrawTextInfo) KismetTextInfo() { return *cast(ScriptArray!(HUD.KismetDrawTextInfo)*)(cast(size_t)cast(void*)this + 1112); }
	public @property final auto ref float RatioY() { return *cast(float*)(cast(size_t)cast(void*)this + 1096); }
	public @property final auto ref float RatioX() { return *cast(float*)(cast(size_t)cast(void*)this + 1092); }
	public @property final auto ref float CenterY() { return *cast(float*)(cast(size_t)cast(void*)this + 1088); }
	public @property final auto ref float CenterX() { return *cast(float*)(cast(size_t)cast(void*)this + 1084); }
	public @property final auto ref float SizeY() { return *cast(float*)(cast(size_t)cast(void*)this + 1080); }
	public @property final auto ref float SizeX() { return *cast(float*)(cast(size_t)cast(void*)this + 1076); }
	public @property final auto ref float RenderDelta() { return *cast(float*)(cast(size_t)cast(void*)this + 1072); }
	public @property final auto ref float LastHUDRenderTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1068); }
	public @property final auto ref float ConsoleMessagePosY() { return *cast(float*)(cast(size_t)cast(void*)this + 1060); }
	public @property final auto ref float ConsoleMessagePosX() { return *cast(float*)(cast(size_t)cast(void*)this + 1056); }
	public @property final auto ref HUD.HudLocalizedMessage LocalMessages() { return *cast(HUD.HudLocalizedMessage*)(cast(size_t)cast(void*)this + 544); }
	public @property final auto ref int MaxHUDAreaMessageCount() { return *cast(int*)(cast(size_t)cast(void*)this + 540); }
	public @property final auto ref int MessageFontOffset() { return *cast(int*)(cast(size_t)cast(void*)this + 536); }
	public @property final auto ref int ConsoleFontSize() { return *cast(int*)(cast(size_t)cast(void*)this + 532); }
	public @property final auto ref int ConsoleMessageCount() { return *cast(int*)(cast(size_t)cast(void*)this + 528); }
	public @property final auto ref UObject.Color ConsoleColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 524); }
	public @property final auto ref float HudCanvasScale() { return *cast(float*)(cast(size_t)cast(void*)this + 496); }
	public @property final bool bShowOverlays() { return (*cast(uint*)(cast(size_t)cast(void*)this + 492) & 0x40) != 0; }
	public @property final bool bShowOverlays(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 492) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 492) &= ~0x40; } return val; }
	public @property final bool bMessageBeep() { return (*cast(uint*)(cast(size_t)cast(void*)this + 492) & 0x20) != 0; }
	public @property final bool bMessageBeep(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 492) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 492) &= ~0x20; } return val; }
	public @property final bool bShowBadConnectionAlert() { return (*cast(uint*)(cast(size_t)cast(void*)this + 492) & 0x10) != 0; }
	public @property final bool bShowBadConnectionAlert(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 492) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 492) &= ~0x10; } return val; }
	public @property final bool bShowDebugInfo() { return (*cast(uint*)(cast(size_t)cast(void*)this + 492) & 0x8) != 0; }
	public @property final bool bShowDebugInfo(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 492) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 492) &= ~0x8; } return val; }
	public @property final bool bShowScores() { return (*cast(uint*)(cast(size_t)cast(void*)this + 492) & 0x4) != 0; }
	public @property final bool bShowScores(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 492) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 492) &= ~0x4; } return val; }
	public @property final bool bShowHUD() { return (*cast(uint*)(cast(size_t)cast(void*)this + 492) & 0x2) != 0; }
	public @property final bool bShowHUD(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 492) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 492) &= ~0x2; } return val; }
	public @property final bool bLostFocusPaused() { return (*cast(uint*)(cast(size_t)cast(void*)this + 492) & 0x1) != 0; }
	public @property final bool bLostFocusPaused(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 492) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 492) &= ~0x1; } return val; }
	public @property final auto ref PlayerController PlayerOwner() { return *cast(PlayerController*)(cast(size_t)cast(void*)this + 488); }
	public @property final auto ref UObject.Color RedColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 484); }
	public @property final auto ref UObject.Color GreenColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 480); }
	public @property final auto ref UObject.Color WhiteColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 476); }
	final bool ShouldDisplayDebug(ScriptName DebugType)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = DebugType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4184], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final void Draw3DLine(Vector Start, Vector End, UObject.Color LineColor)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = Start;
		*cast(Vector*)&params[12] = End;
		*cast(UObject.Color*)&params[24] = LineColor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13718], params.ptr, cast(void*)0);
	}
	final void Draw2DLine(int X1, int Y1, int X2, int Y2, UObject.Color LineColor)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = X1;
		*cast(int*)&params[4] = Y1;
		*cast(int*)&params[8] = X2;
		*cast(int*)&params[12] = Y2;
		*cast(UObject.Color*)&params[16] = LineColor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13722], params.ptr, cast(void*)0);
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13728], cast(void*)0, cast(void*)0);
	}
	final void DrawActorOverlays(Vector ViewPoint, Rotator ViewRotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = ViewPoint;
		*cast(Rotator*)&params[12] = ViewRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13729], params.ptr, cast(void*)0);
	}
	final void RemovePostRenderedActor(Actor A)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13732], params.ptr, cast(void*)0);
	}
	final void AddPostRenderedActor(Actor A)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13735], params.ptr, cast(void*)0);
	}
	final void ToggleHUD()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13738], cast(void*)0, cast(void*)0);
	}
	final void ShowHUD()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13739], cast(void*)0, cast(void*)0);
	}
	final void ShowScores()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13740], cast(void*)0, cast(void*)0);
	}
	final void SetShowScores(bool bNewValue)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewValue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13741], params.ptr, cast(void*)0);
	}
	final void ShowDebug(ScriptName DebugType)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = DebugType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13743], params.ptr, cast(void*)0);
	}
	final void ShowDebugInfo(float* out_YL, float* out_YPos)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = *out_YL;
		*cast(float*)&params[4] = *out_YPos;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13748], params.ptr, cast(void*)0);
		*out_YL = *cast(float*)params.ptr;
		*out_YPos = *cast(float*)&params[4];
	}
	final void DrawRoute(Pawn Target)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Target;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13751], params.ptr, cast(void*)0);
	}
	final void PreCalcValues()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13760], cast(void*)0, cast(void*)0);
	}
	final void PostRender()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13761], cast(void*)0, cast(void*)0);
	}
	final void DrawHUD()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13767], cast(void*)0, cast(void*)0);
	}
	final void DisplayBadConnectionAlert()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13770], cast(void*)0, cast(void*)0);
	}
	final void ClearMessage(HUD.HudLocalizedMessage* M)
	{
		ubyte params[64];
		params[] = 0;
		*cast(HUD.HudLocalizedMessage*)params.ptr = *M;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13771], params.ptr, cast(void*)0);
		*M = *cast(HUD.HudLocalizedMessage*)params.ptr;
	}
	final void Message(PlayerReplicationInfo PRI, ScriptString msg, ScriptName MsgType, float Lifetime)
	{
		ubyte params[28];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = PRI;
		*cast(ScriptString*)&params[4] = msg;
		*cast(ScriptName*)&params[16] = MsgType;
		*cast(float*)&params[24] = Lifetime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13773], params.ptr, cast(void*)0);
	}
	final void DisplayConsoleMessages()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13778], cast(void*)0, cast(void*)0);
	}
	final void AddConsoleMessage(ScriptString M, ScriptClass InMessageClass, PlayerReplicationInfo PRI, float Lifetime)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = M;
		*cast(ScriptClass*)&params[12] = InMessageClass;
		*cast(PlayerReplicationInfo*)&params[16] = PRI;
		*cast(float*)&params[20] = Lifetime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13784], params.ptr, cast(void*)0);
	}
	final void LocalizedMessage(ScriptClass InMessageClass, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, ScriptString CriticalString, int Switch, float Position, float Lifetime, int FontSize, UObject.Color DrawColor, UObject OptionalObject)
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13795], params.ptr, cast(void*)0);
	}
	final void AddLocalizedMessage(int Index, ScriptClass InMessageClass, ScriptString CriticalString, int Switch, float Position, float Lifetime, int FontSize, UObject.Color DrawColor, int MessageCount, UObject OptionalObject)
	{
		ubyte params[48];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(ScriptClass*)&params[4] = InMessageClass;
		*cast(ScriptString*)&params[8] = CriticalString;
		*cast(int*)&params[20] = Switch;
		*cast(float*)&params[24] = Position;
		*cast(float*)&params[28] = Lifetime;
		*cast(int*)&params[32] = FontSize;
		*cast(UObject.Color*)&params[36] = DrawColor;
		*cast(int*)&params[40] = MessageCount;
		*cast(UObject*)&params[44] = OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13815], params.ptr, cast(void*)0);
	}
	final void GetScreenCoords(float PosY, float* ScreenX, float* ScreenY, HUD.HudLocalizedMessage* InMessage)
	{
		ubyte params[76];
		params[] = 0;
		*cast(float*)params.ptr = PosY;
		*cast(float*)&params[4] = *ScreenX;
		*cast(float*)&params[8] = *ScreenY;
		*cast(HUD.HudLocalizedMessage*)&params[12] = *InMessage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13826], params.ptr, cast(void*)0);
		*ScreenX = *cast(float*)&params[4];
		*ScreenY = *cast(float*)&params[8];
		*InMessage = *cast(HUD.HudLocalizedMessage*)&params[12];
	}
	final void DrawMessage(int I, float PosY, float* DX, float* DY)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = I;
		*cast(float*)&params[4] = PosY;
		*cast(float*)&params[8] = *DX;
		*cast(float*)&params[12] = *DY;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13831], params.ptr, cast(void*)0);
		*DX = *cast(float*)&params[8];
		*DY = *cast(float*)&params[12];
	}
	final void DrawMessageText(HUD.HudLocalizedMessage LocalMessage, float ScreenX, float ScreenY)
	{
		ubyte params[72];
		params[] = 0;
		*cast(HUD.HudLocalizedMessage*)params.ptr = LocalMessage;
		*cast(float*)&params[64] = ScreenX;
		*cast(float*)&params[68] = ScreenY;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13839], params.ptr, cast(void*)0);
	}
	final void DisplayLocalMessages()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13844], cast(void*)0, cast(void*)0);
	}
	final void DisplayKismetMessages()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13854], cast(void*)0, cast(void*)0);
	}
	final void DrawText(ScriptString Text, UObject.Vector2D Position, Font TextFont, UObject.Vector2D FontScale, UObject.Color TextColor)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		*cast(UObject.Vector2D*)&params[12] = Position;
		*cast(Font*)&params[20] = TextFont;
		*cast(UObject.Vector2D*)&params[24] = FontScale;
		*cast(UObject.Color*)&params[32] = TextColor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13856], params.ptr, cast(void*)0);
	}
	final Font GetFontSizeIndex(int FontSize)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = FontSize;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13864], params.ptr, cast(void*)0);
		return *cast(Font*)&params[4];
	}
	final void PlayerOwnerDied()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13871], cast(void*)0, cast(void*)0);
	}
	final void OnLostFocusPause(bool bEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnable;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13872], params.ptr, cast(void*)0);
	}
}
