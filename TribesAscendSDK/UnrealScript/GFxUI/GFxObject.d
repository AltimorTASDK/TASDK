module UnrealScript.GFxUI.GFxObject;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.GFxUI.GFxMoviePlayer;
import UnrealScript.Engine.TranslationContext;

extern(C++) interface GFxObject : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class GFxUI.GFxObject")); }
	private static __gshared GFxObject mDefaultProperties;
	@property final static GFxObject DefaultProperties() { mixin(MGDPC("GFxObject", "GFxObject GFxUI.Default__GFxObject")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGet;
			ScriptFunction mGetBool;
			ScriptFunction mGetFloat;
			ScriptFunction mGetString;
			ScriptFunction mGetObject;
			ScriptFunction mSet;
			ScriptFunction mSetBool;
			ScriptFunction mSetFloat;
			ScriptFunction mSetString;
			ScriptFunction mSetObject;
			ScriptFunction mSetFunction;
			ScriptFunction mTranslateString;
			ScriptFunction mGetDisplayInfo;
			ScriptFunction mGetPosition;
			ScriptFunction mGetColorTransform;
			ScriptFunction mGetDisplayMatrix;
			ScriptFunction mSetDisplayInfo;
			ScriptFunction mSetPosition;
			ScriptFunction mSetColorTransform;
			ScriptFunction mSetDisplayMatrix;
			ScriptFunction mSetDisplayMatrix3D;
			ScriptFunction mSetVisible;
			ScriptFunction mGetText;
			ScriptFunction mSetText;
			ScriptFunction mGetElement;
			ScriptFunction mGetElementObject;
			ScriptFunction mGetElementBool;
			ScriptFunction mGetElementFloat;
			ScriptFunction mGetElementString;
			ScriptFunction mSetElement;
			ScriptFunction mSetElementObject;
			ScriptFunction mSetElementBool;
			ScriptFunction mSetElementFloat;
			ScriptFunction mSetElementString;
			ScriptFunction mGetElementDisplayInfo;
			ScriptFunction mGetElementDisplayMatrix;
			ScriptFunction mSetElementDisplayInfo;
			ScriptFunction mSetElementDisplayMatrix;
			ScriptFunction mSetElementVisible;
			ScriptFunction mSetElementPosition;
			ScriptFunction mSetElementColorTransform;
			ScriptFunction mGetElementMember;
			ScriptFunction mGetElementMemberObject;
			ScriptFunction mGetElementMemberBool;
			ScriptFunction mGetElementMemberFloat;
			ScriptFunction mGetElementMemberString;
			ScriptFunction mSetElementMember;
			ScriptFunction mSetElementMemberObject;
			ScriptFunction mSetElementMemberBool;
			ScriptFunction mSetElementMemberFloat;
			ScriptFunction mSetElementMemberString;
			ScriptFunction mActionScriptSetFunction;
			ScriptFunction mActionScriptSetFunctionOn;
			ScriptFunction mInvoke;
			ScriptFunction mActionScriptVoid;
			ScriptFunction mActionScriptInt;
			ScriptFunction mActionScriptFloat;
			ScriptFunction mActionScriptString;
			ScriptFunction mActionScriptObject;
			ScriptFunction mActionScriptArray;
			ScriptFunction mGotoAndPlay;
			ScriptFunction mGotoAndPlayI;
			ScriptFunction mGotoAndStop;
			ScriptFunction mGotoAndStopI;
			ScriptFunction mCreateEmptyMovieClip;
			ScriptFunction mAttachMovie;
			ScriptFunction mWidgetInitialized;
			ScriptFunction mWidgetUnloaded;
		}
		public @property static final
		{
			ScriptFunction Get() { mixin(MGF("mGet", "Function GFxUI.GFxObject.Get")); }
			ScriptFunction GetBool() { mixin(MGF("mGetBool", "Function GFxUI.GFxObject.GetBool")); }
			ScriptFunction GetFloat() { mixin(MGF("mGetFloat", "Function GFxUI.GFxObject.GetFloat")); }
			ScriptFunction GetString() { mixin(MGF("mGetString", "Function GFxUI.GFxObject.GetString")); }
			ScriptFunction GetObject() { mixin(MGF("mGetObject", "Function GFxUI.GFxObject.GetObject")); }
			ScriptFunction Set() { mixin(MGF("mSet", "Function GFxUI.GFxObject.Set")); }
			ScriptFunction SetBool() { mixin(MGF("mSetBool", "Function GFxUI.GFxObject.SetBool")); }
			ScriptFunction SetFloat() { mixin(MGF("mSetFloat", "Function GFxUI.GFxObject.SetFloat")); }
			ScriptFunction SetString() { mixin(MGF("mSetString", "Function GFxUI.GFxObject.SetString")); }
			ScriptFunction SetObject() { mixin(MGF("mSetObject", "Function GFxUI.GFxObject.SetObject")); }
			ScriptFunction SetFunction() { mixin(MGF("mSetFunction", "Function GFxUI.GFxObject.SetFunction")); }
			ScriptFunction TranslateString() { mixin(MGF("mTranslateString", "Function GFxUI.GFxObject.TranslateString")); }
			ScriptFunction GetDisplayInfo() { mixin(MGF("mGetDisplayInfo", "Function GFxUI.GFxObject.GetDisplayInfo")); }
			ScriptFunction GetPosition() { mixin(MGF("mGetPosition", "Function GFxUI.GFxObject.GetPosition")); }
			ScriptFunction GetColorTransform() { mixin(MGF("mGetColorTransform", "Function GFxUI.GFxObject.GetColorTransform")); }
			ScriptFunction GetDisplayMatrix() { mixin(MGF("mGetDisplayMatrix", "Function GFxUI.GFxObject.GetDisplayMatrix")); }
			ScriptFunction SetDisplayInfo() { mixin(MGF("mSetDisplayInfo", "Function GFxUI.GFxObject.SetDisplayInfo")); }
			ScriptFunction SetPosition() { mixin(MGF("mSetPosition", "Function GFxUI.GFxObject.SetPosition")); }
			ScriptFunction SetColorTransform() { mixin(MGF("mSetColorTransform", "Function GFxUI.GFxObject.SetColorTransform")); }
			ScriptFunction SetDisplayMatrix() { mixin(MGF("mSetDisplayMatrix", "Function GFxUI.GFxObject.SetDisplayMatrix")); }
			ScriptFunction SetDisplayMatrix3D() { mixin(MGF("mSetDisplayMatrix3D", "Function GFxUI.GFxObject.SetDisplayMatrix3D")); }
			ScriptFunction SetVisible() { mixin(MGF("mSetVisible", "Function GFxUI.GFxObject.SetVisible")); }
			ScriptFunction GetText() { mixin(MGF("mGetText", "Function GFxUI.GFxObject.GetText")); }
			ScriptFunction SetText() { mixin(MGF("mSetText", "Function GFxUI.GFxObject.SetText")); }
			ScriptFunction GetElement() { mixin(MGF("mGetElement", "Function GFxUI.GFxObject.GetElement")); }
			ScriptFunction GetElementObject() { mixin(MGF("mGetElementObject", "Function GFxUI.GFxObject.GetElementObject")); }
			ScriptFunction GetElementBool() { mixin(MGF("mGetElementBool", "Function GFxUI.GFxObject.GetElementBool")); }
			ScriptFunction GetElementFloat() { mixin(MGF("mGetElementFloat", "Function GFxUI.GFxObject.GetElementFloat")); }
			ScriptFunction GetElementString() { mixin(MGF("mGetElementString", "Function GFxUI.GFxObject.GetElementString")); }
			ScriptFunction SetElement() { mixin(MGF("mSetElement", "Function GFxUI.GFxObject.SetElement")); }
			ScriptFunction SetElementObject() { mixin(MGF("mSetElementObject", "Function GFxUI.GFxObject.SetElementObject")); }
			ScriptFunction SetElementBool() { mixin(MGF("mSetElementBool", "Function GFxUI.GFxObject.SetElementBool")); }
			ScriptFunction SetElementFloat() { mixin(MGF("mSetElementFloat", "Function GFxUI.GFxObject.SetElementFloat")); }
			ScriptFunction SetElementString() { mixin(MGF("mSetElementString", "Function GFxUI.GFxObject.SetElementString")); }
			ScriptFunction GetElementDisplayInfo() { mixin(MGF("mGetElementDisplayInfo", "Function GFxUI.GFxObject.GetElementDisplayInfo")); }
			ScriptFunction GetElementDisplayMatrix() { mixin(MGF("mGetElementDisplayMatrix", "Function GFxUI.GFxObject.GetElementDisplayMatrix")); }
			ScriptFunction SetElementDisplayInfo() { mixin(MGF("mSetElementDisplayInfo", "Function GFxUI.GFxObject.SetElementDisplayInfo")); }
			ScriptFunction SetElementDisplayMatrix() { mixin(MGF("mSetElementDisplayMatrix", "Function GFxUI.GFxObject.SetElementDisplayMatrix")); }
			ScriptFunction SetElementVisible() { mixin(MGF("mSetElementVisible", "Function GFxUI.GFxObject.SetElementVisible")); }
			ScriptFunction SetElementPosition() { mixin(MGF("mSetElementPosition", "Function GFxUI.GFxObject.SetElementPosition")); }
			ScriptFunction SetElementColorTransform() { mixin(MGF("mSetElementColorTransform", "Function GFxUI.GFxObject.SetElementColorTransform")); }
			ScriptFunction GetElementMember() { mixin(MGF("mGetElementMember", "Function GFxUI.GFxObject.GetElementMember")); }
			ScriptFunction GetElementMemberObject() { mixin(MGF("mGetElementMemberObject", "Function GFxUI.GFxObject.GetElementMemberObject")); }
			ScriptFunction GetElementMemberBool() { mixin(MGF("mGetElementMemberBool", "Function GFxUI.GFxObject.GetElementMemberBool")); }
			ScriptFunction GetElementMemberFloat() { mixin(MGF("mGetElementMemberFloat", "Function GFxUI.GFxObject.GetElementMemberFloat")); }
			ScriptFunction GetElementMemberString() { mixin(MGF("mGetElementMemberString", "Function GFxUI.GFxObject.GetElementMemberString")); }
			ScriptFunction SetElementMember() { mixin(MGF("mSetElementMember", "Function GFxUI.GFxObject.SetElementMember")); }
			ScriptFunction SetElementMemberObject() { mixin(MGF("mSetElementMemberObject", "Function GFxUI.GFxObject.SetElementMemberObject")); }
			ScriptFunction SetElementMemberBool() { mixin(MGF("mSetElementMemberBool", "Function GFxUI.GFxObject.SetElementMemberBool")); }
			ScriptFunction SetElementMemberFloat() { mixin(MGF("mSetElementMemberFloat", "Function GFxUI.GFxObject.SetElementMemberFloat")); }
			ScriptFunction SetElementMemberString() { mixin(MGF("mSetElementMemberString", "Function GFxUI.GFxObject.SetElementMemberString")); }
			ScriptFunction ActionScriptSetFunction() { mixin(MGF("mActionScriptSetFunction", "Function GFxUI.GFxObject.ActionScriptSetFunction")); }
			ScriptFunction ActionScriptSetFunctionOn() { mixin(MGF("mActionScriptSetFunctionOn", "Function GFxUI.GFxObject.ActionScriptSetFunctionOn")); }
			ScriptFunction Invoke() { mixin(MGF("mInvoke", "Function GFxUI.GFxObject.Invoke")); }
			ScriptFunction ActionScriptVoid() { mixin(MGF("mActionScriptVoid", "Function GFxUI.GFxObject.ActionScriptVoid")); }
			ScriptFunction ActionScriptInt() { mixin(MGF("mActionScriptInt", "Function GFxUI.GFxObject.ActionScriptInt")); }
			ScriptFunction ActionScriptFloat() { mixin(MGF("mActionScriptFloat", "Function GFxUI.GFxObject.ActionScriptFloat")); }
			ScriptFunction ActionScriptString() { mixin(MGF("mActionScriptString", "Function GFxUI.GFxObject.ActionScriptString")); }
			ScriptFunction ActionScriptObject() { mixin(MGF("mActionScriptObject", "Function GFxUI.GFxObject.ActionScriptObject")); }
			ScriptFunction ActionScriptArray() { mixin(MGF("mActionScriptArray", "Function GFxUI.GFxObject.ActionScriptArray")); }
			ScriptFunction GotoAndPlay() { mixin(MGF("mGotoAndPlay", "Function GFxUI.GFxObject.GotoAndPlay")); }
			ScriptFunction GotoAndPlayI() { mixin(MGF("mGotoAndPlayI", "Function GFxUI.GFxObject.GotoAndPlayI")); }
			ScriptFunction GotoAndStop() { mixin(MGF("mGotoAndStop", "Function GFxUI.GFxObject.GotoAndStop")); }
			ScriptFunction GotoAndStopI() { mixin(MGF("mGotoAndStopI", "Function GFxUI.GFxObject.GotoAndStopI")); }
			ScriptFunction CreateEmptyMovieClip() { mixin(MGF("mCreateEmptyMovieClip", "Function GFxUI.GFxObject.CreateEmptyMovieClip")); }
			ScriptFunction AttachMovie() { mixin(MGF("mAttachMovie", "Function GFxUI.GFxObject.AttachMovie")); }
			ScriptFunction WidgetInitialized() { mixin(MGF("mWidgetInitialized", "Function GFxUI.GFxObject.WidgetInitialized")); }
			ScriptFunction WidgetUnloaded() { mixin(MGF("mWidgetUnloaded", "Function GFxUI.GFxObject.WidgetUnloaded")); }
		}
	}
	struct ASDisplayInfo
	{
		private ubyte __buffer__[44];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct GFxUI.GFxObject.ASDisplayInfo")); }
		@property final
		{
			auto ref
			{
				float Alpha() { mixin(MGPS("float", 36)); }
				float ZScale() { mixin(MGPS("float", 32)); }
				float YScale() { mixin(MGPS("float", 28)); }
				float XScale() { mixin(MGPS("float", 24)); }
				float YRotation() { mixin(MGPS("float", 20)); }
				float XRotation() { mixin(MGPS("float", 16)); }
				float Rotation() { mixin(MGPS("float", 12)); }
				float Z() { mixin(MGPS("float", 8)); }
				float Y() { mixin(MGPS("float", 4)); }
				float X() { mixin(MGPS("float", 0)); }
			}
			bool hasVisible() { mixin(MGBPS(40, 0x800)); }
			bool hasVisible(bool val) { mixin(MSBPS(40, 0x800)); }
			bool hasAlpha() { mixin(MGBPS(40, 0x400)); }
			bool hasAlpha(bool val) { mixin(MSBPS(40, 0x400)); }
			bool hasZScale() { mixin(MGBPS(40, 0x200)); }
			bool hasZScale(bool val) { mixin(MSBPS(40, 0x200)); }
			bool hasYScale() { mixin(MGBPS(40, 0x100)); }
			bool hasYScale(bool val) { mixin(MSBPS(40, 0x100)); }
			bool hasXScale() { mixin(MGBPS(40, 0x80)); }
			bool hasXScale(bool val) { mixin(MSBPS(40, 0x80)); }
			bool hasYRotation() { mixin(MGBPS(40, 0x40)); }
			bool hasYRotation(bool val) { mixin(MSBPS(40, 0x40)); }
			bool hasXRotation() { mixin(MGBPS(40, 0x20)); }
			bool hasXRotation(bool val) { mixin(MSBPS(40, 0x20)); }
			bool hasRotation() { mixin(MGBPS(40, 0x10)); }
			bool hasRotation(bool val) { mixin(MSBPS(40, 0x10)); }
			bool hasZ() { mixin(MGBPS(40, 0x8)); }
			bool hasZ(bool val) { mixin(MSBPS(40, 0x8)); }
			bool hasY() { mixin(MGBPS(40, 0x4)); }
			bool hasY(bool val) { mixin(MSBPS(40, 0x4)); }
			bool hasX() { mixin(MGBPS(40, 0x2)); }
			bool hasX(bool val) { mixin(MSBPS(40, 0x2)); }
			bool Visible() { mixin(MGBPS(40, 0x1)); }
			bool Visible(bool val) { mixin(MSBPS(40, 0x1)); }
		}
	}
	struct ASColorTransform
	{
		private ubyte __buffer__[32];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct GFxUI.GFxObject.ASColorTransform")); }
		@property final auto ref
		{
			UObject.LinearColor Add() { mixin(MGPS("UObject.LinearColor", 16)); }
			UObject.LinearColor Multiply() { mixin(MGPS("UObject.LinearColor", 0)); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(GFxMoviePlayer.GFxWidgetBinding) SubWidgetBindings() { mixin(MGPC("ScriptArray!(GFxMoviePlayer.GFxWidgetBinding)", 108)); }
		int Value() { mixin(MGPC("int", 60)); }
	}
final:
	GFxMoviePlayer.ASValue Get(ScriptString Member)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Member;
		(cast(ScriptObject)this).ProcessEvent(Functions.Get, params.ptr, cast(void*)0);
		return *cast(GFxMoviePlayer.ASValue*)&params[12];
	}
	bool GetBool(ScriptString Member)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Member;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBool, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	float GetFloat(ScriptString Member)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Member;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFloat, params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	ScriptString GetString(ScriptString Member)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Member;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	GFxObject GetObject(ScriptString Member, ScriptClass* Type = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Member;
		if (Type !is null)
			*cast(ScriptClass*)&params[12] = *Type;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetObject, params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[16];
	}
	void Set(ScriptString Member, GFxMoviePlayer.ASValue Arg)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Member;
		*cast(GFxMoviePlayer.ASValue*)&params[12] = Arg;
		(cast(ScriptObject)this).ProcessEvent(Functions.Set, params.ptr, cast(void*)0);
	}
	void SetBool(ScriptString Member, bool B)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Member;
		*cast(bool*)&params[12] = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetBool, params.ptr, cast(void*)0);
	}
	void SetFloat(ScriptString Member, float F)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Member;
		*cast(float*)&params[12] = F;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFloat, params.ptr, cast(void*)0);
	}
	void SetString(ScriptString Member, ScriptString S, TranslationContext* InContext = null)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Member;
		*cast(ScriptString*)&params[12] = S;
		if (InContext !is null)
			*cast(TranslationContext*)&params[24] = *InContext;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetString, params.ptr, cast(void*)0);
	}
	void SetObject(ScriptString Member, GFxObject val)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Member;
		*cast(GFxObject*)&params[12] = val;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetObject, params.ptr, cast(void*)0);
	}
	void SetFunction(ScriptString Member, UObject context, ScriptName fname)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Member;
		*cast(UObject*)&params[12] = context;
		*cast(ScriptName*)&params[16] = fname;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFunction, params.ptr, cast(void*)0);
	}
	static ScriptString TranslateString(ScriptString StringToTranslate, TranslationContext* InContext = null)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = StringToTranslate;
		if (InContext !is null)
			*cast(TranslationContext*)&params[12] = *InContext;
		StaticClass.ProcessEvent(Functions.TranslateString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[16];
	}
	GFxObject.ASDisplayInfo GetDisplayInfo()
	{
		ubyte params[44];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDisplayInfo, params.ptr, cast(void*)0);
		return *cast(GFxObject.ASDisplayInfo*)params.ptr;
	}
	bool GetPosition(ref float X, ref float Y)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = X;
		*cast(float*)&params[4] = Y;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPosition, params.ptr, cast(void*)0);
		X = *cast(float*)params.ptr;
		Y = *cast(float*)&params[4];
		return *cast(bool*)&params[8];
	}
	GFxObject.ASColorTransform GetColorTransform()
	{
		ubyte params[32];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetColorTransform, params.ptr, cast(void*)0);
		return *cast(GFxObject.ASColorTransform*)params.ptr;
	}
	UObject.Matrix GetDisplayMatrix()
	{
		ubyte params[64];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDisplayMatrix, params.ptr, cast(void*)0);
		return *cast(UObject.Matrix*)params.ptr;
	}
	void SetDisplayInfo(GFxObject.ASDisplayInfo D)
	{
		ubyte params[44];
		params[] = 0;
		*cast(GFxObject.ASDisplayInfo*)params.ptr = D;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetDisplayInfo, params.ptr, cast(void*)0);
	}
	void SetPosition(float X, float Y)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = X;
		*cast(float*)&params[4] = Y;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPosition, params.ptr, cast(void*)0);
	}
	void SetColorTransform(GFxObject.ASColorTransform cxform)
	{
		ubyte params[32];
		params[] = 0;
		*cast(GFxObject.ASColorTransform*)params.ptr = cxform;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetColorTransform, params.ptr, cast(void*)0);
	}
	void SetDisplayMatrix(UObject.Matrix M)
	{
		ubyte params[64];
		params[] = 0;
		*cast(UObject.Matrix*)params.ptr = M;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetDisplayMatrix, params.ptr, cast(void*)0);
	}
	void SetDisplayMatrix3D(UObject.Matrix M)
	{
		ubyte params[64];
		params[] = 0;
		*cast(UObject.Matrix*)params.ptr = M;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetDisplayMatrix3D, params.ptr, cast(void*)0);
	}
	void SetVisible(bool Visible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = Visible;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetVisible, params.ptr, cast(void*)0);
	}
	ScriptString GetText()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetText, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	void SetText(ScriptString Text, TranslationContext* InContext = null)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		if (InContext !is null)
			*cast(TranslationContext*)&params[12] = *InContext;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetText, params.ptr, cast(void*)0);
	}
	GFxMoviePlayer.ASValue GetElement(int Index)
	{
		ubyte params[28];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetElement, params.ptr, cast(void*)0);
		return *cast(GFxMoviePlayer.ASValue*)&params[4];
	}
	GFxObject GetElementObject(int Index, ScriptClass* Type = null)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		if (Type !is null)
			*cast(ScriptClass*)&params[4] = *Type;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetElementObject, params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[8];
	}
	bool GetElementBool(int Index)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetElementBool, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	float GetElementFloat(int Index)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetElementFloat, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	ScriptString GetElementString(int Index)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetElementString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	void SetElement(int Index, GFxMoviePlayer.ASValue Arg)
	{
		ubyte params[28];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(GFxMoviePlayer.ASValue*)&params[4] = Arg;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetElement, params.ptr, cast(void*)0);
	}
	void SetElementObject(int Index, GFxObject val)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(GFxObject*)&params[4] = val;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetElementObject, params.ptr, cast(void*)0);
	}
	void SetElementBool(int Index, bool B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(bool*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetElementBool, params.ptr, cast(void*)0);
	}
	void SetElementFloat(int Index, float F)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(float*)&params[4] = F;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetElementFloat, params.ptr, cast(void*)0);
	}
	void SetElementString(int Index, ScriptString S)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(ScriptString*)&params[4] = S;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetElementString, params.ptr, cast(void*)0);
	}
	GFxObject.ASDisplayInfo GetElementDisplayInfo(int Index)
	{
		ubyte params[48];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetElementDisplayInfo, params.ptr, cast(void*)0);
		return *cast(GFxObject.ASDisplayInfo*)&params[4];
	}
	UObject.Matrix GetElementDisplayMatrix(int Index)
	{
		ubyte params[80];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetElementDisplayMatrix, params.ptr, cast(void*)0);
		return *cast(UObject.Matrix*)&params[16];
	}
	void SetElementDisplayInfo(int Index, GFxObject.ASDisplayInfo D)
	{
		ubyte params[48];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(GFxObject.ASDisplayInfo*)&params[4] = D;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetElementDisplayInfo, params.ptr, cast(void*)0);
	}
	void SetElementDisplayMatrix(int Index, UObject.Matrix M)
	{
		ubyte params[80];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(UObject.Matrix*)&params[16] = M;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetElementDisplayMatrix, params.ptr, cast(void*)0);
	}
	void SetElementVisible(int Index, bool Visible)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(bool*)&params[4] = Visible;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetElementVisible, params.ptr, cast(void*)0);
	}
	void SetElementPosition(int Index, float X, float Y)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(float*)&params[4] = X;
		*cast(float*)&params[8] = Y;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetElementPosition, params.ptr, cast(void*)0);
	}
	void SetElementColorTransform(int Index, GFxObject.ASColorTransform cxform)
	{
		ubyte params[36];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(GFxObject.ASColorTransform*)&params[4] = cxform;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetElementColorTransform, params.ptr, cast(void*)0);
	}
	GFxMoviePlayer.ASValue GetElementMember(int Index, ScriptString Member)
	{
		ubyte params[40];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(ScriptString*)&params[4] = Member;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetElementMember, params.ptr, cast(void*)0);
		return *cast(GFxMoviePlayer.ASValue*)&params[16];
	}
	GFxObject GetElementMemberObject(int Index, ScriptString Member, ScriptClass* Type = null)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(ScriptString*)&params[4] = Member;
		if (Type !is null)
			*cast(ScriptClass*)&params[16] = *Type;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetElementMemberObject, params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[20];
	}
	bool GetElementMemberBool(int Index, ScriptString Member)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(ScriptString*)&params[4] = Member;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetElementMemberBool, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	float GetElementMemberFloat(int Index, ScriptString Member)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(ScriptString*)&params[4] = Member;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetElementMemberFloat, params.ptr, cast(void*)0);
		return *cast(float*)&params[16];
	}
	ScriptString GetElementMemberString(int Index, ScriptString Member)
	{
		ubyte params[28];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(ScriptString*)&params[4] = Member;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetElementMemberString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[16];
	}
	void SetElementMember(int Index, ScriptString Member, GFxMoviePlayer.ASValue Arg)
	{
		ubyte params[40];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(ScriptString*)&params[4] = Member;
		*cast(GFxMoviePlayer.ASValue*)&params[16] = Arg;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetElementMember, params.ptr, cast(void*)0);
	}
	void SetElementMemberObject(int Index, ScriptString Member, GFxObject val)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(ScriptString*)&params[4] = Member;
		*cast(GFxObject*)&params[16] = val;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetElementMemberObject, params.ptr, cast(void*)0);
	}
	void SetElementMemberBool(int Index, ScriptString Member, bool B)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(ScriptString*)&params[4] = Member;
		*cast(bool*)&params[16] = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetElementMemberBool, params.ptr, cast(void*)0);
	}
	void SetElementMemberFloat(int Index, ScriptString Member, float F)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(ScriptString*)&params[4] = Member;
		*cast(float*)&params[16] = F;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetElementMemberFloat, params.ptr, cast(void*)0);
	}
	void SetElementMemberString(int Index, ScriptString Member, ScriptString S)
	{
		ubyte params[28];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(ScriptString*)&params[4] = Member;
		*cast(ScriptString*)&params[16] = S;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetElementMemberString, params.ptr, cast(void*)0);
	}
	void ActionScriptSetFunction(ScriptString Member)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Member;
		(cast(ScriptObject)this).ProcessEvent(Functions.ActionScriptSetFunction, params.ptr, cast(void*)0);
	}
	void ActionScriptSetFunctionOn(GFxObject Target, ScriptString Member)
	{
		ubyte params[16];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Target;
		*cast(ScriptString*)&params[4] = Member;
		(cast(ScriptObject)this).ProcessEvent(Functions.ActionScriptSetFunctionOn, params.ptr, cast(void*)0);
	}
	GFxMoviePlayer.ASValue Invoke(ScriptString Member, ScriptArray!(GFxMoviePlayer.ASValue) args)
	{
		ubyte params[48];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Member;
		*cast(ScriptArray!(GFxMoviePlayer.ASValue)*)&params[12] = args;
		(cast(ScriptObject)this).ProcessEvent(Functions.Invoke, params.ptr, cast(void*)0);
		return *cast(GFxMoviePlayer.ASValue*)&params[24];
	}
	void ActionScriptVoid(ScriptString method)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = method;
		(cast(ScriptObject)this).ProcessEvent(Functions.ActionScriptVoid, params.ptr, cast(void*)0);
	}
	int ActionScriptInt(ScriptString method)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = method;
		(cast(ScriptObject)this).ProcessEvent(Functions.ActionScriptInt, params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	float ActionScriptFloat(ScriptString method)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = method;
		(cast(ScriptObject)this).ProcessEvent(Functions.ActionScriptFloat, params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	ScriptString ActionScriptString(ScriptString method)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = method;
		(cast(ScriptObject)this).ProcessEvent(Functions.ActionScriptString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	GFxObject ActionScriptObject(ScriptString Path)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Path;
		(cast(ScriptObject)this).ProcessEvent(Functions.ActionScriptObject, params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[12];
	}
	ScriptArray!(GFxObject) ActionScriptArray(ScriptString Path)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Path;
		(cast(ScriptObject)this).ProcessEvent(Functions.ActionScriptArray, params.ptr, cast(void*)0);
		return *cast(ScriptArray!(GFxObject)*)&params[12];
	}
	void GotoAndPlay(ScriptString frame)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = frame;
		(cast(ScriptObject)this).ProcessEvent(Functions.GotoAndPlay, params.ptr, cast(void*)0);
	}
	void GotoAndPlayI(int frame)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = frame;
		(cast(ScriptObject)this).ProcessEvent(Functions.GotoAndPlayI, params.ptr, cast(void*)0);
	}
	void GotoAndStop(ScriptString frame)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = frame;
		(cast(ScriptObject)this).ProcessEvent(Functions.GotoAndStop, params.ptr, cast(void*)0);
	}
	void GotoAndStopI(int frame)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = frame;
		(cast(ScriptObject)this).ProcessEvent(Functions.GotoAndStopI, params.ptr, cast(void*)0);
	}
	GFxObject CreateEmptyMovieClip(ScriptString instancename, int* Depth = null, ScriptClass* Type = null)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = instancename;
		if (Depth !is null)
			*cast(int*)&params[12] = *Depth;
		if (Type !is null)
			*cast(ScriptClass*)&params[16] = *Type;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateEmptyMovieClip, params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[20];
	}
	GFxObject AttachMovie(ScriptString symbolname, ScriptString instancename, int* Depth = null, ScriptClass* Type = null)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = symbolname;
		*cast(ScriptString*)&params[12] = instancename;
		if (Depth !is null)
			*cast(int*)&params[24] = *Depth;
		if (Type !is null)
			*cast(ScriptClass*)&params[28] = *Type;
		(cast(ScriptObject)this).ProcessEvent(Functions.AttachMovie, params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[32];
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
}
