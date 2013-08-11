module UnrealScript.GFxUI.GFxMoviePlayer;

import ScriptClasses;
import UnrealScript.Engine.TextureRenderTarget2D;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.UISoundTheme;
import UnrealScript.Engine.UIRoot;
import UnrealScript.Engine.Texture;
import UnrealScript.GFxUI.SwfMovie;
import UnrealScript.GFxUI.GFxDataStoreSubscriber;
import UnrealScript.GFxUI.GFxObject;
import UnrealScript.Engine.GameViewportClient;

extern(C++) interface GFxMoviePlayer : UObject
{
	enum ASType : ubyte
	{
		AS_Undefined = 0,
		AS_Null = 1,
		AS_Number = 2,
		AS_String = 3,
		AS_Boolean = 4,
		AS_MAX = 5,
	}
	enum GFxAlign : ubyte
	{
		Align_Center = 0,
		Align_TopCenter = 1,
		Align_BottomCenter = 2,
		Align_CenterLeft = 3,
		Align_CenterRight = 4,
		Align_TopLeft = 5,
		Align_TopRight = 6,
		Align_BottomLeft = 7,
		Align_BottomRight = 8,
		Align_MAX = 9,
	}
	enum GFxScaleMode : ubyte
	{
		SM_NoScale = 0,
		SM_ShowAll = 1,
		SM_ExactFit = 2,
		SM_NoBorder = 3,
		SM_MAX = 4,
	}
	enum GFxTimingMode : ubyte
	{
		TM_Game = 0,
		TM_Real = 1,
		TM_MAX = 2,
	}
	enum GFxRenderTextureMode : ubyte
	{
		RTM_Opaque = 0,
		RTM_Alpha = 1,
		RTM_AlphaComposite = 2,
		RTM_MAX = 3,
	}
	struct ASValue
	{
		public @property final auto ref GFxMoviePlayer.ASType Type() { return *cast(GFxMoviePlayer.ASType*)(cast(size_t)&this + 0); }
		private ubyte __Type[1];
		public @property final bool B() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x1) != 0; }
		public @property final bool B(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x1; } return val; }
		private ubyte __B[4];
		public @property final auto ref float N() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __N[4];
		public @property final auto ref ScriptString S() { return *cast(ScriptString*)(cast(size_t)&this + 12); }
		private ubyte __S[12];
	}
	struct GFxWidgetBinding
	{
		public @property final auto ref ScriptName WidgetName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __WidgetName[8];
		public @property final auto ref ScriptClass WidgetClass() { return *cast(ScriptClass*)(cast(size_t)&this + 8); }
		private ubyte __WidgetClass[4];
	}
	struct SoundThemeBinding
	{
		public @property final auto ref ScriptName ThemeName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __ThemeName[8];
		public @property final auto ref UISoundTheme Theme() { return *cast(UISoundTheme*)(cast(size_t)&this + 8); }
		private ubyte __Theme[4];
	}
	struct GFxDataStoreBinding
	{
		public @property final auto ref UIRoot.UIDataStoreBinding DataSource() { return *cast(UIRoot.UIDataStoreBinding*)(cast(size_t)&this + 0); }
		private ubyte __DataSource[48];
		public @property final auto ref ScriptString VarPath() { return *cast(ScriptString*)(cast(size_t)&this + 48); }
		private ubyte __VarPath[12];
		public @property final auto ref ScriptString ModelId() { return *cast(ScriptString*)(cast(size_t)&this + 60); }
		private ubyte __ModelId[12];
		public @property final auto ref ScriptString ControlId() { return *cast(ScriptString*)(cast(size_t)&this + 72); }
		private ubyte __ControlId[12];
		public @property final bool bEditable() { return (*cast(uint*)(cast(size_t)&this + 84) & 0x1) != 0; }
		public @property final bool bEditable(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 84) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 84) &= ~0x1; } return val; }
		private ubyte __bEditable[4];
		public @property final auto ref ScriptArray!(ScriptName) CellTags() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)&this + 88); }
		private ubyte __CellTags[12];
		public @property final auto ref ScriptArray!(ubyte) ModelIdUtf8() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)&this + 100); }
		private ubyte __ModelIdUtf8[12];
		public @property final auto ref ScriptArray!(ubyte) ControlIdUtf8() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)&this + 112); }
		private ubyte __ControlIdUtf8[12];
		public @property final auto ref ScriptArray!(ScriptName) FullCellTags() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)&this + 132); }
		private ubyte __FullCellTags[12];
		public @property final auto ref UObject.Pointer ModelRef() { return *cast(UObject.Pointer*)(cast(size_t)&this + 144); }
		private ubyte __ModelRef[4];
		public @property final auto ref UObject.Pointer ControlRef() { return *cast(UObject.Pointer*)(cast(size_t)&this + 148); }
		private ubyte __ControlRef[4];
	}
	struct ExternalTexture
	{
		public @property final auto ref ScriptString Resource() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		private ubyte __Resource[12];
		// WARNING: Property 'Texture' has the same name as a defined type!
	}
	public @property final auto ref int LocalPlayerOwnerIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 208); }
	public @property final auto ref SwfMovie MovieInfo() { return *cast(SwfMovie*)(cast(size_t)cast(void*)this + 196); }
	public @property final bool bAutoPlay() { return (*cast(uint*)(cast(size_t)cast(void*)this + 200) & 0x80) != 0; }
	public @property final bool bAutoPlay(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 200) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 200) &= ~0x80; } return val; }
	public @property final auto ref UObject ExternalInterface() { return *cast(UObject*)(cast(size_t)cast(void*)this + 212); }
	public @property final bool bPauseGameWhileActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 200) & 0x100) != 0; }
	public @property final bool bPauseGameWhileActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 200) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 200) &= ~0x100; } return val; }
	public @property final auto ref UObject.Pointer pMovie() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 60); }
	public @property final auto ref UObject.Pointer pCaptureKeys() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 64); }
	public @property final auto ref UObject.Pointer pFocusIgnoreKeys() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 68); }
	public @property final auto ref int NextASUObject() { return *cast(int*)(cast(size_t)cast(void*)this + 192); }
	public @property final bool bMovieIsOpen() { return (*cast(uint*)(cast(size_t)cast(void*)this + 200) & 0x1) != 0; }
	public @property final bool bMovieIsOpen(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 200) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 200) &= ~0x1; } return val; }
	public @property final bool bDisplayWithHudOff() { return (*cast(uint*)(cast(size_t)cast(void*)this + 200) & 0x2) != 0; }
	public @property final bool bDisplayWithHudOff(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 200) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 200) &= ~0x2; } return val; }
	public @property final bool bEnableGammaCorrection() { return (*cast(uint*)(cast(size_t)cast(void*)this + 200) & 0x4) != 0; }
	public @property final bool bEnableGammaCorrection(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 200) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 200) &= ~0x4; } return val; }
	public @property final bool bWidgetsInitializedThisFrame() { return (*cast(uint*)(cast(size_t)cast(void*)this + 200) & 0x8) != 0; }
	public @property final bool bWidgetsInitializedThisFrame(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 200) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 200) &= ~0x8; } return val; }
	public @property final bool bLogUnhandedWidgetInitializations() { return (*cast(uint*)(cast(size_t)cast(void*)this + 200) & 0x10) != 0; }
	public @property final bool bLogUnhandedWidgetInitializations(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 200) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 200) &= ~0x10; } return val; }
	public @property final bool bAllowInput() { return (*cast(uint*)(cast(size_t)cast(void*)this + 200) & 0x20) != 0; }
	public @property final bool bAllowInput(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 200) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 200) &= ~0x20; } return val; }
	public @property final bool bAllowFocus() { return (*cast(uint*)(cast(size_t)cast(void*)this + 200) & 0x40) != 0; }
	public @property final bool bAllowFocus(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 200) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 200) &= ~0x40; } return val; }
	public @property final bool bCloseOnLevelChange() { return (*cast(uint*)(cast(size_t)cast(void*)this + 200) & 0x200) != 0; }
	public @property final bool bCloseOnLevelChange(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 200) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 200) &= ~0x200; } return val; }
	public @property final bool bOnlyOwnerFocusable() { return (*cast(uint*)(cast(size_t)cast(void*)this + 200) & 0x400) != 0; }
	public @property final bool bOnlyOwnerFocusable(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 200) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 200) &= ~0x400; } return val; }
	public @property final bool bDiscardNonOwnerInput() { return (*cast(uint*)(cast(size_t)cast(void*)this + 200) & 0x800) != 0; }
	public @property final bool bDiscardNonOwnerInput(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 200) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 200) &= ~0x800; } return val; }
	public @property final bool bCaptureInput() { return (*cast(uint*)(cast(size_t)cast(void*)this + 200) & 0x1000) != 0; }
	public @property final bool bCaptureInput(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 200) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 200) &= ~0x1000; } return val; }
	public @property final bool bIgnoreMouseInput() { return (*cast(uint*)(cast(size_t)cast(void*)this + 200) & 0x2000) != 0; }
	public @property final bool bIgnoreMouseInput(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 200) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 200) &= ~0x2000; } return val; }
	public @property final bool bForceSmoothAnimation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 200) & 0x4000) != 0; }
	public @property final bool bForceSmoothAnimation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 200) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 200) &= ~0x4000; } return val; }
	public @property final auto ref TextureRenderTarget2D RenderTexture() { return *cast(TextureRenderTarget2D*)(cast(size_t)cast(void*)this + 204); }
	public @property final auto ref ScriptArray!(ScriptName) CaptureKeys() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 216); }
	public @property final auto ref ScriptArray!(ScriptName) FocusIgnoreKeys() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 228); }
	public @property final auto ref ScriptArray!(GFxMoviePlayer.ExternalTexture) ExternalTextures() { return *cast(ScriptArray!(GFxMoviePlayer.ExternalTexture)*)(cast(size_t)cast(void*)this + 240); }
	public @property final auto ref ScriptArray!(GFxMoviePlayer.SoundThemeBinding) SoundThemes() { return *cast(ScriptArray!(GFxMoviePlayer.SoundThemeBinding)*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref GFxMoviePlayer.GFxTimingMode TimingMode() { return *cast(GFxMoviePlayer.GFxTimingMode*)(cast(size_t)cast(void*)this + 264); }
	public @property final auto ref GFxMoviePlayer.GFxRenderTextureMode RenderTextureMode() { return *cast(GFxMoviePlayer.GFxRenderTextureMode*)(cast(size_t)cast(void*)this + 265); }
	public @property final auto ref ubyte Priority() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 266); }
	public @property final auto ref ScriptArray!(GFxMoviePlayer.GFxDataStoreBinding) DataStoreBindings() { return *cast(ScriptArray!(GFxMoviePlayer.GFxDataStoreBinding)*)(cast(size_t)cast(void*)this + 268); }
	public @property final auto ref GFxDataStoreSubscriber DataStoreSubscriber() { return *cast(GFxDataStoreSubscriber*)(cast(size_t)cast(void*)this + 280); }
	public @property final auto ref ScriptArray!(GFxMoviePlayer.GFxWidgetBinding) WidgetBindings() { return *cast(ScriptArray!(GFxMoviePlayer.GFxWidgetBinding)*)(cast(size_t)cast(void*)this + 284); }
	public @property final auto ref ScriptArray!(GFxObject) ObjectValues() { return *cast(ScriptArray!(GFxObject)*)(cast(size_t)cast(void*)this + 356); }
	final void OnFocusLost(int LocalPlayerIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = LocalPlayerIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29656], params.ptr, cast(void*)0);
	}
	final void OnFocusGained(int LocalPlayerIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = LocalPlayerIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29657], params.ptr, cast(void*)0);
	}
	final void ConsoleCommand(ScriptString Command)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Command;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29659], params.ptr, cast(void*)0);
	}
	final PlayerController GetPC()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29661], params.ptr, cast(void*)0);
		return *cast(PlayerController*)params.ptr;
	}
	final LocalPlayer GetLP()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29664], params.ptr, cast(void*)0);
		return *cast(LocalPlayer*)params.ptr;
	}
	final void Init(LocalPlayer LocPlay)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = LocPlay;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29667], params.ptr, cast(void*)0);
	}
	final void SetWidgetPathBinding(GFxObject WidgetToBind, ScriptName Path)
	{
		ubyte params[12];
		params[] = 0;
		*cast(GFxObject*)params.ptr = WidgetToBind;
		*cast(ScriptName*)&params[4] = Path;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29671], params.ptr, cast(void*)0);
	}
	final void Advance(float Time)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = Time;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29675], params.ptr, cast(void*)0);
	}
	final void PostWidgetInit()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29676], cast(void*)0, cast(void*)0);
	}
	final bool WidgetUnloaded(ScriptName WidgetName, ScriptName WidgetPath, GFxObject Widget)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = WidgetName;
		*cast(ScriptName*)&params[8] = WidgetPath;
		*cast(GFxObject*)&params[16] = Widget;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29679], params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	final bool WidgetInitialized(ScriptName WidgetName, ScriptName WidgetPath, GFxObject Widget)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = WidgetName;
		*cast(ScriptName*)&params[8] = WidgetPath;
		*cast(GFxObject*)&params[16] = Widget;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29680], params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	final GFxObject ActionScriptObject(ScriptString Path)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Path;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29685], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[12];
	}
	final ScriptString ActionScriptString(ScriptString Path)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Path;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29690], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	final float ActionScriptFloat(ScriptString Path)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Path;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29693], params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	final int ActionScriptInt(ScriptString Path)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Path;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29696], params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	final void ActionScriptVoid(ScriptString Path)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Path;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29699], params.ptr, cast(void*)0);
	}
	final GFxMoviePlayer.ASValue Invoke(ScriptString method, ScriptArray!(GFxMoviePlayer.ASValue) args)
	{
		ubyte params[48];
		params[] = 0;
		*cast(ScriptString*)params.ptr = method;
		*cast(ScriptArray!(GFxMoviePlayer.ASValue)*)&params[12] = args;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29702], params.ptr, cast(void*)0);
		return *cast(GFxMoviePlayer.ASValue*)&params[24];
	}
	final void ActionScriptSetFunction(GFxObject Object, ScriptString Member)
	{
		ubyte params[16];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Object;
		*cast(ScriptString*)&params[4] = Member;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29704], params.ptr, cast(void*)0);
	}
	final GFxObject CreateArray()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29716], params.ptr, cast(void*)0);
		return *cast(GFxObject*)params.ptr;
	}
	final GFxObject CreateObject(ScriptString ASClass, ScriptClass Type)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ASClass;
		*cast(ScriptClass*)&params[12] = Type;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29719], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[16];
	}
	final bool SetVariableStringArray(ScriptString Path, int Index, ScriptArray!(ScriptString) Arg)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Path;
		*cast(int*)&params[12] = Index;
		*cast(ScriptArray!(ScriptString)*)&params[16] = Arg;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29721], params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	final bool SetVariableFloatArray(ScriptString Path, int Index, ScriptArray!(float) Arg)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Path;
		*cast(int*)&params[12] = Index;
		*cast(ScriptArray!(float)*)&params[16] = Arg;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29725], params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	final bool SetVariableIntArray(ScriptString Path, int Index, ScriptArray!(int) Arg)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Path;
		*cast(int*)&params[12] = Index;
		*cast(ScriptArray!(int)*)&params[16] = Arg;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29731], params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	final bool SetVariableArray(ScriptString Path, int Index, ScriptArray!(GFxMoviePlayer.ASValue) Arg)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Path;
		*cast(int*)&params[12] = Index;
		*cast(ScriptArray!(GFxMoviePlayer.ASValue)*)&params[16] = Arg;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29737], params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	final bool GetVariableStringArray(ScriptString Path, int Index, ScriptArray!(ScriptString)* Arg)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Path;
		*cast(int*)&params[12] = Index;
		*cast(ScriptArray!(ScriptString)*)&params[16] = *Arg;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29743], params.ptr, cast(void*)0);
		*Arg = *cast(ScriptArray!(ScriptString)*)&params[16];
		return *cast(bool*)&params[28];
	}
	final bool GetVariableFloatArray(ScriptString Path, int Index, ScriptArray!(float)* Arg)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Path;
		*cast(int*)&params[12] = Index;
		*cast(ScriptArray!(float)*)&params[16] = *Arg;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29749], params.ptr, cast(void*)0);
		*Arg = *cast(ScriptArray!(float)*)&params[16];
		return *cast(bool*)&params[28];
	}
	final bool GetVariableIntArray(ScriptString Path, int Index, ScriptArray!(int)* Arg)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Path;
		*cast(int*)&params[12] = Index;
		*cast(ScriptArray!(int)*)&params[16] = *Arg;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29755], params.ptr, cast(void*)0);
		*Arg = *cast(ScriptArray!(int)*)&params[16];
		return *cast(bool*)&params[28];
	}
	final bool GetVariableArray(ScriptString Path, int Index, ScriptArray!(GFxMoviePlayer.ASValue)* Arg)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Path;
		*cast(int*)&params[12] = Index;
		*cast(ScriptArray!(GFxMoviePlayer.ASValue)*)&params[16] = *Arg;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29761], params.ptr, cast(void*)0);
		*Arg = *cast(ScriptArray!(GFxMoviePlayer.ASValue)*)&params[16];
		return *cast(bool*)&params[28];
	}
	final void SetVariableObject(ScriptString Path, GFxObject Object)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Path;
		*cast(GFxObject*)&params[12] = Object;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29767], params.ptr, cast(void*)0);
	}
	final void SetVariableString(ScriptString Path, ScriptString S)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Path;
		*cast(ScriptString*)&params[12] = S;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29773], params.ptr, cast(void*)0);
	}
	final void SetVariableNumber(ScriptString Path, float F)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Path;
		*cast(float*)&params[12] = F;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29776], params.ptr, cast(void*)0);
	}
	final void SetVariableBool(ScriptString Path, bool B)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Path;
		*cast(bool*)&params[12] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29779], params.ptr, cast(void*)0);
	}
	final void SetVariable(ScriptString Path, GFxMoviePlayer.ASValue Arg)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Path;
		*cast(GFxMoviePlayer.ASValue*)&params[12] = Arg;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29782], params.ptr, cast(void*)0);
	}
	final GFxObject GetVariableObject(ScriptString Path, ScriptClass Type)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Path;
		*cast(ScriptClass*)&params[12] = Type;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29785], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[16];
	}
	final ScriptString GetVariableString(ScriptString Path)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Path;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29788], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	final float GetVariableNumber(ScriptString Path)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Path;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29792], params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	final bool GetVariableBool(ScriptString Path)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Path;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29795], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final GFxMoviePlayer.ASValue GetVariable(ScriptString Path)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Path;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29798], params.ptr, cast(void*)0);
		return *cast(GFxMoviePlayer.ASValue*)&params[12];
	}
	final bool FilterButtonInput(int ControllerId, ScriptName ButtonName, UObject.EInputEvent InputEvent)
	{
		ubyte params[17];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		*cast(ScriptName*)&params[4] = ButtonName;
		*cast(UObject.EInputEvent*)&params[12] = InputEvent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29801], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final void FlushPlayerInput(bool capturekeysonly)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = capturekeysonly;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29804], params.ptr, cast(void*)0);
	}
	final void ClearFocusIgnoreKeys()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29809], cast(void*)0, cast(void*)0);
	}
	final void AddFocusIgnoreKey(ScriptName Key)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = Key;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29811], params.ptr, cast(void*)0);
	}
	final void ClearCaptureKeys()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29812], cast(void*)0, cast(void*)0);
	}
	final void AddCaptureKey(ScriptName Key)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = Key;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29814], params.ptr, cast(void*)0);
	}
	final void SetMovieCanReceiveInput(bool bCanReceiveInput)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bCanReceiveInput;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29815], params.ptr, cast(void*)0);
	}
	final void SetMovieCanReceiveFocus(bool bCanReceiveFocus)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bCanReceiveFocus;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29817], params.ptr, cast(void*)0);
	}
	final void SetPerspective3D(UObject.Matrix* matPersp)
	{
		ubyte params[64];
		params[] = 0;
		*cast(UObject.Matrix*)params.ptr = *matPersp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29819], params.ptr, cast(void*)0);
		*matPersp = *cast(UObject.Matrix*)params.ptr;
	}
	final void SetView3D(UObject.Matrix* matView)
	{
		ubyte params[64];
		params[] = 0;
		*cast(UObject.Matrix*)params.ptr = *matView;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29821], params.ptr, cast(void*)0);
		*matView = *cast(UObject.Matrix*)params.ptr;
	}
	final void GetVisibleFrameRect(float* x0, float* y0, float* X1, float* Y1)
	{
		ubyte params[16];
		params[] = 0;
		*cast(float*)params.ptr = *x0;
		*cast(float*)&params[4] = *y0;
		*cast(float*)&params[8] = *X1;
		*cast(float*)&params[12] = *Y1;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29823], params.ptr, cast(void*)0);
		*x0 = *cast(float*)params.ptr;
		*y0 = *cast(float*)&params[4];
		*X1 = *cast(float*)&params[8];
		*Y1 = *cast(float*)&params[12];
	}
	final void SetAlignment(GFxMoviePlayer.GFxAlign A)
	{
		ubyte params[1];
		params[] = 0;
		*cast(GFxMoviePlayer.GFxAlign*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29825], params.ptr, cast(void*)0);
	}
	final void SetViewScaleMode(GFxMoviePlayer.GFxScaleMode SM)
	{
		ubyte params[1];
		params[] = 0;
		*cast(GFxMoviePlayer.GFxScaleMode*)params.ptr = SM;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29830], params.ptr, cast(void*)0);
	}
	final void SetViewport(int X, int Y, int Width, int Height)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = X;
		*cast(int*)&params[4] = Y;
		*cast(int*)&params[8] = Width;
		*cast(int*)&params[12] = Height;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29834], params.ptr, cast(void*)0);
	}
	final GameViewportClient GetGameViewportClient()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29836], params.ptr, cast(void*)0);
		return *cast(GameViewportClient*)params.ptr;
	}
	final void SetPriority(ubyte NewPriority)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = NewPriority;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29841], params.ptr, cast(void*)0);
	}
	final void PublishDataStoreValues()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29843], cast(void*)0, cast(void*)0);
	}
	final void RefreshDataStoreBindings()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29845], cast(void*)0, cast(void*)0);
	}
	final bool SetExternalTexture(ScriptString Resource, Texture pTexture)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Resource;
		*cast(Texture*)&params[12] = pTexture;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29846], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final void SetExternalInterface(UObject H)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UObject*)params.ptr = H;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29847], params.ptr, cast(void*)0);
	}
	final void SetForceSmoothAnimation(bool bEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnable;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29851], params.ptr, cast(void*)0);
	}
	final void SetTimingMode(GFxMoviePlayer.GFxTimingMode Mode)
	{
		ubyte params[1];
		params[] = 0;
		*cast(GFxMoviePlayer.GFxTimingMode*)params.ptr = Mode;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29854], params.ptr, cast(void*)0);
	}
	final void SetMovieInfo(SwfMovie Data)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SwfMovie*)params.ptr = Data;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29856], params.ptr, cast(void*)0);
	}
	final void ConditionalClearPause()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29860], cast(void*)0, cast(void*)0);
	}
	final void OnClose()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29862], cast(void*)0, cast(void*)0);
	}
	final void Close(bool Unload)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = Unload;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29865], params.ptr, cast(void*)0);
	}
	final void SetPause(bool bPausePlayback)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bPausePlayback;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29866], params.ptr, cast(void*)0);
	}
	final void OnPostAdvance(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29868], params.ptr, cast(void*)0);
	}
	final void PostAdvance(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29870], params.ptr, cast(void*)0);
	}
	final bool Start(bool StartPaused)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = StartPaused;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29873], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
