module UnrealScript.GFxUI.GFxMoviePlayer;

import ScriptClasses;
import UnrealScript.Helpers;
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
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class GFxUI.GFxMoviePlayer")); }
	private static __gshared GFxMoviePlayer mDefaultProperties;
	@property final static GFxMoviePlayer DefaultProperties() { mixin(MGDPC("GFxMoviePlayer", "GFxMoviePlayer GFxUI.Default__GFxMoviePlayer")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnFocusLost;
			ScriptFunction mOnFocusGained;
			ScriptFunction mConsoleCommand;
			ScriptFunction mGetPC;
			ScriptFunction mGetLP;
			ScriptFunction mInit;
			ScriptFunction mSetWidgetPathBinding;
			ScriptFunction mAdvance;
			ScriptFunction mPostWidgetInit;
			ScriptFunction mWidgetUnloaded;
			ScriptFunction mWidgetInitialized;
			ScriptFunction mActionScriptObject;
			ScriptFunction mActionScriptString;
			ScriptFunction mActionScriptFloat;
			ScriptFunction mActionScriptInt;
			ScriptFunction mActionScriptVoid;
			ScriptFunction mInvoke;
			ScriptFunction mActionScriptSetFunction;
			ScriptFunction mCreateArray;
			ScriptFunction mCreateObject;
			ScriptFunction mSetVariableStringArray;
			ScriptFunction mSetVariableFloatArray;
			ScriptFunction mSetVariableIntArray;
			ScriptFunction mSetVariableArray;
			ScriptFunction mGetVariableStringArray;
			ScriptFunction mGetVariableFloatArray;
			ScriptFunction mGetVariableIntArray;
			ScriptFunction mGetVariableArray;
			ScriptFunction mSetVariableObject;
			ScriptFunction mSetVariableString;
			ScriptFunction mSetVariableNumber;
			ScriptFunction mSetVariableBool;
			ScriptFunction mSetVariable;
			ScriptFunction mGetVariableObject;
			ScriptFunction mGetVariableString;
			ScriptFunction mGetVariableNumber;
			ScriptFunction mGetVariableBool;
			ScriptFunction mGetVariable;
			ScriptFunction mFilterButtonInput;
			ScriptFunction mFlushPlayerInput;
			ScriptFunction mClearFocusIgnoreKeys;
			ScriptFunction mAddFocusIgnoreKey;
			ScriptFunction mClearCaptureKeys;
			ScriptFunction mAddCaptureKey;
			ScriptFunction mSetMovieCanReceiveInput;
			ScriptFunction mSetMovieCanReceiveFocus;
			ScriptFunction mSetPerspective3D;
			ScriptFunction mSetView3D;
			ScriptFunction mGetVisibleFrameRect;
			ScriptFunction mSetAlignment;
			ScriptFunction mSetViewScaleMode;
			ScriptFunction mSetViewport;
			ScriptFunction mGetGameViewportClient;
			ScriptFunction mSetPriority;
			ScriptFunction mPublishDataStoreValues;
			ScriptFunction mRefreshDataStoreBindings;
			ScriptFunction mSetExternalTexture;
			ScriptFunction mSetExternalInterface;
			ScriptFunction mSetForceSmoothAnimation;
			ScriptFunction mSetTimingMode;
			ScriptFunction mSetMovieInfo;
			ScriptFunction mConditionalClearPause;
			ScriptFunction mOnClose;
			ScriptFunction mClose;
			ScriptFunction mSetPause;
			ScriptFunction mOnPostAdvance;
			ScriptFunction mPostAdvance;
			ScriptFunction mStart;
		}
		public @property static final
		{
			ScriptFunction OnFocusLost() { mixin(MGF("mOnFocusLost", "Function GFxUI.GFxMoviePlayer.OnFocusLost")); }
			ScriptFunction OnFocusGained() { mixin(MGF("mOnFocusGained", "Function GFxUI.GFxMoviePlayer.OnFocusGained")); }
			ScriptFunction ConsoleCommand() { mixin(MGF("mConsoleCommand", "Function GFxUI.GFxMoviePlayer.ConsoleCommand")); }
			ScriptFunction GetPC() { mixin(MGF("mGetPC", "Function GFxUI.GFxMoviePlayer.GetPC")); }
			ScriptFunction GetLP() { mixin(MGF("mGetLP", "Function GFxUI.GFxMoviePlayer.GetLP")); }
			ScriptFunction Init() { mixin(MGF("mInit", "Function GFxUI.GFxMoviePlayer.Init")); }
			ScriptFunction SetWidgetPathBinding() { mixin(MGF("mSetWidgetPathBinding", "Function GFxUI.GFxMoviePlayer.SetWidgetPathBinding")); }
			ScriptFunction Advance() { mixin(MGF("mAdvance", "Function GFxUI.GFxMoviePlayer.Advance")); }
			ScriptFunction PostWidgetInit() { mixin(MGF("mPostWidgetInit", "Function GFxUI.GFxMoviePlayer.PostWidgetInit")); }
			ScriptFunction WidgetUnloaded() { mixin(MGF("mWidgetUnloaded", "Function GFxUI.GFxMoviePlayer.WidgetUnloaded")); }
			ScriptFunction WidgetInitialized() { mixin(MGF("mWidgetInitialized", "Function GFxUI.GFxMoviePlayer.WidgetInitialized")); }
			ScriptFunction ActionScriptObject() { mixin(MGF("mActionScriptObject", "Function GFxUI.GFxMoviePlayer.ActionScriptObject")); }
			ScriptFunction ActionScriptString() { mixin(MGF("mActionScriptString", "Function GFxUI.GFxMoviePlayer.ActionScriptString")); }
			ScriptFunction ActionScriptFloat() { mixin(MGF("mActionScriptFloat", "Function GFxUI.GFxMoviePlayer.ActionScriptFloat")); }
			ScriptFunction ActionScriptInt() { mixin(MGF("mActionScriptInt", "Function GFxUI.GFxMoviePlayer.ActionScriptInt")); }
			ScriptFunction ActionScriptVoid() { mixin(MGF("mActionScriptVoid", "Function GFxUI.GFxMoviePlayer.ActionScriptVoid")); }
			ScriptFunction Invoke() { mixin(MGF("mInvoke", "Function GFxUI.GFxMoviePlayer.Invoke")); }
			ScriptFunction ActionScriptSetFunction() { mixin(MGF("mActionScriptSetFunction", "Function GFxUI.GFxMoviePlayer.ActionScriptSetFunction")); }
			ScriptFunction CreateArray() { mixin(MGF("mCreateArray", "Function GFxUI.GFxMoviePlayer.CreateArray")); }
			ScriptFunction CreateObject() { mixin(MGF("mCreateObject", "Function GFxUI.GFxMoviePlayer.CreateObject")); }
			ScriptFunction SetVariableStringArray() { mixin(MGF("mSetVariableStringArray", "Function GFxUI.GFxMoviePlayer.SetVariableStringArray")); }
			ScriptFunction SetVariableFloatArray() { mixin(MGF("mSetVariableFloatArray", "Function GFxUI.GFxMoviePlayer.SetVariableFloatArray")); }
			ScriptFunction SetVariableIntArray() { mixin(MGF("mSetVariableIntArray", "Function GFxUI.GFxMoviePlayer.SetVariableIntArray")); }
			ScriptFunction SetVariableArray() { mixin(MGF("mSetVariableArray", "Function GFxUI.GFxMoviePlayer.SetVariableArray")); }
			ScriptFunction GetVariableStringArray() { mixin(MGF("mGetVariableStringArray", "Function GFxUI.GFxMoviePlayer.GetVariableStringArray")); }
			ScriptFunction GetVariableFloatArray() { mixin(MGF("mGetVariableFloatArray", "Function GFxUI.GFxMoviePlayer.GetVariableFloatArray")); }
			ScriptFunction GetVariableIntArray() { mixin(MGF("mGetVariableIntArray", "Function GFxUI.GFxMoviePlayer.GetVariableIntArray")); }
			ScriptFunction GetVariableArray() { mixin(MGF("mGetVariableArray", "Function GFxUI.GFxMoviePlayer.GetVariableArray")); }
			ScriptFunction SetVariableObject() { mixin(MGF("mSetVariableObject", "Function GFxUI.GFxMoviePlayer.SetVariableObject")); }
			ScriptFunction SetVariableString() { mixin(MGF("mSetVariableString", "Function GFxUI.GFxMoviePlayer.SetVariableString")); }
			ScriptFunction SetVariableNumber() { mixin(MGF("mSetVariableNumber", "Function GFxUI.GFxMoviePlayer.SetVariableNumber")); }
			ScriptFunction SetVariableBool() { mixin(MGF("mSetVariableBool", "Function GFxUI.GFxMoviePlayer.SetVariableBool")); }
			ScriptFunction SetVariable() { mixin(MGF("mSetVariable", "Function GFxUI.GFxMoviePlayer.SetVariable")); }
			ScriptFunction GetVariableObject() { mixin(MGF("mGetVariableObject", "Function GFxUI.GFxMoviePlayer.GetVariableObject")); }
			ScriptFunction GetVariableString() { mixin(MGF("mGetVariableString", "Function GFxUI.GFxMoviePlayer.GetVariableString")); }
			ScriptFunction GetVariableNumber() { mixin(MGF("mGetVariableNumber", "Function GFxUI.GFxMoviePlayer.GetVariableNumber")); }
			ScriptFunction GetVariableBool() { mixin(MGF("mGetVariableBool", "Function GFxUI.GFxMoviePlayer.GetVariableBool")); }
			ScriptFunction GetVariable() { mixin(MGF("mGetVariable", "Function GFxUI.GFxMoviePlayer.GetVariable")); }
			ScriptFunction FilterButtonInput() { mixin(MGF("mFilterButtonInput", "Function GFxUI.GFxMoviePlayer.FilterButtonInput")); }
			ScriptFunction FlushPlayerInput() { mixin(MGF("mFlushPlayerInput", "Function GFxUI.GFxMoviePlayer.FlushPlayerInput")); }
			ScriptFunction ClearFocusIgnoreKeys() { mixin(MGF("mClearFocusIgnoreKeys", "Function GFxUI.GFxMoviePlayer.ClearFocusIgnoreKeys")); }
			ScriptFunction AddFocusIgnoreKey() { mixin(MGF("mAddFocusIgnoreKey", "Function GFxUI.GFxMoviePlayer.AddFocusIgnoreKey")); }
			ScriptFunction ClearCaptureKeys() { mixin(MGF("mClearCaptureKeys", "Function GFxUI.GFxMoviePlayer.ClearCaptureKeys")); }
			ScriptFunction AddCaptureKey() { mixin(MGF("mAddCaptureKey", "Function GFxUI.GFxMoviePlayer.AddCaptureKey")); }
			ScriptFunction SetMovieCanReceiveInput() { mixin(MGF("mSetMovieCanReceiveInput", "Function GFxUI.GFxMoviePlayer.SetMovieCanReceiveInput")); }
			ScriptFunction SetMovieCanReceiveFocus() { mixin(MGF("mSetMovieCanReceiveFocus", "Function GFxUI.GFxMoviePlayer.SetMovieCanReceiveFocus")); }
			ScriptFunction SetPerspective3D() { mixin(MGF("mSetPerspective3D", "Function GFxUI.GFxMoviePlayer.SetPerspective3D")); }
			ScriptFunction SetView3D() { mixin(MGF("mSetView3D", "Function GFxUI.GFxMoviePlayer.SetView3D")); }
			ScriptFunction GetVisibleFrameRect() { mixin(MGF("mGetVisibleFrameRect", "Function GFxUI.GFxMoviePlayer.GetVisibleFrameRect")); }
			ScriptFunction SetAlignment() { mixin(MGF("mSetAlignment", "Function GFxUI.GFxMoviePlayer.SetAlignment")); }
			ScriptFunction SetViewScaleMode() { mixin(MGF("mSetViewScaleMode", "Function GFxUI.GFxMoviePlayer.SetViewScaleMode")); }
			ScriptFunction SetViewport() { mixin(MGF("mSetViewport", "Function GFxUI.GFxMoviePlayer.SetViewport")); }
			ScriptFunction GetGameViewportClient() { mixin(MGF("mGetGameViewportClient", "Function GFxUI.GFxMoviePlayer.GetGameViewportClient")); }
			ScriptFunction SetPriority() { mixin(MGF("mSetPriority", "Function GFxUI.GFxMoviePlayer.SetPriority")); }
			ScriptFunction PublishDataStoreValues() { mixin(MGF("mPublishDataStoreValues", "Function GFxUI.GFxMoviePlayer.PublishDataStoreValues")); }
			ScriptFunction RefreshDataStoreBindings() { mixin(MGF("mRefreshDataStoreBindings", "Function GFxUI.GFxMoviePlayer.RefreshDataStoreBindings")); }
			ScriptFunction SetExternalTexture() { mixin(MGF("mSetExternalTexture", "Function GFxUI.GFxMoviePlayer.SetExternalTexture")); }
			ScriptFunction SetExternalInterface() { mixin(MGF("mSetExternalInterface", "Function GFxUI.GFxMoviePlayer.SetExternalInterface")); }
			ScriptFunction SetForceSmoothAnimation() { mixin(MGF("mSetForceSmoothAnimation", "Function GFxUI.GFxMoviePlayer.SetForceSmoothAnimation")); }
			ScriptFunction SetTimingMode() { mixin(MGF("mSetTimingMode", "Function GFxUI.GFxMoviePlayer.SetTimingMode")); }
			ScriptFunction SetMovieInfo() { mixin(MGF("mSetMovieInfo", "Function GFxUI.GFxMoviePlayer.SetMovieInfo")); }
			ScriptFunction ConditionalClearPause() { mixin(MGF("mConditionalClearPause", "Function GFxUI.GFxMoviePlayer.ConditionalClearPause")); }
			ScriptFunction OnClose() { mixin(MGF("mOnClose", "Function GFxUI.GFxMoviePlayer.OnClose")); }
			ScriptFunction Close() { mixin(MGF("mClose", "Function GFxUI.GFxMoviePlayer.Close")); }
			ScriptFunction SetPause() { mixin(MGF("mSetPause", "Function GFxUI.GFxMoviePlayer.SetPause")); }
			ScriptFunction OnPostAdvance() { mixin(MGF("mOnPostAdvance", "Function GFxUI.GFxMoviePlayer.OnPostAdvance")); }
			ScriptFunction PostAdvance() { mixin(MGF("mPostAdvance", "Function GFxUI.GFxMoviePlayer.PostAdvance")); }
			ScriptFunction Start() { mixin(MGF("mStart", "Function GFxUI.GFxMoviePlayer.Start")); }
		}
	}
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
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct GFxUI.GFxMoviePlayer.ASValue")); }
		@property final
		{
			auto ref
			{
				GFxMoviePlayer.ASType Type() { mixin(MGPS("GFxMoviePlayer.ASType", 0)); }
				float N() { mixin(MGPS("float", 8)); }
				ScriptString S() { mixin(MGPS("ScriptString", 12)); }
			}
			bool B() { mixin(MGBPS(4, 0x1)); }
			bool B(bool val) { mixin(MSBPS(4, 0x1)); }
		}
	}
	struct GFxWidgetBinding
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct GFxUI.GFxMoviePlayer.GFxWidgetBinding")); }
		@property final auto ref
		{
			ScriptName WidgetName() { mixin(MGPS("ScriptName", 0)); }
			ScriptClass WidgetClass() { mixin(MGPS("ScriptClass", 8)); }
		}
	}
	struct SoundThemeBinding
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct GFxUI.GFxMoviePlayer.SoundThemeBinding")); }
		@property final auto ref
		{
			ScriptName ThemeName() { mixin(MGPS("ScriptName", 0)); }
			UISoundTheme Theme() { mixin(MGPS("UISoundTheme", 8)); }
		}
	}
	struct GFxDataStoreBinding
	{
		private ubyte __buffer__[152];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct GFxUI.GFxMoviePlayer.GFxDataStoreBinding")); }
		@property final
		{
			auto ref
			{
				UIRoot.UIDataStoreBinding DataSource() { mixin(MGPS("UIRoot.UIDataStoreBinding", 0)); }
				ScriptString VarPath() { mixin(MGPS("ScriptString", 48)); }
				ScriptString ModelId() { mixin(MGPS("ScriptString", 60)); }
				ScriptString ControlId() { mixin(MGPS("ScriptString", 72)); }
				ScriptArray!(ScriptName) CellTags() { mixin(MGPS("ScriptArray!(ScriptName)", 88)); }
				ScriptArray!(ubyte) ModelIdUtf8() { mixin(MGPS("ScriptArray!(ubyte)", 100)); }
				ScriptArray!(ubyte) ControlIdUtf8() { mixin(MGPS("ScriptArray!(ubyte)", 112)); }
				// ERROR: Unsupported object class 'InterfaceProperty' for the property named 'ListDataProvider'!
				ScriptArray!(ScriptName) FullCellTags() { mixin(MGPS("ScriptArray!(ScriptName)", 132)); }
				Pointer ModelRef() { mixin(MGPS("Pointer", 144)); }
				Pointer ControlRef() { mixin(MGPS("Pointer", 148)); }
			}
			bool bEditable() { mixin(MGBPS(84, 0x1)); }
			bool bEditable(bool val) { mixin(MSBPS(84, 0x1)); }
		}
	}
	struct ExternalTexture
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct GFxUI.GFxMoviePlayer.ExternalTexture")); }
		@property final auto ref
		{
			ScriptString Resource() { mixin(MGPS("ScriptString", 0)); }
			Texture TextureVar() { mixin(MGPS("Texture", 12)); }
		}
	}
	@property final
	{
		auto ref
		{
			int LocalPlayerOwnerIndex() { mixin(MGPC("int", 208)); }
			SwfMovie MovieInfo() { mixin(MGPC("SwfMovie", 196)); }
			UObject ExternalInterface() { mixin(MGPC("UObject", 212)); }
			Pointer pMovie() { mixin(MGPC("Pointer", 60)); }
			Pointer pCaptureKeys() { mixin(MGPC("Pointer", 64)); }
			Pointer pFocusIgnoreKeys() { mixin(MGPC("Pointer", 68)); }
			// ERROR: Unsupported object class 'MapProperty' for the property named 'ASUClasses'!
			// ERROR: Unsupported object class 'MapProperty' for the property named 'ASUObjects'!
			int NextASUObject() { mixin(MGPC("int", 192)); }
			TextureRenderTarget2D RenderTexture() { mixin(MGPC("TextureRenderTarget2D", 204)); }
			ScriptArray!(ScriptName) CaptureKeys() { mixin(MGPC("ScriptArray!(ScriptName)", 216)); }
			ScriptArray!(ScriptName) FocusIgnoreKeys() { mixin(MGPC("ScriptArray!(ScriptName)", 228)); }
			ScriptArray!(GFxMoviePlayer.ExternalTexture) ExternalTextures() { mixin(MGPC("ScriptArray!(GFxMoviePlayer.ExternalTexture)", 240)); }
			ScriptArray!(GFxMoviePlayer.SoundThemeBinding) SoundThemes() { mixin(MGPC("ScriptArray!(GFxMoviePlayer.SoundThemeBinding)", 252)); }
			GFxMoviePlayer.GFxTimingMode TimingMode() { mixin(MGPC("GFxMoviePlayer.GFxTimingMode", 264)); }
			GFxMoviePlayer.GFxRenderTextureMode RenderTextureMode() { mixin(MGPC("GFxMoviePlayer.GFxRenderTextureMode", 265)); }
			ubyte Priority() { mixin(MGPC("ubyte", 266)); }
			ScriptArray!(GFxMoviePlayer.GFxDataStoreBinding) DataStoreBindings() { mixin(MGPC("ScriptArray!(GFxMoviePlayer.GFxDataStoreBinding)", 268)); }
			GFxDataStoreSubscriber DataStoreSubscriber() { mixin(MGPC("GFxDataStoreSubscriber", 280)); }
			ScriptArray!(GFxMoviePlayer.GFxWidgetBinding) WidgetBindings() { mixin(MGPC("ScriptArray!(GFxMoviePlayer.GFxWidgetBinding)", 284)); }
			// ERROR: Unsupported object class 'MapProperty' for the property named 'WidgetPathBindings'!
			ScriptArray!(GFxObject) ObjectValues() { mixin(MGPC("ScriptArray!(GFxObject)", 356)); }
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnPostAdvance__Delegate'!
		}
		bool bAutoPlay() { mixin(MGBPC(200, 0x80)); }
		bool bAutoPlay(bool val) { mixin(MSBPC(200, 0x80)); }
		bool bPauseGameWhileActive() { mixin(MGBPC(200, 0x100)); }
		bool bPauseGameWhileActive(bool val) { mixin(MSBPC(200, 0x100)); }
		bool bMovieIsOpen() { mixin(MGBPC(200, 0x1)); }
		bool bMovieIsOpen(bool val) { mixin(MSBPC(200, 0x1)); }
		bool bDisplayWithHudOff() { mixin(MGBPC(200, 0x2)); }
		bool bDisplayWithHudOff(bool val) { mixin(MSBPC(200, 0x2)); }
		bool bEnableGammaCorrection() { mixin(MGBPC(200, 0x4)); }
		bool bEnableGammaCorrection(bool val) { mixin(MSBPC(200, 0x4)); }
		bool bWidgetsInitializedThisFrame() { mixin(MGBPC(200, 0x8)); }
		bool bWidgetsInitializedThisFrame(bool val) { mixin(MSBPC(200, 0x8)); }
		bool bLogUnhandedWidgetInitializations() { mixin(MGBPC(200, 0x10)); }
		bool bLogUnhandedWidgetInitializations(bool val) { mixin(MSBPC(200, 0x10)); }
		bool bAllowInput() { mixin(MGBPC(200, 0x20)); }
		bool bAllowInput(bool val) { mixin(MSBPC(200, 0x20)); }
		bool bAllowFocus() { mixin(MGBPC(200, 0x40)); }
		bool bAllowFocus(bool val) { mixin(MSBPC(200, 0x40)); }
		bool bCloseOnLevelChange() { mixin(MGBPC(200, 0x200)); }
		bool bCloseOnLevelChange(bool val) { mixin(MSBPC(200, 0x200)); }
		bool bOnlyOwnerFocusable() { mixin(MGBPC(200, 0x400)); }
		bool bOnlyOwnerFocusable(bool val) { mixin(MSBPC(200, 0x400)); }
		bool bDiscardNonOwnerInput() { mixin(MGBPC(200, 0x800)); }
		bool bDiscardNonOwnerInput(bool val) { mixin(MSBPC(200, 0x800)); }
		bool bCaptureInput() { mixin(MGBPC(200, 0x1000)); }
		bool bCaptureInput(bool val) { mixin(MSBPC(200, 0x1000)); }
		bool bIgnoreMouseInput() { mixin(MGBPC(200, 0x2000)); }
		bool bIgnoreMouseInput(bool val) { mixin(MSBPC(200, 0x2000)); }
		bool bForceSmoothAnimation() { mixin(MGBPC(200, 0x4000)); }
		bool bForceSmoothAnimation(bool val) { mixin(MSBPC(200, 0x4000)); }
	}
