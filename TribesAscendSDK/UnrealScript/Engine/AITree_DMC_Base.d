module UnrealScript.Engine.AITree_DMC_Base;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.AICommandNodeBase;

extern(C++) interface AITree_DMC_Base : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.AITree_DMC_Base")); }
	private static __gshared AITree_DMC_Base mDefaultProperties;
	@property final static AITree_DMC_Base DefaultProperties() { mixin(MGDPC("AITree_DMC_Base", "AITree_DMC_Base Engine.Default__AITree_DMC_Base")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPrintString;
			ScriptFunction mGetWorldTime;
			ScriptFunction mConv_IntToFloat;
			ScriptFunction mConv_FloatToString;
			ScriptFunction mConv_IntToString;
			ScriptFunction mConv_BoolToString;
			ScriptFunction mConv_VectorToString;
			ScriptFunction mConv_RotatorToString;
			ScriptFunction mMakeVector;
			ScriptFunction mBreakVector;
			ScriptFunction mMakeRot;
			ScriptFunction mBreakRot;
			ScriptFunction mCalculateUtilityRating;
		}
		public @property static final
		{
			ScriptFunction PrintString() { mixin(MGF("mPrintString", "Function Engine.AITree_DMC_Base.PrintString")); }
			ScriptFunction GetWorldTime() { mixin(MGF("mGetWorldTime", "Function Engine.AITree_DMC_Base.GetWorldTime")); }
			ScriptFunction Conv_IntToFloat() { mixin(MGF("mConv_IntToFloat", "Function Engine.AITree_DMC_Base.Conv_IntToFloat")); }
			ScriptFunction Conv_FloatToString() { mixin(MGF("mConv_FloatToString", "Function Engine.AITree_DMC_Base.Conv_FloatToString")); }
			ScriptFunction Conv_IntToString() { mixin(MGF("mConv_IntToString", "Function Engine.AITree_DMC_Base.Conv_IntToString")); }
			ScriptFunction Conv_BoolToString() { mixin(MGF("mConv_BoolToString", "Function Engine.AITree_DMC_Base.Conv_BoolToString")); }
			ScriptFunction Conv_VectorToString() { mixin(MGF("mConv_VectorToString", "Function Engine.AITree_DMC_Base.Conv_VectorToString")); }
			ScriptFunction Conv_RotatorToString() { mixin(MGF("mConv_RotatorToString", "Function Engine.AITree_DMC_Base.Conv_RotatorToString")); }
			ScriptFunction MakeVector() { mixin(MGF("mMakeVector", "Function Engine.AITree_DMC_Base.MakeVector")); }
			ScriptFunction BreakVector() { mixin(MGF("mBreakVector", "Function Engine.AITree_DMC_Base.BreakVector")); }
			ScriptFunction MakeRot() { mixin(MGF("mMakeRot", "Function Engine.AITree_DMC_Base.MakeRot")); }
			ScriptFunction BreakRot() { mixin(MGF("mBreakRot", "Function Engine.AITree_DMC_Base.BreakRot")); }
			ScriptFunction CalculateUtilityRating() { mixin(MGF("mCalculateUtilityRating", "Function Engine.AITree_DMC_Base.CalculateUtilityRating")); }
		}
	}
final:
	void PrintString(ScriptString InString)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = InString;
		(cast(ScriptObject)this).ProcessEvent(Functions.PrintString, params.ptr, cast(void*)0);
	}
	float GetWorldTime(Actor inActor)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = inActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetWorldTime, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	static float Conv_IntToFloat(int InInt)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = InInt;
		StaticClass.ProcessEvent(Functions.Conv_IntToFloat, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	static ScriptString Conv_FloatToString(float InFloat)
	{
		ubyte params[16];
		params[] = 0;
		*cast(float*)params.ptr = InFloat;
		StaticClass.ProcessEvent(Functions.Conv_FloatToString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	static ScriptString Conv_IntToString(int InInt)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = InInt;
		StaticClass.ProcessEvent(Functions.Conv_IntToString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	static ScriptString Conv_BoolToString(bool InBool)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = InBool;
		StaticClass.ProcessEvent(Functions.Conv_BoolToString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	static ScriptString Conv_VectorToString(Vector InVec)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = InVec;
		StaticClass.ProcessEvent(Functions.Conv_VectorToString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	static ScriptString Conv_RotatorToString(Rotator InRot)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Rotator*)params.ptr = InRot;
		StaticClass.ProcessEvent(Functions.Conv_RotatorToString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	static Vector MakeVector(float X, float Y, float Z)
	{
		ubyte params[24];
		params[] = 0;
		*cast(float*)params.ptr = X;
		*cast(float*)&params[4] = Y;
		*cast(float*)&params[8] = Z;
		StaticClass.ProcessEvent(Functions.MakeVector, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[12];
	}
	static void BreakVector(Vector InVec, ref float X, ref float Y, ref float Z)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = InVec;
		*cast(float*)&params[12] = X;
		*cast(float*)&params[16] = Y;
		*cast(float*)&params[20] = Z;
		StaticClass.ProcessEvent(Functions.BreakVector, params.ptr, cast(void*)0);
		X = *cast(float*)&params[12];
		Y = *cast(float*)&params[16];
		Z = *cast(float*)&params[20];
	}
	static Rotator MakeRot(float Pitch, float Yaw, float Roll)
	{
		ubyte params[24];
		params[] = 0;
		*cast(float*)params.ptr = Pitch;
		*cast(float*)&params[4] = Yaw;
		*cast(float*)&params[8] = Roll;
		StaticClass.ProcessEvent(Functions.MakeRot, params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[12];
	}
	static void BreakRot(Rotator InRot, ref float Pitch, ref float Yaw, ref float Roll)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Rotator*)params.ptr = InRot;
		*cast(float*)&params[12] = Pitch;
		*cast(float*)&params[16] = Yaw;
		*cast(float*)&params[20] = Roll;
		StaticClass.ProcessEvent(Functions.BreakRot, params.ptr, cast(void*)0);
		Pitch = *cast(float*)&params[12];
		Yaw = *cast(float*)&params[16];
		Roll = *cast(float*)&params[20];
	}
	void CalculateUtilityRating(AICommandNodeBase CommandNode)
	{
		ubyte params[4];
		params[] = 0;
		*cast(AICommandNodeBase*)params.ptr = CommandNode;
		(cast(ScriptObject)this).ProcessEvent(Functions.CalculateUtilityRating, params.ptr, cast(void*)0);
	}
}
