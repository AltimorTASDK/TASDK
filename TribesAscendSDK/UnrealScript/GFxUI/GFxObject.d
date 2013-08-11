module UnrealScript.GFxUI.GFxObject;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.GFxUI.GFxMoviePlayer;
import UnrealScript.Engine.TranslationContext;

extern(C++) interface GFxObject : UObject
{
	struct ASDisplayInfo
	{
		public @property final bool hasVisible() { return (*cast(uint*)(cast(size_t)&this + 40) & 0x800) != 0; }
		public @property final bool hasVisible(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 40) |= 0x800; } else { *cast(uint*)(cast(size_t)&this + 40) &= ~0x800; } return val; }
		private ubyte __hasVisible[4];
		public @property final bool hasAlpha() { return (*cast(uint*)(cast(size_t)&this + 40) & 0x400) != 0; }
		public @property final bool hasAlpha(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 40) |= 0x400; } else { *cast(uint*)(cast(size_t)&this + 40) &= ~0x400; } return val; }
		private ubyte __hasAlpha[4];
		public @property final bool hasZScale() { return (*cast(uint*)(cast(size_t)&this + 40) & 0x200) != 0; }
		public @property final bool hasZScale(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 40) |= 0x200; } else { *cast(uint*)(cast(size_t)&this + 40) &= ~0x200; } return val; }
		private ubyte __hasZScale[4];
		public @property final bool hasYScale() { return (*cast(uint*)(cast(size_t)&this + 40) & 0x100) != 0; }
		public @property final bool hasYScale(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 40) |= 0x100; } else { *cast(uint*)(cast(size_t)&this + 40) &= ~0x100; } return val; }
		private ubyte __hasYScale[4];
		public @property final bool hasXScale() { return (*cast(uint*)(cast(size_t)&this + 40) & 0x80) != 0; }
		public @property final bool hasXScale(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 40) |= 0x80; } else { *cast(uint*)(cast(size_t)&this + 40) &= ~0x80; } return val; }
		private ubyte __hasXScale[4];
		public @property final bool hasYRotation() { return (*cast(uint*)(cast(size_t)&this + 40) & 0x40) != 0; }
		public @property final bool hasYRotation(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 40) |= 0x40; } else { *cast(uint*)(cast(size_t)&this + 40) &= ~0x40; } return val; }
		private ubyte __hasYRotation[4];
		public @property final bool hasXRotation() { return (*cast(uint*)(cast(size_t)&this + 40) & 0x20) != 0; }
		public @property final bool hasXRotation(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 40) |= 0x20; } else { *cast(uint*)(cast(size_t)&this + 40) &= ~0x20; } return val; }
		private ubyte __hasXRotation[4];
		public @property final bool hasRotation() { return (*cast(uint*)(cast(size_t)&this + 40) & 0x10) != 0; }
		public @property final bool hasRotation(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 40) |= 0x10; } else { *cast(uint*)(cast(size_t)&this + 40) &= ~0x10; } return val; }
		private ubyte __hasRotation[4];
		public @property final bool hasZ() { return (*cast(uint*)(cast(size_t)&this + 40) & 0x8) != 0; }
		public @property final bool hasZ(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 40) |= 0x8; } else { *cast(uint*)(cast(size_t)&this + 40) &= ~0x8; } return val; }
		private ubyte __hasZ[4];
		public @property final bool hasY() { return (*cast(uint*)(cast(size_t)&this + 40) & 0x4) != 0; }
		public @property final bool hasY(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 40) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 40) &= ~0x4; } return val; }
		private ubyte __hasY[4];
		public @property final bool hasX() { return (*cast(uint*)(cast(size_t)&this + 40) & 0x2) != 0; }
		public @property final bool hasX(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 40) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 40) &= ~0x2; } return val; }
		private ubyte __hasX[4];
		public @property final bool Visible() { return (*cast(uint*)(cast(size_t)&this + 40) & 0x1) != 0; }
		public @property final bool Visible(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 40) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 40) &= ~0x1; } return val; }
		private ubyte __Visible[4];
		public @property final auto ref float Alpha() { return *cast(float*)(cast(size_t)&this + 36); }
		private ubyte __Alpha[4];
		public @property final auto ref float ZScale() { return *cast(float*)(cast(size_t)&this + 32); }
		private ubyte __ZScale[4];
		public @property final auto ref float YScale() { return *cast(float*)(cast(size_t)&this + 28); }
		private ubyte __YScale[4];
		public @property final auto ref float XScale() { return *cast(float*)(cast(size_t)&this + 24); }
		private ubyte __XScale[4];
		public @property final auto ref float YRotation() { return *cast(float*)(cast(size_t)&this + 20); }
		private ubyte __YRotation[4];
		public @property final auto ref float XRotation() { return *cast(float*)(cast(size_t)&this + 16); }
		private ubyte __XRotation[4];
		public @property final auto ref float Rotation() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __Rotation[4];
		public @property final auto ref float Z() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __Z[4];
		public @property final auto ref float Y() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __Y[4];
		public @property final auto ref float X() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __X[4];
	}
	struct ASColorTransform
	{
		public @property final auto ref UObject.LinearColor Add() { return *cast(UObject.LinearColor*)(cast(size_t)&this + 16); }
		private ubyte __Add[16];
		public @property final auto ref UObject.LinearColor Multiply() { return *cast(UObject.LinearColor*)(cast(size_t)&this + 0); }
		private ubyte __Multiply[16];
	}
	public @property final auto ref ScriptArray!(GFxMoviePlayer.GFxWidgetBinding) SubWidgetBindings() { return *cast(ScriptArray!(GFxMoviePlayer.GFxWidgetBinding)*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref int Value() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
	final GFxMoviePlayer.ASValue Get(ScriptString Member)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Member;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30000], params.ptr, cast(void*)0);
		return *cast(GFxMoviePlayer.ASValue*)&params[12];
	}
	final bool GetBool(ScriptString Member)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Member;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30003], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final float GetFloat(ScriptString Member)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Member;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30006], params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	final ScriptString GetString(ScriptString Member)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Member;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30009], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	final GFxObject GetObject(ScriptString Member, ScriptClass Type)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Member;
		*cast(ScriptClass*)&params[12] = Type;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30012], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[16];
	}
	final void Set(ScriptString Member, GFxMoviePlayer.ASValue Arg)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Member;
		*cast(GFxMoviePlayer.ASValue*)&params[12] = Arg;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30016], params.ptr, cast(void*)0);
	}
	final void SetBool(ScriptString Member, bool B)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Member;
		*cast(bool*)&params[12] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30019], params.ptr, cast(void*)0);
	}
	final void SetFloat(ScriptString Member, float F)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Member;
		*cast(float*)&params[12] = F;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30022], params.ptr, cast(void*)0);
	}
	final void SetString(ScriptString Member, ScriptString S, TranslationContext InContext)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Member;
		*cast(ScriptString*)&params[12] = S;
		*cast(TranslationContext*)&params[24] = InContext;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30025], params.ptr, cast(void*)0);
	}
	final void SetObject(ScriptString Member, GFxObject val)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Member;
		*cast(GFxObject*)&params[12] = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30029], params.ptr, cast(void*)0);
	}
	final void SetFunction(ScriptString Member, UObject context, ScriptName fname)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Member;
		*cast(UObject*)&params[12] = context;
		*cast(ScriptName*)&params[16] = fname;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30032], params.ptr, cast(void*)0);
	}
	final ScriptString TranslateString(ScriptString StringToTranslate, TranslationContext InContext)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = StringToTranslate;
		*cast(TranslationContext*)&params[12] = InContext;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30036], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[16];
	}
	final GFxObject.ASDisplayInfo GetDisplayInfo()
	{
		ubyte params[44];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30040], params.ptr, cast(void*)0);
		return *cast(GFxObject.ASDisplayInfo*)params.ptr;
	}
	final bool GetPosition(float* X, float* Y)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = *X;
		*cast(float*)&params[4] = *Y;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30042], params.ptr, cast(void*)0);
		*X = *cast(float*)params.ptr;
		*Y = *cast(float*)&params[4];
		return *cast(bool*)&params[8];
	}
	final GFxObject.ASColorTransform GetColorTransform()
	{
		ubyte params[32];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30046], params.ptr, cast(void*)0);
		return *cast(GFxObject.ASColorTransform*)params.ptr;
	}
	final UObject.Matrix GetDisplayMatrix()
	{
		ubyte params[64];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30048], params.ptr, cast(void*)0);
		return *cast(UObject.Matrix*)params.ptr;
	}
	final void SetDisplayInfo(GFxObject.ASDisplayInfo D)
	{
		ubyte params[44];
		params[] = 0;
		*cast(GFxObject.ASDisplayInfo*)params.ptr = D;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30050], params.ptr, cast(void*)0);
	}
	final void SetPosition(float X, float Y)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = X;
		*cast(float*)&params[4] = Y;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30052], params.ptr, cast(void*)0);
	}
	final void SetColorTransform(GFxObject.ASColorTransform cxform)
	{
		ubyte params[32];
		params[] = 0;
		*cast(GFxObject.ASColorTransform*)params.ptr = cxform;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30055], params.ptr, cast(void*)0);
	}
	final void SetDisplayMatrix(UObject.Matrix M)
	{
		ubyte params[64];
		params[] = 0;
		*cast(UObject.Matrix*)params.ptr = M;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30057], params.ptr, cast(void*)0);
	}
	final void SetDisplayMatrix3D(UObject.Matrix M)
	{
		ubyte params[64];
		params[] = 0;
		*cast(UObject.Matrix*)params.ptr = M;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30059], params.ptr, cast(void*)0);
	}
	final void SetVisible(bool Visible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = Visible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30061], params.ptr, cast(void*)0);
	}
	final ScriptString GetText()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30063], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	final void SetText(ScriptString Text, TranslationContext InContext)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		*cast(TranslationContext*)&params[12] = InContext;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30065], params.ptr, cast(void*)0);
	}
	final GFxMoviePlayer.ASValue GetElement(int Index)
	{
		ubyte params[28];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30068], params.ptr, cast(void*)0);
		return *cast(GFxMoviePlayer.ASValue*)&params[4];
	}
	final GFxObject GetElementObject(int Index, ScriptClass Type)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(ScriptClass*)&params[4] = Type;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30071], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[8];
	}
	final bool GetElementBool(int Index)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30075], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final float GetElementFloat(int Index)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30078], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	final ScriptString GetElementString(int Index)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30081], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	final void SetElement(int Index, GFxMoviePlayer.ASValue Arg)
	{
		ubyte params[28];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(GFxMoviePlayer.ASValue*)&params[4] = Arg;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30084], params.ptr, cast(void*)0);
	}
	final void SetElementObject(int Index, GFxObject val)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(GFxObject*)&params[4] = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30087], params.ptr, cast(void*)0);
	}
	final void SetElementBool(int Index, bool B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(bool*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30090], params.ptr, cast(void*)0);
	}
	final void SetElementFloat(int Index, float F)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(float*)&params[4] = F;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30093], params.ptr, cast(void*)0);
	}
	final void SetElementString(int Index, ScriptString S)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(ScriptString*)&params[4] = S;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30096], params.ptr, cast(void*)0);
	}
	final GFxObject.ASDisplayInfo GetElementDisplayInfo(int Index)
	{
		ubyte params[48];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30099], params.ptr, cast(void*)0);
		return *cast(GFxObject.ASDisplayInfo*)&params[4];
	}
	final UObject.Matrix GetElementDisplayMatrix(int Index)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30102], params.ptr, cast(void*)0);
		return *cast(UObject.Matrix*)&params[16];
	}
	final void SetElementDisplayInfo(int Index, GFxObject.ASDisplayInfo D)
	{
		ubyte params[48];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(GFxObject.ASDisplayInfo*)&params[4] = D;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30105], params.ptr, cast(void*)0);
	}
	final void SetElementDisplayMatrix(int Index, UObject.Matrix M)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(UObject.Matrix*)&params[16] = M;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30108], params.ptr, cast(void*)0);
	}
	final void SetElementVisible(int Index, bool Visible)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(bool*)&params[4] = Visible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30111], params.ptr, cast(void*)0);
	}
	final void SetElementPosition(int Index, float X, float Y)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(float*)&params[4] = X;
		*cast(float*)&params[8] = Y;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30114], params.ptr, cast(void*)0);
	}
	final void SetElementColorTransform(int Index, GFxObject.ASColorTransform cxform)
	{
		ubyte params[36];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(GFxObject.ASColorTransform*)&params[4] = cxform;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30118], params.ptr, cast(void*)0);
	}
	final GFxMoviePlayer.ASValue GetElementMember(int Index, ScriptString Member)
	{
		ubyte params[40];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(ScriptString*)&params[4] = Member;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30121], params.ptr, cast(void*)0);
		return *cast(GFxMoviePlayer.ASValue*)&params[16];
	}
	final GFxObject GetElementMemberObject(int Index, ScriptString Member, ScriptClass Type)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(ScriptString*)&params[4] = Member;
		*cast(ScriptClass*)&params[16] = Type;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30125], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[20];
	}
	final bool GetElementMemberBool(int Index, ScriptString Member)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(ScriptString*)&params[4] = Member;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30130], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final float GetElementMemberFloat(int Index, ScriptString Member)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(ScriptString*)&params[4] = Member;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30134], params.ptr, cast(void*)0);
		return *cast(float*)&params[16];
	}
	final ScriptString GetElementMemberString(int Index, ScriptString Member)
	{
		ubyte params[28];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(ScriptString*)&params[4] = Member;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30138], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[16];
	}
	final void SetElementMember(int Index, ScriptString Member, GFxMoviePlayer.ASValue Arg)
	{
		ubyte params[40];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(ScriptString*)&params[4] = Member;
		*cast(GFxMoviePlayer.ASValue*)&params[16] = Arg;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30142], params.ptr, cast(void*)0);
	}
	final void SetElementMemberObject(int Index, ScriptString Member, GFxObject val)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(ScriptString*)&params[4] = Member;
		*cast(GFxObject*)&params[16] = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30146], params.ptr, cast(void*)0);
	}
	final void SetElementMemberBool(int Index, ScriptString Member, bool B)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(ScriptString*)&params[4] = Member;
		*cast(bool*)&params[16] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30150], params.ptr, cast(void*)0);
	}
	final void SetElementMemberFloat(int Index, ScriptString Member, float F)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(ScriptString*)&params[4] = Member;
		*cast(float*)&params[16] = F;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30154], params.ptr, cast(void*)0);
	}
	final void SetElementMemberString(int Index, ScriptString Member, ScriptString S)
	{
		ubyte params[28];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(ScriptString*)&params[4] = Member;
		*cast(ScriptString*)&params[16] = S;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30158], params.ptr, cast(void*)0);
	}
	final void ActionScriptSetFunction(ScriptString Member)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Member;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30162], params.ptr, cast(void*)0);
	}
	final void ActionScriptSetFunctionOn(GFxObject Target, ScriptString Member)
	{
		ubyte params[16];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Target;
		*cast(ScriptString*)&params[4] = Member;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30164], params.ptr, cast(void*)0);
	}
	final GFxMoviePlayer.ASValue Invoke(ScriptString Member, ScriptArray!(GFxMoviePlayer.ASValue) args)
	{
		ubyte params[48];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Member;
		*cast(ScriptArray!(GFxMoviePlayer.ASValue)*)&params[12] = args;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30167], params.ptr, cast(void*)0);
		return *cast(GFxMoviePlayer.ASValue*)&params[24];
	}
	final void ActionScriptVoid(ScriptString method)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = method;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30172], params.ptr, cast(void*)0);
	}
	final int ActionScriptInt(ScriptString method)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = method;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30174], params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	final float ActionScriptFloat(ScriptString method)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = method;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30177], params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	final ScriptString ActionScriptString(ScriptString method)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = method;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30180], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	final GFxObject ActionScriptObject(ScriptString Path)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Path;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30183], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[12];
	}
	final ScriptArray!(GFxObject) ActionScriptArray(ScriptString Path)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Path;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30186], params.ptr, cast(void*)0);
		return *cast(ScriptArray!(GFxObject)*)&params[12];
	}
	final void GotoAndPlay(ScriptString frame)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = frame;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30190], params.ptr, cast(void*)0);
	}
	final void GotoAndPlayI(int frame)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = frame;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30192], params.ptr, cast(void*)0);
	}
	final void GotoAndStop(ScriptString frame)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = frame;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30194], params.ptr, cast(void*)0);
	}
	final void GotoAndStopI(int frame)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = frame;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30196], params.ptr, cast(void*)0);
	}
	final GFxObject CreateEmptyMovieClip(ScriptString instancename, int Depth, ScriptClass Type)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = instancename;
		*cast(int*)&params[12] = Depth;
		*cast(ScriptClass*)&params[16] = Type;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30198], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[20];
	}
	final GFxObject AttachMovie(ScriptString symbolname, ScriptString instancename, int Depth, ScriptClass Type)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = symbolname;
		*cast(ScriptString*)&params[12] = instancename;
		*cast(int*)&params[24] = Depth;
		*cast(ScriptClass*)&params[28] = Type;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30203], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[32];
	}
	final bool WidgetInitialized(ScriptName WidgetName, ScriptName WidgetPath, GFxObject Widget)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = WidgetName;
		*cast(ScriptName*)&params[8] = WidgetPath;
		*cast(GFxObject*)&params[16] = Widget;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30209], params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	final bool WidgetUnloaded(ScriptName WidgetName, ScriptName WidgetPath, GFxObject Widget)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = WidgetName;
		*cast(ScriptName*)&params[8] = WidgetPath;
		*cast(GFxObject*)&params[16] = Widget;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30214], params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
}
