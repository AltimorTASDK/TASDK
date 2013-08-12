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
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GFxUI.GFxMoviePlayer")); }
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
			ScriptFunction OnFocusLost() { return mOnFocusLost ? mOnFocusLost : (mOnFocusLost = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.OnFocusLost")); }
			ScriptFunction OnFocusGained() { return mOnFocusGained ? mOnFocusGained : (mOnFocusGained = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.OnFocusGained")); }
			ScriptFunction ConsoleCommand() { return mConsoleCommand ? mConsoleCommand : (mConsoleCommand = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.ConsoleCommand")); }
			ScriptFunction GetPC() { return mGetPC ? mGetPC : (mGetPC = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.GetPC")); }
			ScriptFunction GetLP() { return mGetLP ? mGetLP : (mGetLP = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.GetLP")); }
			ScriptFunction Init() { return mInit ? mInit : (mInit = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.Init")); }
			ScriptFunction SetWidgetPathBinding() { return mSetWidgetPathBinding ? mSetWidgetPathBinding : (mSetWidgetPathBinding = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.SetWidgetPathBinding")); }
			ScriptFunction Advance() { return mAdvance ? mAdvance : (mAdvance = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.Advance")); }
			ScriptFunction PostWidgetInit() { return mPostWidgetInit ? mPostWidgetInit : (mPostWidgetInit = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.PostWidgetInit")); }
			ScriptFunction WidgetUnloaded() { return mWidgetUnloaded ? mWidgetUnloaded : (mWidgetUnloaded = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.WidgetUnloaded")); }
			ScriptFunction WidgetInitialized() { return mWidgetInitialized ? mWidgetInitialized : (mWidgetInitialized = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.WidgetInitialized")); }
			ScriptFunction ActionScriptObject() { return mActionScriptObject ? mActionScriptObject : (mActionScriptObject = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.ActionScriptObject")); }
			ScriptFunction ActionScriptString() { return mActionScriptString ? mActionScriptString : (mActionScriptString = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.ActionScriptString")); }
			ScriptFunction ActionScriptFloat() { return mActionScriptFloat ? mActionScriptFloat : (mActionScriptFloat = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.ActionScriptFloat")); }
			ScriptFunction ActionScriptInt() { return mActionScriptInt ? mActionScriptInt : (mActionScriptInt = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.ActionScriptInt")); }
			ScriptFunction ActionScriptVoid() { return mActionScriptVoid ? mActionScriptVoid : (mActionScriptVoid = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.ActionScriptVoid")); }
			ScriptFunction Invoke() { return mInvoke ? mInvoke : (mInvoke = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.Invoke")); }
			ScriptFunction ActionScriptSetFunction() { return mActionScriptSetFunction ? mActionScriptSetFunction : (mActionScriptSetFunction = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.ActionScriptSetFunction")); }
			ScriptFunction CreateArray() { return mCreateArray ? mCreateArray : (mCreateArray = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.CreateArray")); }
			ScriptFunction CreateObject() { return mCreateObject ? mCreateObject : (mCreateObject = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.CreateObject")); }
			ScriptFunction SetVariableStringArray() { return mSetVariableStringArray ? mSetVariableStringArray : (mSetVariableStringArray = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.SetVariableStringArray")); }
			ScriptFunction SetVariableFloatArray() { return mSetVariableFloatArray ? mSetVariableFloatArray : (mSetVariableFloatArray = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.SetVariableFloatArray")); }
			ScriptFunction SetVariableIntArray() { return mSetVariableIntArray ? mSetVariableIntArray : (mSetVariableIntArray = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.SetVariableIntArray")); }
			ScriptFunction SetVariableArray() { return mSetVariableArray ? mSetVariableArray : (mSetVariableArray = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.SetVariableArray")); }
			ScriptFunction GetVariableStringArray() { return mGetVariableStringArray ? mGetVariableStringArray : (mGetVariableStringArray = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.GetVariableStringArray")); }
			ScriptFunction GetVariableFloatArray() { return mGetVariableFloatArray ? mGetVariableFloatArray : (mGetVariableFloatArray = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.GetVariableFloatArray")); }
			ScriptFunction GetVariableIntArray() { return mGetVariableIntArray ? mGetVariableIntArray : (mGetVariableIntArray = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.GetVariableIntArray")); }
			ScriptFunction GetVariableArray() { return mGetVariableArray ? mGetVariableArray : (mGetVariableArray = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.GetVariableArray")); }
			ScriptFunction SetVariableObject() { return mSetVariableObject ? mSetVariableObject : (mSetVariableObject = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.SetVariableObject")); }
			ScriptFunction SetVariableString() { return mSetVariableString ? mSetVariableString : (mSetVariableString = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.SetVariableString")); }
			ScriptFunction SetVariableNumber() { return mSetVariableNumber ? mSetVariableNumber : (mSetVariableNumber = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.SetVariableNumber")); }
			ScriptFunction SetVariableBool() { return mSetVariableBool ? mSetVariableBool : (mSetVariableBool = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.SetVariableBool")); }
			ScriptFunction SetVariable() { return mSetVariable ? mSetVariable : (mSetVariable = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.SetVariable")); }
			ScriptFunction GetVariableObject() { return mGetVariableObject ? mGetVariableObject : (mGetVariableObject = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.GetVariableObject")); }
			ScriptFunction GetVariableString() { return mGetVariableString ? mGetVariableString : (mGetVariableString = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.GetVariableString")); }
			ScriptFunction GetVariableNumber() { return mGetVariableNumber ? mGetVariableNumber : (mGetVariableNumber = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.GetVariableNumber")); }
			ScriptFunction GetVariableBool() { return mGetVariableBool ? mGetVariableBool : (mGetVariableBool = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.GetVariableBool")); }
			ScriptFunction GetVariable() { return mGetVariable ? mGetVariable : (mGetVariable = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.GetVariable")); }
			ScriptFunction FilterButtonInput() { return mFilterButtonInput ? mFilterButtonInput : (mFilterButtonInput = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.FilterButtonInput")); }
			ScriptFunction FlushPlayerInput() { return mFlushPlayerInput ? mFlushPlayerInput : (mFlushPlayerInput = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.FlushPlayerInput")); }
			ScriptFunction ClearFocusIgnoreKeys() { return mClearFocusIgnoreKeys ? mClearFocusIgnoreKeys : (mClearFocusIgnoreKeys = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.ClearFocusIgnoreKeys")); }
			ScriptFunction AddFocusIgnoreKey() { return mAddFocusIgnoreKey ? mAddFocusIgnoreKey : (mAddFocusIgnoreKey = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.AddFocusIgnoreKey")); }
			ScriptFunction ClearCaptureKeys() { return mClearCaptureKeys ? mClearCaptureKeys : (mClearCaptureKeys = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.ClearCaptureKeys")); }
			ScriptFunction AddCaptureKey() { return mAddCaptureKey ? mAddCaptureKey : (mAddCaptureKey = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.AddCaptureKey")); }
			ScriptFunction SetMovieCanReceiveInput() { return mSetMovieCanReceiveInput ? mSetMovieCanReceiveInput : (mSetMovieCanReceiveInput = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.SetMovieCanReceiveInput")); }
			ScriptFunction SetMovieCanReceiveFocus() { return mSetMovieCanReceiveFocus ? mSetMovieCanReceiveFocus : (mSetMovieCanReceiveFocus = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.SetMovieCanReceiveFocus")); }
			ScriptFunction SetPerspective3D() { return mSetPerspective3D ? mSetPerspective3D : (mSetPerspective3D = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.SetPerspective3D")); }
			ScriptFunction SetView3D() { return mSetView3D ? mSetView3D : (mSetView3D = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.SetView3D")); }
			ScriptFunction GetVisibleFrameRect() { return mGetVisibleFrameRect ? mGetVisibleFrameRect : (mGetVisibleFrameRect = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.GetVisibleFrameRect")); }
			ScriptFunction SetAlignment() { return mSetAlignment ? mSetAlignment : (mSetAlignment = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.SetAlignment")); }
			ScriptFunction SetViewScaleMode() { return mSetViewScaleMode ? mSetViewScaleMode : (mSetViewScaleMode = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.SetViewScaleMode")); }
			ScriptFunction SetViewport() { return mSetViewport ? mSetViewport : (mSetViewport = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.SetViewport")); }
			ScriptFunction GetGameViewportClient() { return mGetGameViewportClient ? mGetGameViewportClient : (mGetGameViewportClient = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.GetGameViewportClient")); }
			ScriptFunction SetPriority() { return mSetPriority ? mSetPriority : (mSetPriority = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.SetPriority")); }
			ScriptFunction PublishDataStoreValues() { return mPublishDataStoreValues ? mPublishDataStoreValues : (mPublishDataStoreValues = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.PublishDataStoreValues")); }
			ScriptFunction RefreshDataStoreBindings() { return mRefreshDataStoreBindings ? mRefreshDataStoreBindings : (mRefreshDataStoreBindings = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.RefreshDataStoreBindings")); }
			ScriptFunction SetExternalTexture() { return mSetExternalTexture ? mSetExternalTexture : (mSetExternalTexture = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.SetExternalTexture")); }
			ScriptFunction SetExternalInterface() { return mSetExternalInterface ? mSetExternalInterface : (mSetExternalInterface = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.SetExternalInterface")); }
			ScriptFunction SetForceSmoothAnimation() { return mSetForceSmoothAnimation ? mSetForceSmoothAnimation : (mSetForceSmoothAnimation = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.SetForceSmoothAnimation")); }
			ScriptFunction SetTimingMode() { return mSetTimingMode ? mSetTimingMode : (mSetTimingMode = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.SetTimingMode")); }
			ScriptFunction SetMovieInfo() { return mSetMovieInfo ? mSetMovieInfo : (mSetMovieInfo = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.SetMovieInfo")); }
			ScriptFunction ConditionalClearPause() { return mConditionalClearPause ? mConditionalClearPause : (mConditionalClearPause = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.ConditionalClearPause")); }
			ScriptFunction OnClose() { return mOnClose ? mOnClose : (mOnClose = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.OnClose")); }
			ScriptFunction Close() { return mClose ? mClose : (mClose = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.Close")); }
			ScriptFunction SetPause() { return mSetPause ? mSetPause : (mSetPause = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.SetPause")); }
			ScriptFunction OnPostAdvance() { return mOnPostAdvance ? mOnPostAdvance : (mOnPostAdvance = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.OnPostAdvance")); }
			ScriptFunction PostAdvance() { return mPostAdvance ? mPostAdvance : (mPostAdvance = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.PostAdvance")); }
			ScriptFunction Start() { return mStart ? mStart : (mStart = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxMoviePlayer.Start")); }
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
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct GFxUI.GFxMoviePlayer.ASValue")); }
		@property final
		{
			auto ref
			{
				GFxMoviePlayer.ASType Type() { return *cast(GFxMoviePlayer.ASType*)(cast(size_t)&this + 0); }
				float N() { return *cast(float*)(cast(size_t)&this + 8); }
				ScriptString S() { return *cast(ScriptString*)(cast(size_t)&this + 12); }
			}
			bool B() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x1) != 0; }
			bool B(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x1; } return val; }
		}
	}
	struct GFxWidgetBinding
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct GFxUI.GFxMoviePlayer.GFxWidgetBinding")); }
		@property final auto ref
		{
			ScriptName WidgetName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
			ScriptClass WidgetClass() { return *cast(ScriptClass*)(cast(size_t)&this + 8); }
		}
	}
	struct SoundThemeBinding
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct GFxUI.GFxMoviePlayer.SoundThemeBinding")); }
		@property final auto ref
		{
			ScriptName ThemeName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
			UISoundTheme Theme() { return *cast(UISoundTheme*)(cast(size_t)&this + 8); }
		}
	}
	struct GFxDataStoreBinding
	{
		private ubyte __buffer__[152];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct GFxUI.GFxMoviePlayer.GFxDataStoreBinding")); }
		@property final
		{
			auto ref
			{
				UIRoot.UIDataStoreBinding DataSource() { return *cast(UIRoot.UIDataStoreBinding*)(cast(size_t)&this + 0); }
				ScriptString VarPath() { return *cast(ScriptString*)(cast(size_t)&this + 48); }
				ScriptString ModelId() { return *cast(ScriptString*)(cast(size_t)&this + 60); }
				ScriptString ControlId() { return *cast(ScriptString*)(cast(size_t)&this + 72); }
				ScriptArray!(ScriptName) CellTags() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)&this + 88); }
				ScriptArray!(ubyte) ModelIdUtf8() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)&this + 100); }
				ScriptArray!(ubyte) ControlIdUtf8() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)&this + 112); }
				ScriptArray!(ScriptName) FullCellTags() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)&this + 132); }
				UObject.Pointer ModelRef() { return *cast(UObject.Pointer*)(cast(size_t)&this + 144); }
				UObject.Pointer ControlRef() { return *cast(UObject.Pointer*)(cast(size_t)&this + 148); }
			}
			bool bEditable() { return (*cast(uint*)(cast(size_t)&this + 84) & 0x1) != 0; }
			bool bEditable(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 84) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 84) &= ~0x1; } return val; }
		}
	}
	struct ExternalTexture
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct GFxUI.GFxMoviePlayer.ExternalTexture")); }
		@property final auto ref
		{
			ScriptString Resource() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
			// WARNING: Property 'Texture' has the same name as a defined type!
		}
	}
	@property final
	{
		auto ref
		{
			int LocalPlayerOwnerIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 208); }
			SwfMovie MovieInfo() { return *cast(SwfMovie*)(cast(size_t)cast(void*)this + 196); }
			UObject ExternalInterface() { return *cast(UObject*)(cast(size_t)cast(void*)this + 212); }
			UObject.Pointer pMovie() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 60); }
			UObject.Pointer pCaptureKeys() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 64); }
			UObject.Pointer pFocusIgnoreKeys() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 68); }
			int NextASUObject() { return *cast(int*)(cast(size_t)cast(void*)this + 192); }
			TextureRenderTarget2D RenderTexture() { return *cast(TextureRenderTarget2D*)(cast(size_t)cast(void*)this + 204); }
			ScriptArray!(ScriptName) CaptureKeys() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 216); }
			ScriptArray!(ScriptName) FocusIgnoreKeys() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 228); }
			ScriptArray!(GFxMoviePlayer.ExternalTexture) ExternalTextures() { return *cast(ScriptArray!(GFxMoviePlayer.ExternalTexture)*)(cast(size_t)cast(void*)this + 240); }
			ScriptArray!(GFxMoviePlayer.SoundThemeBinding) SoundThemes() { return *cast(ScriptArray!(GFxMoviePlayer.SoundThemeBinding)*)(cast(size_t)cast(void*)this + 252); }
			GFxMoviePlayer.GFxTimingMode TimingMode() { return *cast(GFxMoviePlayer.GFxTimingMode*)(cast(size_t)cast(void*)this + 264); }
			GFxMoviePlayer.GFxRenderTextureMode RenderTextureMode() { return *cast(GFxMoviePlayer.GFxRenderTextureMode*)(cast(size_t)cast(void*)this + 265); }
			ubyte Priority() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 266); }
			ScriptArray!(GFxMoviePlayer.GFxDataStoreBinding) DataStoreBindings() { return *cast(ScriptArray!(GFxMoviePlayer.GFxDataStoreBinding)*)(cast(size_t)cast(void*)this + 268); }
			GFxDataStoreSubscriber DataStoreSubscriber() { return *cast(GFxDataStoreSubscriber*)(cast(size_t)cast(void*)this + 280); }
			ScriptArray!(GFxMoviePlayer.GFxWidgetBinding) WidgetBindings() { return *cast(ScriptArray!(GFxMoviePlayer.GFxWidgetBinding)*)(cast(size_t)cast(void*)this + 284); }
			ScriptArray!(GFxObject) ObjectValues() { return *cast(ScriptArray!(GFxObject)*)(cast(size_t)cast(void*)this + 356); }
		}
		bool bAutoPlay() { return (*cast(uint*)(cast(size_t)cast(void*)this + 200) & 0x80) != 0; }
		bool bAutoPlay(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 200) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 200) &= ~0x80; } return val; }
		bool bPauseGameWhileActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 200) & 0x100) != 0; }
		bool bPauseGameWhileActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 200) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 200) &= ~0x100; } return val; }
		bool bMovieIsOpen() { return (*cast(uint*)(cast(size_t)cast(void*)this + 200) & 0x1) != 0; }
		bool bMovieIsOpen(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 200) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 200) &= ~0x1; } return val; }
		bool bDisplayWithHudOff() { return (*cast(uint*)(cast(size_t)cast(void*)this + 200) & 0x2) != 0; }
		bool bDisplayWithHudOff(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 200) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 200) &= ~0x2; } return val; }
		bool bEnableGammaCorrection() { return (*cast(uint*)(cast(size_t)cast(void*)this + 200) & 0x4) != 0; }
		bool bEnableGammaCorrection(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 200) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 200) &= ~0x4; } return val; }
		bool bWidgetsInitializedThisFrame() { return (*cast(uint*)(cast(size_t)cast(void*)this + 200) & 0x8) != 0; }
		bool bWidgetsInitializedThisFrame(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 200) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 200) &= ~0x8; } return val; }
		bool bLogUnhandedWidgetInitializations() { return (*cast(uint*)(cast(size_t)cast(void*)this + 200) & 0x10) != 0; }
		bool bLogUnhandedWidgetInitializations(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 200) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 200) &= ~0x10; } return val; }
		bool bAllowInput() { return (*cast(uint*)(cast(size_t)cast(void*)this + 200) & 0x20) != 0; }
		bool bAllowInput(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 200) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 200) &= ~0x20; } return val; }
		bool bAllowFocus() { return (*cast(uint*)(cast(size_t)cast(void*)this + 200) & 0x40) != 0; }
		bool bAllowFocus(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 200) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 200) &= ~0x40; } return val; }
		bool bCloseOnLevelChange() { return (*cast(uint*)(cast(size_t)cast(void*)this + 200) & 0x200) != 0; }
		bool bCloseOnLevelChange(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 200) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 200) &= ~0x200; } return val; }
		bool bOnlyOwnerFocusable() { return (*cast(uint*)(cast(size_t)cast(void*)this + 200) & 0x400) != 0; }
		bool bOnlyOwnerFocusable(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 200) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 200) &= ~0x400; } return val; }
		bool bDiscardNonOwnerInput() { return (*cast(uint*)(cast(size_t)cast(void*)this + 200) & 0x800) != 0; }
		bool bDiscardNonOwnerInput(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 200) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 200) &= ~0x800; } return val; }
		bool bCaptureInput() { return (*cast(uint*)(cast(size_t)cast(void*)this + 200) & 0x1000) != 0; }
		bool bCaptureInput(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 200) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 200) &= ~0x1000; } return val; }
		bool bIgnoreMouseInput() { return (*cast(uint*)(cast(size_t)cast(void*)this + 200) & 0x2000) != 0; }
		bool bIgnoreMouseInput(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 200) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 200) &= ~0x2000; } return val; }
		bool bForceSmoothAnimation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 200) & 0x4000) != 0; }
		bool bForceSmoothAnimation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 200) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 200) &= ~0x4000; } return val; }
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
	void Init(LocalPlayer LocPlay)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = LocPlay;
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
	GFxObject CreateObject(ScriptString ASClass, ScriptClass Type)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ASClass;
		*cast(ScriptClass*)&params[12] = Type;
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
	bool GetVariableStringArray(ScriptString Path, int Index, ScriptArray!(ScriptString)* Arg)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Path;
		*cast(int*)&params[12] = Index;
		*cast(ScriptArray!(ScriptString)*)&params[16] = *Arg;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetVariableStringArray, params.ptr, cast(void*)0);
		*Arg = *cast(ScriptArray!(ScriptString)*)&params[16];
		return *cast(bool*)&params[28];
	}
	bool GetVariableFloatArray(ScriptString Path, int Index, ScriptArray!(float)* Arg)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Path;
		*cast(int*)&params[12] = Index;
		*cast(ScriptArray!(float)*)&params[16] = *Arg;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetVariableFloatArray, params.ptr, cast(void*)0);
		*Arg = *cast(ScriptArray!(float)*)&params[16];
		return *cast(bool*)&params[28];
	}
	bool GetVariableIntArray(ScriptString Path, int Index, ScriptArray!(int)* Arg)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Path;
		*cast(int*)&params[12] = Index;
		*cast(ScriptArray!(int)*)&params[16] = *Arg;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetVariableIntArray, params.ptr, cast(void*)0);
		*Arg = *cast(ScriptArray!(int)*)&params[16];
		return *cast(bool*)&params[28];
	}
	bool GetVariableArray(ScriptString Path, int Index, ScriptArray!(GFxMoviePlayer.ASValue)* Arg)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Path;
		*cast(int*)&params[12] = Index;
		*cast(ScriptArray!(GFxMoviePlayer.ASValue)*)&params[16] = *Arg;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetVariableArray, params.ptr, cast(void*)0);
		*Arg = *cast(ScriptArray!(GFxMoviePlayer.ASValue)*)&params[16];
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
	GFxObject GetVariableObject(ScriptString Path, ScriptClass Type)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Path;
		*cast(ScriptClass*)&params[12] = Type;
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
	void SetPerspective3D(UObject.Matrix* matPersp)
	{
		ubyte params[64];
		params[] = 0;
		*cast(UObject.Matrix*)params.ptr = *matPersp;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPerspective3D, params.ptr, cast(void*)0);
		*matPersp = *cast(UObject.Matrix*)params.ptr;
	}
	void SetView3D(UObject.Matrix* matView)
	{
		ubyte params[64];
		params[] = 0;
		*cast(UObject.Matrix*)params.ptr = *matView;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetView3D, params.ptr, cast(void*)0);
		*matView = *cast(UObject.Matrix*)params.ptr;
	}
	void GetVisibleFrameRect(float* x0, float* y0, float* X1, float* Y1)
	{
		ubyte params[16];
		params[] = 0;
		*cast(float*)params.ptr = *x0;
		*cast(float*)&params[4] = *y0;
		*cast(float*)&params[8] = *X1;
		*cast(float*)&params[12] = *Y1;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetVisibleFrameRect, params.ptr, cast(void*)0);
		*x0 = *cast(float*)params.ptr;
		*y0 = *cast(float*)&params[4];
		*X1 = *cast(float*)&params[8];
		*Y1 = *cast(float*)&params[12];
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
	void Close(bool Unload)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = Unload;
		(cast(ScriptObject)this).ProcessEvent(Functions.Close, params.ptr, cast(void*)0);
	}
	void SetPause(bool bPausePlayback)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bPausePlayback;
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
	bool Start(bool StartPaused)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = StartPaused;
		(cast(ScriptObject)this).ProcessEvent(Functions.Start, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
