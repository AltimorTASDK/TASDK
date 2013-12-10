module UnrealScript.Engine.HUD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Canvas;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Actor;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.Font;

extern(C++) interface HUD : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.HUD")); }
	private static __gshared HUD mDefaultProperties;
	@property final static HUD DefaultProperties() { mixin(MGDPC("HUD", "HUD Engine.Default__HUD")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mShouldDisplayDebug;
			ScriptFunction mDraw3DLine;
			ScriptFunction mDraw2DLine;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mDrawActorOverlays;
			ScriptFunction mRemovePostRenderedActor;
			ScriptFunction mAddPostRenderedActor;
			ScriptFunction mToggleHUD;
			ScriptFunction mShowHUD;
			ScriptFunction mShowScores;
			ScriptFunction mSetShowScores;
			ScriptFunction mShowDebug;
			ScriptFunction mShowDebugInfo;
			ScriptFunction mDrawRoute;
			ScriptFunction mPreCalcValues;
			ScriptFunction mPostRender;
			ScriptFunction mDrawHUD;
			ScriptFunction mDisplayBadConnectionAlert;
			ScriptFunction mClearMessage;
			ScriptFunction mMessage;
			ScriptFunction mDisplayConsoleMessages;
			ScriptFunction mAddConsoleMessage;
			ScriptFunction mLocalizedMessage;
			ScriptFunction mAddLocalizedMessage;
			ScriptFunction mGetScreenCoords;
			ScriptFunction mDrawMessage;
			ScriptFunction mDrawMessageText;
			ScriptFunction mDisplayLocalMessages;
			ScriptFunction mDisplayKismetMessages;
			ScriptFunction mDrawText;
			ScriptFunction mGetFontSizeIndex;
			ScriptFunction mPlayerOwnerDied;
			ScriptFunction mOnLostFocusPause;
		}
		public @property static final
		{
			ScriptFunction ShouldDisplayDebug() { mixin(MGF("mShouldDisplayDebug", "Function Engine.HUD.ShouldDisplayDebug")); }
			ScriptFunction Draw3DLine() { mixin(MGF("mDraw3DLine", "Function Engine.HUD.Draw3DLine")); }
			ScriptFunction Draw2DLine() { mixin(MGF("mDraw2DLine", "Function Engine.HUD.Draw2DLine")); }
			ScriptFunction PostBeginPlay() { mixin(MGF("mPostBeginPlay", "Function Engine.HUD.PostBeginPlay")); }
			ScriptFunction DrawActorOverlays() { mixin(MGF("mDrawActorOverlays", "Function Engine.HUD.DrawActorOverlays")); }
			ScriptFunction RemovePostRenderedActor() { mixin(MGF("mRemovePostRenderedActor", "Function Engine.HUD.RemovePostRenderedActor")); }
			ScriptFunction AddPostRenderedActor() { mixin(MGF("mAddPostRenderedActor", "Function Engine.HUD.AddPostRenderedActor")); }
			ScriptFunction ToggleHUD() { mixin(MGF("mToggleHUD", "Function Engine.HUD.ToggleHUD")); }
			ScriptFunction ShowHUD() { mixin(MGF("mShowHUD", "Function Engine.HUD.ShowHUD")); }
			ScriptFunction ShowScores() { mixin(MGF("mShowScores", "Function Engine.HUD.ShowScores")); }
			ScriptFunction SetShowScores() { mixin(MGF("mSetShowScores", "Function Engine.HUD.SetShowScores")); }
			ScriptFunction ShowDebug() { mixin(MGF("mShowDebug", "Function Engine.HUD.ShowDebug")); }
			ScriptFunction ShowDebugInfo() { mixin(MGF("mShowDebugInfo", "Function Engine.HUD.ShowDebugInfo")); }
			ScriptFunction DrawRoute() { mixin(MGF("mDrawRoute", "Function Engine.HUD.DrawRoute")); }
			ScriptFunction PreCalcValues() { mixin(MGF("mPreCalcValues", "Function Engine.HUD.PreCalcValues")); }
			ScriptFunction PostRender() { mixin(MGF("mPostRender", "Function Engine.HUD.PostRender")); }
			ScriptFunction DrawHUD() { mixin(MGF("mDrawHUD", "Function Engine.HUD.DrawHUD")); }
			ScriptFunction DisplayBadConnectionAlert() { mixin(MGF("mDisplayBadConnectionAlert", "Function Engine.HUD.DisplayBadConnectionAlert")); }
			ScriptFunction ClearMessage() { mixin(MGF("mClearMessage", "Function Engine.HUD.ClearMessage")); }
			ScriptFunction Message() { mixin(MGF("mMessage", "Function Engine.HUD.Message")); }
			ScriptFunction DisplayConsoleMessages() { mixin(MGF("mDisplayConsoleMessages", "Function Engine.HUD.DisplayConsoleMessages")); }
			ScriptFunction AddConsoleMessage() { mixin(MGF("mAddConsoleMessage", "Function Engine.HUD.AddConsoleMessage")); }
			ScriptFunction LocalizedMessage() { mixin(MGF("mLocalizedMessage", "Function Engine.HUD.LocalizedMessage")); }
			ScriptFunction AddLocalizedMessage() { mixin(MGF("mAddLocalizedMessage", "Function Engine.HUD.AddLocalizedMessage")); }
			ScriptFunction GetScreenCoords() { mixin(MGF("mGetScreenCoords", "Function Engine.HUD.GetScreenCoords")); }
			ScriptFunction DrawMessage() { mixin(MGF("mDrawMessage", "Function Engine.HUD.DrawMessage")); }
			ScriptFunction DrawMessageText() { mixin(MGF("mDrawMessageText", "Function Engine.HUD.DrawMessageText")); }
			ScriptFunction DisplayLocalMessages() { mixin(MGF("mDisplayLocalMessages", "Function Engine.HUD.DisplayLocalMessages")); }
			ScriptFunction DisplayKismetMessages() { mixin(MGF("mDisplayKismetMessages", "Function Engine.HUD.DisplayKismetMessages")); }
			ScriptFunction DrawText() { mixin(MGF("mDrawText", "Function Engine.HUD.DrawText")); }
			ScriptFunction GetFontSizeIndex() { mixin(MGF("mGetFontSizeIndex", "Function Engine.HUD.GetFontSizeIndex")); }
			ScriptFunction PlayerOwnerDied() { mixin(MGF("mPlayerOwnerDied", "Function Engine.HUD.PlayerOwnerDied")); }
			ScriptFunction OnLostFocusPause() { mixin(MGF("mOnLostFocusPause", "Function Engine.HUD.OnLostFocusPause")); }
		}
	}
	struct KismetDrawTextInfo
	{
		private ubyte __buffer__[52];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.HUD.KismetDrawTextInfo")); }
		@property final auto ref
		{
			UObject.Vector2D MessageOffset() { mixin(MGPS("UObject.Vector2D", 36)); }
			float MessageEndTime() { mixin(MGPS("float", 48)); }
			UObject.Color MessageColor() { mixin(MGPS("UObject.Color", 44)); }
			UObject.Vector2D MessageFontScale() { mixin(MGPS("UObject.Vector2D", 28)); }
			Font MessageFont() { mixin(MGPS("Font", 24)); }
			ScriptString AppendedText() { mixin(MGPS("ScriptString", 12)); }
			ScriptString MessageText() { mixin(MGPS("ScriptString", 0)); }
		}
	}
	struct ConsoleMessage
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.HUD.ConsoleMessage")); }
		@property final auto ref
		{
			PlayerReplicationInfo PRI() { mixin(MGPS("PlayerReplicationInfo", 20)); }
			float MessageLife() { mixin(MGPS("float", 16)); }
			UObject.Color TextColor() { mixin(MGPS("UObject.Color", 12)); }
			ScriptString Text() { mixin(MGPS("ScriptString", 0)); }
		}
	}
	struct HudLocalizedMessage
	{
		private ubyte __buffer__[64];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.HUD.HudLocalizedMessage")); }
		@property final
		{
			auto ref
			{
				UObject OptionalObject() { mixin(MGPS("UObject", 60)); }
				int Count() { mixin(MGPS("int", 56)); }
				float DY() { mixin(MGPS("float", 48)); }
				float DX() { mixin(MGPS("float", 44)); }
				Font StringFont() { mixin(MGPS("Font", 40)); }
				int FontSize() { mixin(MGPS("int", 36)); }
				UObject.Color DrawColor() { mixin(MGPS("UObject.Color", 32)); }
				float PosY() { mixin(MGPS("float", 28)); }
				float Lifetime() { mixin(MGPS("float", 24)); }
				float EndOfLife() { mixin(MGPS("float", 20)); }
				int Switch() { mixin(MGPS("int", 16)); }
				ScriptString StringMessage() { mixin(MGPS("ScriptString", 4)); }
				ScriptClass Message() { mixin(MGPS("ScriptClass", 0)); }
			}
			bool Drawn() { mixin(MGBPS(52, 0x1)); }
			bool Drawn(bool val) { mixin(MSBPS(52, 0x1)); }
		}
	}
	@property final
	{
		auto ref
		{
			Canvas CanvasVar() { mixin(MGPC("Canvas", 1064)); }
			ScriptArray!(Actor) PostRenderedActors() { mixin(MGPC("ScriptArray!(Actor)", 500)); }
			ScriptArray!(HUD.ConsoleMessage) ConsoleMessages() { mixin(MGPC("ScriptArray!(HUD.ConsoleMessage)", 512)); }
			ScriptArray!(ScriptName) DebugDisplay() { mixin(MGPC("ScriptArray!(ScriptName)", 1100)); }
			ScriptArray!(HUD.KismetDrawTextInfo) KismetTextInfo() { mixin(MGPC("ScriptArray!(HUD.KismetDrawTextInfo)", 1112)); }
			float RatioY() { mixin(MGPC("float", 1096)); }
			float RatioX() { mixin(MGPC("float", 1092)); }
			float CenterY() { mixin(MGPC("float", 1088)); }
			float CenterX() { mixin(MGPC("float", 1084)); }
			float SizeY() { mixin(MGPC("float", 1080)); }
			float SizeX() { mixin(MGPC("float", 1076)); }
			float RenderDelta() { mixin(MGPC("float", 1072)); }
			float LastHUDRenderTime() { mixin(MGPC("float", 1068)); }
			float ConsoleMessagePosY() { mixin(MGPC("float", 1060)); }
			float ConsoleMessagePosX() { mixin(MGPC("float", 1056)); }
			HUD.HudLocalizedMessage LocalMessages() { mixin(MGPC("HUD.HudLocalizedMessage", 544)); }
			int MaxHUDAreaMessageCount() { mixin(MGPC("int", 540)); }
			int MessageFontOffset() { mixin(MGPC("int", 536)); }
			int ConsoleFontSize() { mixin(MGPC("int", 532)); }
			int ConsoleMessageCount() { mixin(MGPC("int", 528)); }
			UObject.Color ConsoleColor() { mixin(MGPC("UObject.Color", 524)); }
			float HudCanvasScale() { mixin(MGPC("float", 496)); }
			PlayerController PlayerOwner() { mixin(MGPC("PlayerController", 488)); }
			UObject.Color RedColor() { mixin(MGPC("UObject.Color", 484)); }
			UObject.Color GreenColor() { mixin(MGPC("UObject.Color", 480)); }
			UObject.Color WhiteColor() { mixin(MGPC("UObject.Color", 476)); }
		}
		bool bShowOverlays() { mixin(MGBPC(492, 0x40)); }
		bool bShowOverlays(bool val) { mixin(MSBPC(492, 0x40)); }
		bool bMessageBeep() { mixin(MGBPC(492, 0x20)); }
		bool bMessageBeep(bool val) { mixin(MSBPC(492, 0x20)); }
		bool bShowBadConnectionAlert() { mixin(MGBPC(492, 0x10)); }
		bool bShowBadConnectionAlert(bool val) { mixin(MSBPC(492, 0x10)); }
		bool bShowDebugInfo() { mixin(MGBPC(492, 0x8)); }
		bool bShowDebugInfo(bool val) { mixin(MSBPC(492, 0x8)); }
		bool bShowScores() { mixin(MGBPC(492, 0x4)); }
		bool bShowScores(bool val) { mixin(MSBPC(492, 0x4)); }
		bool bShowHUD() { mixin(MGBPC(492, 0x2)); }
		bool bShowHUD(bool val) { mixin(MSBPC(492, 0x2)); }
		bool bLostFocusPaused() { mixin(MGBPC(492, 0x1)); }
		bool bLostFocusPaused(bool val) { mixin(MSBPC(492, 0x1)); }
	}