final:
	void OnFocusLost(int LocalPlayerIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = LocalPlayerIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnFocusLost, params.ptr, cast(void*)0);
	}
	void OnFocusGained(int LocalPlayerIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = LocalPlayerIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnFocusGained, params.ptr, cast(void*)0);
	}
	void ConsoleCommand(ScriptString Command)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Command;
		(cast(ScriptObject)this).ProcessEvent(Functions.ConsoleCommand, params.ptr, cast(void*)0);
	}
	PlayerController GetPC()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPC, params.ptr, cast(void*)0);
		return *cast(PlayerController*)params.ptr;
	}
	LocalPlayer GetLP()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetLP, params.ptr, cast(void*)0);
		return *cast(LocalPlayer*)params.ptr;
	}
	void Init(LocalPlayer* LocPlay = null)
	{
		ubyte params[4];
		params[] = 0;
		if (LocPlay !is null)
			*cast(LocalPlayer*)params.ptr = *LocPlay;
		(cast(ScriptObject)this).ProcessEvent(Functions.Init, params.ptr, cast(void*)0);
	}
	void SetWidgetPathBinding(GFxObject WidgetToBind, ScriptName Path)
	{
		ubyte params[12];
		params[] = 0;
		*cast(GFxObject*)params.ptr = WidgetToBind;
		*cast(ScriptName*)&params[4] = Path;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetWidgetPathBinding, params.ptr, cast(void*)0);
	}
	void Advance(float Time)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = Time;
		(cast(ScriptObject)this).ProcessEvent(Functions.Advance, params.ptr, cast(void*)0);
	}
	void PostWidgetInit()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostWidgetInit, cast(void*)0, cast(void*)0);
	}
	bool WidgetUnloaded(ScriptName WidgetName, ScriptName WidgetPath, GFxObject Widget)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = WidgetName;
		*cast(ScriptName*)&params[8] = WidgetPath;
		*cast(GFxObject*)&params[16] = Widget;
		(cast(ScriptObject)this).ProcessEvent(Functions.WidgetUnloaded, params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	bool WidgetInitialized(ScriptName WidgetName, ScriptName WidgetPath, GFxObject Widget)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = WidgetName;
		*cast(ScriptName*)&params[8] = WidgetPath;
		*cast(GFxObject*)&params[16] = Widget;
		(cast(ScriptObject)this).ProcessEvent(Functions.WidgetInitialized, params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	GFxObject ActionScriptObject(ScriptString Path)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Path;
		(cast(ScriptObject)this).ProcessEvent(Functions.ActionScriptObject, params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[12];
	}
	ScriptString ActionScriptString(ScriptString Path)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Path;
		(cast(ScriptObject)this).ProcessEvent(Functions.ActionScriptString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	float ActionScriptFloat(ScriptString Path)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Path;
		(cast(ScriptObject)this).ProcessEvent(Functions.ActionScriptFloat, params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	int ActionScriptInt(ScriptString Path)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Path;
		(cast(ScriptObject)this).ProcessEvent(Functions.ActionScriptInt, params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	void ActionScriptVoid(ScriptString Path)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Path;
		(cast(ScriptObject)this).ProcessEvent(Functions.ActionScriptVoid, params.ptr, cast(void*)0);
	}
	GFxMoviePlayer.ASValue Invoke(ScriptString method, ScriptArray!(GFxMoviePlayer.ASValue) args)
	{
		ubyte params[48];
		params[] = 0;
		*cast(ScriptString*)params.ptr = method;
		*cast(ScriptArray!(GFxMoviePlayer.ASValue)*)&params[12] = args;
		(cast(ScriptObject)this).ProcessEvent(Functions.Invoke, params.ptr, cast(void*)0);
		return *cast(GFxMoviePlayer.ASValue*)&params[24];
	}
	void ActionScriptSetFunction(GFxObject pObject, ScriptString Member)
	{
		ubyte params[16];
		params[] = 0;
		*cast(GFxObject*)params.ptr = pObject;
		*cast(ScriptString*)&params[4] = Member;
		(cast(ScriptObject)this).ProcessEvent(Functions.ActionScriptSetFunction, params.ptr, cast(void*)0);
	}
	GFxObject CreateArray()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateArray, params.ptr, cast(void*)0);
		return *cast(GFxObject*)params.ptr;
	}
	GFxObject CreateObject(ScriptString ASClass, ScriptClass* Type = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ASClass;
		if (Type !is null)
			*cast(ScriptClass*)&params[12] = *Type;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateObject, params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[16];
	}
	bool SetVariableStringArray(ScriptString Path, int Index, ScriptArray!(ScriptString) Arg)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Path;
		*cast(int*)&params[12] = Index;
		*cast(ScriptArray!(ScriptString)*)&params[16] = Arg;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetVariableStringArray, params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	bool SetVariableFloatArray(ScriptString Path, int Index, ScriptArray!(float) Arg)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Path;
		*cast(int*)&params[12] = Index;
		*cast(ScriptArray!(float)*)&params[16] = Arg;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetVariableFloatArray, params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	bool SetVariableIntArray(ScriptString Path, int Index, ScriptArray!(int) Arg)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Path;
		*cast(int*)&params[12] = Index;
		*cast(ScriptArray!(int)*)&params[16] = Arg;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetVariableIntArray, params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	bool SetVariableArray(ScriptString Path, int Index, ScriptArray!(GFxMoviePlayer.ASValue) Arg)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Path;
		*cast(int*)&params[12] = Index;
		*cast(ScriptArray!(GFxMoviePlayer.ASValue)*)&params[16] = Arg;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetVariableArray, params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	bool GetVariableStringArray(ScriptString Path, int Index, ref ScriptArray!(ScriptString) Arg)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Path;
		*cast(int*)&params[12] = Index;
		*cast(ScriptArray!(ScriptString)*)&params[16] = Arg;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetVariableStringArray, params.ptr, cast(void*)0);
		Arg = *cast(ScriptArray!(ScriptString)*)&params[16];
		return *cast(bool*)&params[28];
	}
	bool GetVariableFloatArray(ScriptString Path, int Index, ref ScriptArray!(float) Arg)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Path;
		*cast(int*)&params[12] = Index;
		*cast(ScriptArray!(float)*)&params[16] = Arg;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetVariableFloatArray, params.ptr, cast(void*)0);
		Arg = *cast(ScriptArray!(float)*)&params[16];
		return *cast(bool*)&params[28];
	}
	bool GetVariableIntArray(ScriptString Path, int Index, ref ScriptArray!(int) Arg)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Path;
		*cast(int*)&params[12] = Index;
		*cast(ScriptArray!(int)*)&params[16] = Arg;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetVariableIntArray, params.ptr, cast(void*)0);
		Arg = *cast(ScriptArray!(int)*)&params[16];
		return *cast(bool*)&params[28];
	}
	bool GetVariableArray(ScriptString Path, int Index, ref ScriptArray!(GFxMoviePlayer.ASValue) Arg)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Path;
		*cast(int*)&params[12] = Index;
		*cast(ScriptArray!(GFxMoviePlayer.ASValue)*)&params[16] = Arg;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetVariableArray, params.ptr, cast(void*)0);
		Arg = *cast(ScriptArray!(GFxMoviePlayer.ASValue)*)&params[16];
		return *cast(bool*)&params[28];
	}
	void SetVariableObject(ScriptString Path, GFxObject pObject)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Path;
		*cast(GFxObject*)&params[12] = pObject;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetVariableObject, params.ptr, cast(void*)0);
	}
	void SetVariableString(ScriptString Path, ScriptString S)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Path;
		*cast(ScriptString*)&params[12] = S;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetVariableString, params.ptr, cast(void*)0);
	}
	void SetVariableNumber(ScriptString Path, float F)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Path;
		*cast(float*)&params[12] = F;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetVariableNumber, params.ptr, cast(void*)0);
	}
	void SetVariableBool(ScriptString Path, bool B)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Path;
		*cast(bool*)&params[12] = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetVariableBool, params.ptr, cast(void*)0);
	}
	void SetVariable(ScriptString Path, GFxMoviePlayer.ASValue Arg)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Path;
		*cast(GFxMoviePlayer.ASValue*)&params[12] = Arg;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetVariable, params.ptr, cast(void*)0);
	}
	GFxObject GetVariableObject(ScriptString Path, ScriptClass* Type = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Path;
		if (Type !is null)
			*cast(ScriptClass*)&params[12] = *Type;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetVariableObject, params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[16];
	}
	ScriptString GetVariableString(ScriptString Path)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Path;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetVariableString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	float GetVariableNumber(ScriptString Path)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Path;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetVariableNumber, params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	bool GetVariableBool(ScriptString Path)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Path;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetVariableBool, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	GFxMoviePlayer.ASValue GetVariable(ScriptString Path)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Path;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetVariable, params.ptr, cast(void*)0);
		return *cast(GFxMoviePlayer.ASValue*)&params[12];
	}
	bool FilterButtonInput(int ControllerId, ScriptName ButtonName, UObject.EInputEvent InputEvent)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		*cast(ScriptName*)&params[4] = ButtonName;
		*cast(UObject.EInputEvent*)&params[12] = InputEvent;
		(cast(ScriptObject)this).ProcessEvent(Functions.FilterButtonInput, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void FlushPlayerInput(bool capturekeysonly)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = capturekeysonly;
		(cast(ScriptObject)this).ProcessEvent(Functions.FlushPlayerInput, params.ptr, cast(void*)0);
	}
	void ClearFocusIgnoreKeys()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearFocusIgnoreKeys, cast(void*)0, cast(void*)0);
	}
	void AddFocusIgnoreKey(ScriptName Key)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = Key;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddFocusIgnoreKey, params.ptr, cast(void*)0);
	}
	void ClearCaptureKeys()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearCaptureKeys, cast(void*)0, cast(void*)0);
	}
	void AddCaptureKey(ScriptName Key)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = Key;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddCaptureKey, params.ptr, cast(void*)0);
	}
	void SetMovieCanReceiveInput(bool bCanReceiveInput)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bCanReceiveInput;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetMovieCanReceiveInput, params.ptr, cast(void*)0);
	}
	void SetMovieCanReceiveFocus(bool bCanReceiveFocus)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bCanReceiveFocus;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetMovieCanReceiveFocus, params.ptr, cast(void*)0);
	}
	void SetPerspective3D(ref in UObject.Matrix matPersp)
	{
		ubyte params[64];
		params[] = 0;
		*cast(UObject.Matrix*)params.ptr = cast(UObject.Matrix)matPersp;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPerspective3D, params.ptr, cast(void*)0);
	}
	void SetView3D(ref in UObject.Matrix matView)
	{
		ubyte params[64];
		params[] = 0;
		*cast(UObject.Matrix*)params.ptr = cast(UObject.Matrix)matView;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetView3D, params.ptr, cast(void*)0);
	}
	void GetVisibleFrameRect(ref float x0, ref float y0, ref float X1, ref float Y1)
	{
		ubyte params[16];
		params[] = 0;
		*cast(float*)params.ptr = x0;
		*cast(float*)&params[4] = y0;
		*cast(float*)&params[8] = X1;
		*cast(float*)&params[12] = Y1;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetVisibleFrameRect, params.ptr, cast(void*)0);
		x0 = *cast(float*)params.ptr;
		y0 = *cast(float*)&params[4];
		X1 = *cast(float*)&params[8];
		Y1 = *cast(float*)&params[12];
	}
	void SetAlignment(GFxMoviePlayer.GFxAlign A)
	{
		ubyte params[1];
		params[] = 0;
		*cast(GFxMoviePlayer.GFxAlign*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetAlignment, params.ptr, cast(void*)0);
	}
	void SetViewScaleMode(GFxMoviePlayer.GFxScaleMode SM)
	{
		ubyte params[1];
		params[] = 0;
		*cast(GFxMoviePlayer.GFxScaleMode*)params.ptr = SM;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetViewScaleMode, params.ptr, cast(void*)0);
	}
	void SetViewport(int X, int Y, int Width, int Height)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = X;
		*cast(int*)&params[4] = Y;
		*cast(int*)&params[8] = Width;
		*cast(int*)&params[12] = Height;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetViewport, params.ptr, cast(void*)0);
	}
	GameViewportClient GetGameViewportClient()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetGameViewportClient, params.ptr, cast(void*)0);
		return *cast(GameViewportClient*)params.ptr;
	}
	void SetPriority(ubyte NewPriority)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = NewPriority;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPriority, params.ptr, cast(void*)0);
	}
	void PublishDataStoreValues()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PublishDataStoreValues, cast(void*)0, cast(void*)0);
	}
	void RefreshDataStoreBindings()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RefreshDataStoreBindings, cast(void*)0, cast(void*)0);
	}
	bool SetExternalTexture(ScriptString Resource, Texture pTexture)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Resource;
		*cast(Texture*)&params[12] = pTexture;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetExternalTexture, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void SetExternalInterface(UObject H)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UObject*)params.ptr = H;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetExternalInterface, params.ptr, cast(void*)0);
	}
	void SetForceSmoothAnimation(bool bEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnable;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetForceSmoothAnimation, params.ptr, cast(void*)0);
	}
	void SetTimingMode(GFxMoviePlayer.GFxTimingMode Mode)
	{
		ubyte params[1];
		params[] = 0;
		*cast(GFxMoviePlayer.GFxTimingMode*)params.ptr = Mode;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetTimingMode, params.ptr, cast(void*)0);
	}
	void SetMovieInfo(SwfMovie Data)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SwfMovie*)params.ptr = Data;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetMovieInfo, params.ptr, cast(void*)0);
	}
	void ConditionalClearPause()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ConditionalClearPause, cast(void*)0, cast(void*)0);
	}
	void OnClose()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnClose, cast(void*)0, cast(void*)0);
	}
	void Close(bool* Unload = null)
	{
		ubyte params[4];
		params[] = 0;
		if (Unload !is null)
			*cast(bool*)params.ptr = *Unload;
		(cast(ScriptObject)this).ProcessEvent(Functions.Close, params.ptr, cast(void*)0);
	}
	void SetPause(bool* bPausePlayback = null)
	{
		ubyte params[4];
		params[] = 0;
		if (bPausePlayback !is null)
			*cast(bool*)params.ptr = *bPausePlayback;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPause, params.ptr, cast(void*)0);
	}
	void OnPostAdvance(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPostAdvance, params.ptr, cast(void*)0);
	}
	void PostAdvance(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostAdvance, params.ptr, cast(void*)0);
	}
	bool Start(bool* StartPaused = null)
	{
		ubyte params[8];
		params[] = 0;
		if (StartPaused !is null)
			*cast(bool*)params.ptr = *StartPaused;
		(cast(ScriptObject)this).ProcessEvent(Functions.Start, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
