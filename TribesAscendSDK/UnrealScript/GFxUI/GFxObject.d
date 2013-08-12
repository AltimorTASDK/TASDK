module UnrealScript.GFxUI.GFxObject;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.GFxUI.GFxMoviePlayer;
import UnrealScript.Engine.TranslationContext;

extern(C++) interface GFxObject : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GFxUI.GFxObject")); }
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
			ScriptFunction Get() { return mGet ? mGet : (mGet = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.Get")); }
			ScriptFunction GetBool() { return mGetBool ? mGetBool : (mGetBool = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.GetBool")); }
			ScriptFunction GetFloat() { return mGetFloat ? mGetFloat : (mGetFloat = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.GetFloat")); }
			ScriptFunction GetString() { return mGetString ? mGetString : (mGetString = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.GetString")); }
			ScriptFunction GetObject() { return mGetObject ? mGetObject : (mGetObject = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.GetObject")); }
			ScriptFunction Set() { return mSet ? mSet : (mSet = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.Set")); }
			ScriptFunction SetBool() { return mSetBool ? mSetBool : (mSetBool = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.SetBool")); }
			ScriptFunction SetFloat() { return mSetFloat ? mSetFloat : (mSetFloat = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.SetFloat")); }
			ScriptFunction SetString() { return mSetString ? mSetString : (mSetString = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.SetString")); }
			ScriptFunction SetObject() { return mSetObject ? mSetObject : (mSetObject = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.SetObject")); }
			ScriptFunction SetFunction() { return mSetFunction ? mSetFunction : (mSetFunction = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.SetFunction")); }
			ScriptFunction TranslateString() { return mTranslateString ? mTranslateString : (mTranslateString = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.TranslateString")); }
			ScriptFunction GetDisplayInfo() { return mGetDisplayInfo ? mGetDisplayInfo : (mGetDisplayInfo = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.GetDisplayInfo")); }
			ScriptFunction GetPosition() { return mGetPosition ? mGetPosition : (mGetPosition = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.GetPosition")); }
			ScriptFunction GetColorTransform() { return mGetColorTransform ? mGetColorTransform : (mGetColorTransform = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.GetColorTransform")); }
			ScriptFunction GetDisplayMatrix() { return mGetDisplayMatrix ? mGetDisplayMatrix : (mGetDisplayMatrix = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.GetDisplayMatrix")); }
			ScriptFunction SetDisplayInfo() { return mSetDisplayInfo ? mSetDisplayInfo : (mSetDisplayInfo = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.SetDisplayInfo")); }
			ScriptFunction SetPosition() { return mSetPosition ? mSetPosition : (mSetPosition = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.SetPosition")); }
			ScriptFunction SetColorTransform() { return mSetColorTransform ? mSetColorTransform : (mSetColorTransform = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.SetColorTransform")); }
			ScriptFunction SetDisplayMatrix() { return mSetDisplayMatrix ? mSetDisplayMatrix : (mSetDisplayMatrix = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.SetDisplayMatrix")); }
			ScriptFunction SetDisplayMatrix3D() { return mSetDisplayMatrix3D ? mSetDisplayMatrix3D : (mSetDisplayMatrix3D = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.SetDisplayMatrix3D")); }
			ScriptFunction SetVisible() { return mSetVisible ? mSetVisible : (mSetVisible = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.SetVisible")); }
			ScriptFunction GetText() { return mGetText ? mGetText : (mGetText = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.GetText")); }
			ScriptFunction SetText() { return mSetText ? mSetText : (mSetText = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.SetText")); }
			ScriptFunction GetElement() { return mGetElement ? mGetElement : (mGetElement = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.GetElement")); }
			ScriptFunction GetElementObject() { return mGetElementObject ? mGetElementObject : (mGetElementObject = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.GetElementObject")); }
			ScriptFunction GetElementBool() { return mGetElementBool ? mGetElementBool : (mGetElementBool = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.GetElementBool")); }
			ScriptFunction GetElementFloat() { return mGetElementFloat ? mGetElementFloat : (mGetElementFloat = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.GetElementFloat")); }
			ScriptFunction GetElementString() { return mGetElementString ? mGetElementString : (mGetElementString = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.GetElementString")); }
			ScriptFunction SetElement() { return mSetElement ? mSetElement : (mSetElement = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.SetElement")); }
			ScriptFunction SetElementObject() { return mSetElementObject ? mSetElementObject : (mSetElementObject = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.SetElementObject")); }
			ScriptFunction SetElementBool() { return mSetElementBool ? mSetElementBool : (mSetElementBool = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.SetElementBool")); }
			ScriptFunction SetElementFloat() { return mSetElementFloat ? mSetElementFloat : (mSetElementFloat = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.SetElementFloat")); }
			ScriptFunction SetElementString() { return mSetElementString ? mSetElementString : (mSetElementString = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.SetElementString")); }
			ScriptFunction GetElementDisplayInfo() { return mGetElementDisplayInfo ? mGetElementDisplayInfo : (mGetElementDisplayInfo = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.GetElementDisplayInfo")); }
			ScriptFunction GetElementDisplayMatrix() { return mGetElementDisplayMatrix ? mGetElementDisplayMatrix : (mGetElementDisplayMatrix = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.GetElementDisplayMatrix")); }
			ScriptFunction SetElementDisplayInfo() { return mSetElementDisplayInfo ? mSetElementDisplayInfo : (mSetElementDisplayInfo = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.SetElementDisplayInfo")); }
			ScriptFunction SetElementDisplayMatrix() { return mSetElementDisplayMatrix ? mSetElementDisplayMatrix : (mSetElementDisplayMatrix = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.SetElementDisplayMatrix")); }
			ScriptFunction SetElementVisible() { return mSetElementVisible ? mSetElementVisible : (mSetElementVisible = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.SetElementVisible")); }
			ScriptFunction SetElementPosition() { return mSetElementPosition ? mSetElementPosition : (mSetElementPosition = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.SetElementPosition")); }
			ScriptFunction SetElementColorTransform() { return mSetElementColorTransform ? mSetElementColorTransform : (mSetElementColorTransform = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.SetElementColorTransform")); }
			ScriptFunction GetElementMember() { return mGetElementMember ? mGetElementMember : (mGetElementMember = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.GetElementMember")); }
			ScriptFunction GetElementMemberObject() { return mGetElementMemberObject ? mGetElementMemberObject : (mGetElementMemberObject = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.GetElementMemberObject")); }
			ScriptFunction GetElementMemberBool() { return mGetElementMemberBool ? mGetElementMemberBool : (mGetElementMemberBool = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.GetElementMemberBool")); }
			ScriptFunction GetElementMemberFloat() { return mGetElementMemberFloat ? mGetElementMemberFloat : (mGetElementMemberFloat = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.GetElementMemberFloat")); }
			ScriptFunction GetElementMemberString() { return mGetElementMemberString ? mGetElementMemberString : (mGetElementMemberString = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.GetElementMemberString")); }
			ScriptFunction SetElementMember() { return mSetElementMember ? mSetElementMember : (mSetElementMember = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.SetElementMember")); }
			ScriptFunction SetElementMemberObject() { return mSetElementMemberObject ? mSetElementMemberObject : (mSetElementMemberObject = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.SetElementMemberObject")); }
			ScriptFunction SetElementMemberBool() { return mSetElementMemberBool ? mSetElementMemberBool : (mSetElementMemberBool = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.SetElementMemberBool")); }
			ScriptFunction SetElementMemberFloat() { return mSetElementMemberFloat ? mSetElementMemberFloat : (mSetElementMemberFloat = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.SetElementMemberFloat")); }
			ScriptFunction SetElementMemberString() { return mSetElementMemberString ? mSetElementMemberString : (mSetElementMemberString = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.SetElementMemberString")); }
			ScriptFunction ActionScriptSetFunction() { return mActionScriptSetFunction ? mActionScriptSetFunction : (mActionScriptSetFunction = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.ActionScriptSetFunction")); }
			ScriptFunction ActionScriptSetFunctionOn() { return mActionScriptSetFunctionOn ? mActionScriptSetFunctionOn : (mActionScriptSetFunctionOn = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.ActionScriptSetFunctionOn")); }
			ScriptFunction Invoke() { return mInvoke ? mInvoke : (mInvoke = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.Invoke")); }
			ScriptFunction ActionScriptVoid() { return mActionScriptVoid ? mActionScriptVoid : (mActionScriptVoid = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.ActionScriptVoid")); }
			ScriptFunction ActionScriptInt() { return mActionScriptInt ? mActionScriptInt : (mActionScriptInt = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.ActionScriptInt")); }
			ScriptFunction ActionScriptFloat() { return mActionScriptFloat ? mActionScriptFloat : (mActionScriptFloat = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.ActionScriptFloat")); }
			ScriptFunction ActionScriptString() { return mActionScriptString ? mActionScriptString : (mActionScriptString = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.ActionScriptString")); }
			ScriptFunction ActionScriptObject() { return mActionScriptObject ? mActionScriptObject : (mActionScriptObject = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.ActionScriptObject")); }
			ScriptFunction ActionScriptArray() { return mActionScriptArray ? mActionScriptArray : (mActionScriptArray = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.ActionScriptArray")); }
			ScriptFunction GotoAndPlay() { return mGotoAndPlay ? mGotoAndPlay : (mGotoAndPlay = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.GotoAndPlay")); }
			ScriptFunction GotoAndPlayI() { return mGotoAndPlayI ? mGotoAndPlayI : (mGotoAndPlayI = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.GotoAndPlayI")); }
			ScriptFunction GotoAndStop() { return mGotoAndStop ? mGotoAndStop : (mGotoAndStop = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.GotoAndStop")); }
			ScriptFunction GotoAndStopI() { return mGotoAndStopI ? mGotoAndStopI : (mGotoAndStopI = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.GotoAndStopI")); }
			ScriptFunction CreateEmptyMovieClip() { return mCreateEmptyMovieClip ? mCreateEmptyMovieClip : (mCreateEmptyMovieClip = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.CreateEmptyMovieClip")); }
			ScriptFunction AttachMovie() { return mAttachMovie ? mAttachMovie : (mAttachMovie = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.AttachMovie")); }
			ScriptFunction WidgetInitialized() { return mWidgetInitialized ? mWidgetInitialized : (mWidgetInitialized = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.WidgetInitialized")); }
			ScriptFunction WidgetUnloaded() { return mWidgetUnloaded ? mWidgetUnloaded : (mWidgetUnloaded = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxObject.WidgetUnloaded")); }
		}
	}
	struct ASDisplayInfo
	{
		private ubyte __buffer__[44];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct GFxUI.GFxObject.ASDisplayInfo")); }
		@property final
		{
			auto ref
			{
				float Alpha() { return *cast(float*)(cast(size_t)&this + 36); }
				float ZScale() { return *cast(float*)(cast(size_t)&this + 32); }
				float YScale() { return *cast(float*)(cast(size_t)&this + 28); }
				float XScale() { return *cast(float*)(cast(size_t)&this + 24); }
				float YRotation() { return *cast(float*)(cast(size_t)&this + 20); }
				float XRotation() { return *cast(float*)(cast(size_t)&this + 16); }
				float Rotation() { return *cast(float*)(cast(size_t)&this + 12); }
				float Z() { return *cast(float*)(cast(size_t)&this + 8); }
				float Y() { return *cast(float*)(cast(size_t)&this + 4); }
				float X() { return *cast(float*)(cast(size_t)&this + 0); }
			}
			bool hasVisible() { return (*cast(uint*)(cast(size_t)&this + 40) & 0x800) != 0; }
			bool hasVisible(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 40) |= 0x800; } else { *cast(uint*)(cast(size_t)&this + 40) &= ~0x800; } return val; }
			bool hasAlpha() { return (*cast(uint*)(cast(size_t)&this + 40) & 0x400) != 0; }
			bool hasAlpha(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 40) |= 0x400; } else { *cast(uint*)(cast(size_t)&this + 40) &= ~0x400; } return val; }
			bool hasZScale() { return (*cast(uint*)(cast(size_t)&this + 40) & 0x200) != 0; }
			bool hasZScale(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 40) |= 0x200; } else { *cast(uint*)(cast(size_t)&this + 40) &= ~0x200; } return val; }
			bool hasYScale() { return (*cast(uint*)(cast(size_t)&this + 40) & 0x100) != 0; }
			bool hasYScale(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 40) |= 0x100; } else { *cast(uint*)(cast(size_t)&this + 40) &= ~0x100; } return val; }
			bool hasXScale() { return (*cast(uint*)(cast(size_t)&this + 40) & 0x80) != 0; }
			bool hasXScale(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 40) |= 0x80; } else { *cast(uint*)(cast(size_t)&this + 40) &= ~0x80; } return val; }
			bool hasYRotation() { return (*cast(uint*)(cast(size_t)&this + 40) & 0x40) != 0; }
			bool hasYRotation(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 40) |= 0x40; } else { *cast(uint*)(cast(size_t)&this + 40) &= ~0x40; } return val; }
			bool hasXRotation() { return (*cast(uint*)(cast(size_t)&this + 40) & 0x20) != 0; }
			bool hasXRotation(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 40) |= 0x20; } else { *cast(uint*)(cast(size_t)&this + 40) &= ~0x20; } return val; }
			bool hasRotation() { return (*cast(uint*)(cast(size_t)&this + 40) & 0x10) != 0; }
			bool hasRotation(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 40) |= 0x10; } else { *cast(uint*)(cast(size_t)&this + 40) &= ~0x10; } return val; }
			bool hasZ() { return (*cast(uint*)(cast(size_t)&this + 40) & 0x8) != 0; }
			bool hasZ(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 40) |= 0x8; } else { *cast(uint*)(cast(size_t)&this + 40) &= ~0x8; } return val; }
			bool hasY() { return (*cast(uint*)(cast(size_t)&this + 40) & 0x4) != 0; }
			bool hasY(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 40) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 40) &= ~0x4; } return val; }
			bool hasX() { return (*cast(uint*)(cast(size_t)&this + 40) & 0x2) != 0; }
			bool hasX(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 40) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 40) &= ~0x2; } return val; }
			bool Visible() { return (*cast(uint*)(cast(size_t)&this + 40) & 0x1) != 0; }
			bool Visible(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 40) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 40) &= ~0x1; } return val; }
		}
	}
	struct ASColorTransform
	{
		private ubyte __buffer__[32];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct GFxUI.GFxObject.ASColorTransform")); }
		@property final auto ref
		{
			UObject.LinearColor Add() { return *cast(UObject.LinearColor*)(cast(size_t)&this + 16); }
			UObject.LinearColor Multiply() { return *cast(UObject.LinearColor*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(GFxMoviePlayer.GFxWidgetBinding) SubWidgetBindings() { return *cast(ScriptArray!(GFxMoviePlayer.GFxWidgetBinding)*)(cast(size_t)cast(void*)this + 108); }
		int Value() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
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
	GFxObject GetObject(ScriptString Member, ScriptClass Type)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Member;
		*cast(ScriptClass*)&params[12] = Type;
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
	void SetString(ScriptString Member, ScriptString S, TranslationContext InContext)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Member;
		*cast(ScriptString*)&params[12] = S;
		*cast(TranslationContext*)&params[24] = InContext;
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
	static ScriptString TranslateString(ScriptString StringToTranslate, TranslationContext InContext)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = StringToTranslate;
		*cast(TranslationContext*)&params[12] = InContext;
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
	bool GetPosition(float* X, float* Y)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = *X;
		*cast(float*)&params[4] = *Y;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPosition, params.ptr, cast(void*)0);
		*X = *cast(float*)params.ptr;
		*Y = *cast(float*)&params[4];
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
	void SetText(ScriptString Text, TranslationContext InContext)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		*cast(TranslationContext*)&params[12] = InContext;
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
	GFxObject GetElementObject(int Index, ScriptClass Type)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(ScriptClass*)&params[4] = Type;
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
	GFxObject GetElementMemberObject(int Index, ScriptString Member, ScriptClass Type)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(ScriptString*)&params[4] = Member;
		*cast(ScriptClass*)&params[16] = Type;
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
	GFxObject CreateEmptyMovieClip(ScriptString instancename, int Depth, ScriptClass Type)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = instancename;
		*cast(int*)&params[12] = Depth;
		*cast(ScriptClass*)&params[16] = Type;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateEmptyMovieClip, params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[20];
	}
	GFxObject AttachMovie(ScriptString symbolname, ScriptString instancename, int Depth, ScriptClass Type)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = symbolname;
		*cast(ScriptString*)&params[12] = instancename;
		*cast(int*)&params[24] = Depth;
		*cast(ScriptClass*)&params[28] = Type;
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