final:
	bool ShouldDisplayDebug(ScriptName DebugType)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = DebugType;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldDisplayDebug, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void Draw3DLine(Vector Start, Vector End, UObject.Color LineColor)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = Start;
		*cast(Vector*)&params[12] = End;
		*cast(UObject.Color*)&params[24] = LineColor;
		(cast(ScriptObject)this).ProcessEvent(Functions.Draw3DLine, params.ptr, cast(void*)0);
	}
	void Draw2DLine(int X1, int Y1, int X2, int Y2, UObject.Color LineColor)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = X1;
		*cast(int*)&params[4] = Y1;
		*cast(int*)&params[8] = X2;
		*cast(int*)&params[12] = Y2;
		*cast(UObject.Color*)&params[16] = LineColor;
		(cast(ScriptObject)this).ProcessEvent(Functions.Draw2DLine, params.ptr, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void DrawActorOverlays(Vector ViewPoint, Rotator ViewRotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = ViewPoint;
		*cast(Rotator*)&params[12] = ViewRotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawActorOverlays, params.ptr, cast(void*)0);
	}
	void RemovePostRenderedActor(Actor A)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemovePostRenderedActor, params.ptr, cast(void*)0);
	}
	void AddPostRenderedActor(Actor A)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddPostRenderedActor, params.ptr, cast(void*)0);
	}
	void ToggleHUD()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ToggleHUD, cast(void*)0, cast(void*)0);
	}
	void ShowHUD()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowHUD, cast(void*)0, cast(void*)0);
	}
	void ShowScores()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowScores, cast(void*)0, cast(void*)0);
	}
	void SetShowScores(bool bNewValue)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetShowScores, params.ptr, cast(void*)0);
	}
	void ShowDebug(ScriptName* DebugType = null)
	{
		ubyte params[8];
		params[] = 0;
		if (DebugType !is null)
			*cast(ScriptName*)params.ptr = *DebugType;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowDebug, params.ptr, cast(void*)0);
	}
	void ShowDebugInfo(ref float out_YL, ref float out_YPos)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = out_YL;
		*cast(float*)&params[4] = out_YPos;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowDebugInfo, params.ptr, cast(void*)0);
		out_YL = *cast(float*)params.ptr;
		out_YPos = *cast(float*)&params[4];
	}
	void DrawRoute(Pawn Target)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Target;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawRoute, params.ptr, cast(void*)0);
	}
	void PreCalcValues()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PreCalcValues, cast(void*)0, cast(void*)0);
	}
	void PostRender()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostRender, cast(void*)0, cast(void*)0);
	}
	void DrawHUD()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawHUD, cast(void*)0, cast(void*)0);
	}
	void DisplayBadConnectionAlert()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayBadConnectionAlert, cast(void*)0, cast(void*)0);
	}
	void ClearMessage(ref HUD.HudLocalizedMessage M)
	{
		ubyte params[64];
		params[] = 0;
		*cast(HUD.HudLocalizedMessage*)params.ptr = M;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearMessage, params.ptr, cast(void*)0);
		M = *cast(HUD.HudLocalizedMessage*)params.ptr;
	}
	void Message(PlayerReplicationInfo PRI, ScriptString msg, ScriptName MsgType, float* Lifetime = null)
	{
		ubyte params[28];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = PRI;
		*cast(ScriptString*)&params[4] = msg;
		*cast(ScriptName*)&params[16] = MsgType;
		if (Lifetime !is null)
			*cast(float*)&params[24] = *Lifetime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Message, params.ptr, cast(void*)0);
	}
	void DisplayConsoleMessages()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayConsoleMessages, cast(void*)0, cast(void*)0);
	}
	void AddConsoleMessage(ScriptString M, ScriptClass InMessageClass, PlayerReplicationInfo PRI, float* Lifetime = null)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = M;
		*cast(ScriptClass*)&params[12] = InMessageClass;
		*cast(PlayerReplicationInfo*)&params[16] = PRI;
		if (Lifetime !is null)
			*cast(float*)&params[20] = *Lifetime;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddConsoleMessage, params.ptr, cast(void*)0);
	}
	void LocalizedMessage(ScriptClass InMessageClass, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, ScriptString CriticalString, int Switch, float Position, float Lifetime, int FontSize, UObject.Color DrawColor, UObject* OptionalObject = null)
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
		if (OptionalObject !is null)
			*cast(UObject*)&params[44] = *OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(Functions.LocalizedMessage, params.ptr, cast(void*)0);
	}
	void AddLocalizedMessage(int Index, ScriptClass InMessageClass, ScriptString CriticalString, int Switch, float Position, float Lifetime, int FontSize, UObject.Color DrawColor, int* MessageCount = null, UObject* OptionalObject = null)
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
		if (MessageCount !is null)
			*cast(int*)&params[40] = *MessageCount;
		if (OptionalObject !is null)
			*cast(UObject*)&params[44] = *OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddLocalizedMessage, params.ptr, cast(void*)0);
	}
	void GetScreenCoords(float PosY, ref float ScreenX, ref float ScreenY, ref HUD.HudLocalizedMessage InMessage)
	{
		ubyte params[76];
		params[] = 0;
		*cast(float*)params.ptr = PosY;
		*cast(float*)&params[4] = ScreenX;
		*cast(float*)&params[8] = ScreenY;
		*cast(HUD.HudLocalizedMessage*)&params[12] = InMessage;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetScreenCoords, params.ptr, cast(void*)0);
		ScreenX = *cast(float*)&params[4];
		ScreenY = *cast(float*)&params[8];
		InMessage = *cast(HUD.HudLocalizedMessage*)&params[12];
	}
	void DrawMessage(int I, float PosY, ref float DX, ref float DY)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = I;
		*cast(float*)&params[4] = PosY;
		*cast(float*)&params[8] = DX;
		*cast(float*)&params[12] = DY;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawMessage, params.ptr, cast(void*)0);
		DX = *cast(float*)&params[8];
		DY = *cast(float*)&params[12];
	}
	void DrawMessageText(HUD.HudLocalizedMessage pLocalMessage, float ScreenX, float ScreenY)
	{
		ubyte params[72];
		params[] = 0;
		*cast(HUD.HudLocalizedMessage*)params.ptr = pLocalMessage;
		*cast(float*)&params[64] = ScreenX;
		*cast(float*)&params[68] = ScreenY;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawMessageText, params.ptr, cast(void*)0);
	}
	void DisplayLocalMessages()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayLocalMessages, cast(void*)0, cast(void*)0);
	}
	void DisplayKismetMessages()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayKismetMessages, cast(void*)0, cast(void*)0);
	}
	void DrawText(ScriptString Text, UObject.Vector2D Position, Font TextFont, UObject.Vector2D FontScale, UObject.Color TextColor)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		*cast(UObject.Vector2D*)&params[12] = Position;
		*cast(Font*)&params[20] = TextFont;
		*cast(UObject.Vector2D*)&params[24] = FontScale;
		*cast(UObject.Color*)&params[32] = TextColor;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawText, params.ptr, cast(void*)0);
	}
	static Font GetFontSizeIndex(int FontSize)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = FontSize;
		StaticClass.ProcessEvent(Functions.GetFontSizeIndex, params.ptr, cast(void*)0);
		return *cast(Font*)&params[4];
	}
	void PlayerOwnerDied()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayerOwnerDied, cast(void*)0, cast(void*)0);
	}
	void OnLostFocusPause(bool bEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnable;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnLostFocusPause, params.ptr, cast(void*)0);
	}
}
