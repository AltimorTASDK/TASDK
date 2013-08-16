module ScriptClasses;

private import std.conv;
private import std.math;
private import std.encoding;
private import std.c.string;

private import Flags : Flags;

public alias ulong QWord; // Total size: 0x08

public struct ScriptArray(T) // Total size: 0x0C
{
private:
	T* mData;
	int mCount;
	int mMax;

public:
	@property
	{
		final T* Data() { return mData; }
		final int Count() { return mCount; }
		final int Max() { return mMax; }
	}

	// The slice operation that occurs first takes care of
	// the bounds checking for us.
	final T opIndex(uint idx) { return mData[0..mCount][idx]; }
	final T opIndex(int idx) { return mData[0..mCount][idx]; }
}

public struct ScriptString // Total size: 0x0C
{
private:
	ScriptArray!(wchar) mString;

public:
	string ToString()
	{
		string dst;
		transcode(cast(immutable wchar[])mString.Data[0..mString.Count - 1], dst); // The wide string is null terminated.
		return dst;
	}
}

public struct ScriptNameEntry // Total size: N/A (This structure is dynamically sized)
{
private:
	byte __padding__[0x10];
	char mName[1024];

public:
	@property immutable(string) Name() { return cast(immutable char[])mName[0..strlen(mName.ptr)]; }
}

public struct ScriptName // Total size: 0x08
{
private:
	int mIndex;
	int mInstanceNumber;
	
	static ScriptArray!(ScriptNameEntry*)* mNameArray;

public:
	final string GetName()
	{
		if (mIndex >= mNameArray.Count)
			return "Failed to get name";
		
		if (mInstanceNumber <= 0)
			return (*mNameArray)[mIndex].Name;
		else
			return (*mNameArray)[mIndex].Name ~ "_" ~ to!string(mInstanceNumber - 1); // Because UE is just weird like that.
	}

	@property final static auto ref ScriptArray!(ScriptNameEntry*)* NameArray() { return mNameArray; }
}

extern(C++) public interface ScriptObject // Total size: 0x3C
{
public:
	@property
	{
		final auto ref int ObjectInternalInteger() { return *cast(int*)(cast(size_t)cast(void*)this + 0x04); }										// 0x04 (0x04)
		final auto ref Flags!(ScriptObjectFlags) ObjectFlags() { return *cast(Flags!(ScriptObjectFlags)*)(cast(size_t)cast(void*)this + 0x08); }	// 0x08 (0x08)
		final auto ref ScriptObject HashNext() { return *cast(ScriptObject*)(cast(size_t)cast(void*)this + 0x10); }									// 0x10 (0x04)
		final auto ref ScriptObject HashOuterNext() { return *cast(ScriptObject*)(cast(size_t)cast(void*)this + 0x14); }							// 0x14 (0x04)
		final auto ref void* StateFrame() { return *cast(void**)(cast(size_t)cast(void*)this + 0x18); }												// 0x18 (0x04)
		final auto ref ScriptObject Linker() { return *cast(ScriptObject*)(cast(size_t)cast(void*)this + 0x1C); }									// 0x1C (0x04)
		final auto ref void* LinkerIndex() { return *cast(void**)(cast(size_t)cast(void*)this + 0x20); }											// 0x20 (0x04)
		final auto ref int NetIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 0x24); }													// 0x24 (0x04)
		final auto ref ScriptObject Outer() { return *cast(ScriptObject*)(cast(size_t)cast(void*)this + 0x28); }									// 0x28 (0x04)
		final auto ref ScriptName Name() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 0x2C); }											// 0x2C (0x08)
		final auto ref ScriptClass ObjectClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 0x34); }								// 0x34 (0x04)
		final auto ref ScriptObject ObjectArchetype() { return *cast(ScriptObject*)(cast(size_t)cast(void*)this + 0x38); }							// 0x38 (0x04)
	}

	private static ScriptArray!(ScriptObject)* mObjectArray;
	@property final static ScriptArray!(ScriptObject)* ObjectArray() { return mObjectArray; }
	
	private static ScriptClass[string] mClassLookup;
	private static ScriptFunction[string] mFunctionLookup;
	private static ScriptStruct[string] mStructLookup;
	final static void SetObjectArray(ScriptArray!(ScriptObject)* arr)
	{
		mObjectArray = arr;

		//for (int i = 0; i < ObjectArray.Count; i++)
		//{
		//	ScriptObject obj = (*ObjectArray)[i];
		//	switch (obj.ObjectClass.GetName())
		//	{
		//		case "Class":
		//			mClassLookup[obj.GetFullName()] = cast(ScriptClass)obj;
		//			break;
		//		case "Function":
		//			mFunctionLookup[obj.GetFullName()] = cast(ScriptFunction)obj;
		//			break;
		//		case "ScriptStruct":
		//			mStructLookup[obj.GetFullName()] = cast(ScriptStruct)obj;
		//			break;
		//		default:
		//			break;
		//	}
		//}
	}

	final static T Find(T)(string name)
	{
		//static if (is(T == ScriptClass))
		//	return mClassLookup.get(name, null);
		//else static if (is(T == ScriptFunction))
		//	return mFunctionLookup.get(name, null);
		//else static if (is(T == ScriptStruct))
		//	return mStructLookup.get(name, null);
		//else
		{
			for(int i = 0; i < ObjectArray.Count; i++)
			{
				ScriptObject object = (*ObjectArray)[i];
				if(object.GetFullName() == name)
					return cast(T)object;
			}
			return null;
		}
	}

	final immutable(string) GetName() { return Name.GetName(); }
	final string GetFullName()
	{
		if(ObjectClass)
		{
			string fullName = GetName();
			
			for (ScriptObject objOuter = Outer; objOuter !is null; objOuter = objOuter.Outer)
				fullName = objOuter.GetName() ~ "." ~ fullName;

			return ObjectClass.GetName() ~ " " ~ fullName;
		}
		
		return "Failed to get name";
	}

	
private:
	void Vfunc00();
	void Vfunc01();
	void Vfunc02();
	void Vfunc03();
	void Vfunc04();
	void Vfunc05();
	void Vfunc06();
	void Vfunc07();
	void Vfunc08();
	void Vfunc09();
	void Vfunc10();
	void Vfunc11();
	void Vfunc12();
	void Vfunc13();
	void Vfunc14();
	void Vfunc15();
	void Vfunc16();
	void Vfunc17();
	void Vfunc18();
	void Vfunc19();
	void Vfunc20();
	void Vfunc21();
	void Vfunc22();
	void Vfunc23();
	void Vfunc24();
	void Vfunc25();
	void Vfunc26();
	void Vfunc27();
	void Vfunc28();
	void Vfunc29();
	void Vfunc30();
	void Vfunc31();
	void Vfunc32();
	void Vfunc33();
	void Vfunc34();
	void Vfunc35();
	void Vfunc36();
	void Vfunc37();
	void Vfunc38();
	void Vfunc39();
	void Vfunc40();
	void Vfunc41();
	void Vfunc42();
	void Vfunc43();
	void Vfunc44();
	void Vfunc45();
	void Vfunc46();
	void Vfunc47();
	void Vfunc48();
	void Vfunc49();
	void Vfunc50();
	void Vfunc51();
	void Vfunc52();
	void Vfunc53();
	void Vfunc54();
	void Vfunc55();
	void Vfunc56();
	void Vfunc57();
	void Vfunc58();
	void Vfunc59();
	void Vfunc60();
	void Vfunc61();
	void Vfunc62();
	void Vfunc63();
	void Vfunc64();
	void Vfunc65();
public:
	void ProcessEvent(ScriptFunction func, void* params, void* result);
}

public enum ScriptObjectFlags : ulong
{
	// Unused 					= 1UL <<  0,
	/**
	 * In a singular function.
	 */
	InSingularFunction			= 1UL <<  1,
	/**
	 * Object did a state change.
	 */
	StateChanged				= 1UL <<  2,
	/**
	 * For debugging PostLoad calls.
	 */
	DebugPostLoad				= 1UL <<  3,
	/**
	 * For debugging Serialize calls.
	 */
	DebugSerialize				= 1UL <<  4,
	/**
	 * For debugging FinishDestroy calls.
	 */
	DebugFinishDestroyed		= 1UL <<  5,
	/**
	 * Object is selected in one of the editors browser windows.
	 */
	EditorSelected				= 1UL <<  6,
	/**
	 * This component's template was deleted, so should not be used.
	 */
	ZombieComponent				= 1UL <<  7,
	/**
	 * Property is protected, and may only be accessed from its owner class or subclasses.
	 */
	Protected					= 1UL <<  8,
	/**
	 * This object is its class's default object.
	 */
	ClassDefaultObject			= 1UL <<  9,
	/**
	 * This object is a template for another object - treat it like a class default object.
	 */
	ArchetypeObject				= 1UL << 10,
	/**
	 * Forces this object to be put into the export table when saving a package regardless of outer.
	 */
	ForceExport					= 1UL << 11,
	/**
	 * Set if reference token stream has already been assembled.
	 */
	TokenStreamAssembled		= 1UL << 12,
	/**
	 * Object's size no longer matches the size of its C++ class. (only used during make, for native classes whose properties have changed)
	 */
	MisalignedObject			= 1UL << 13,
	/**
	 * Object will not be garbage collected, even if unreferenced.
	 */
	RootSet						= 1UL << 14,
	/**
	 * BeginDestroy has been called on the object.
	 */
	BeginDestroyed				= 1UL << 15,
	/**
	 * FinishDestroy has been called on the object.
	 */
	FinishDestroyed				= 1UL << 16,
	/**
	 * Whether object is rooted as being part of the root set. (garbage collection)
	 */
	DebugBeginDestroyed			= 1UL << 17,
	/**
	 * Marked by content cooker.
	 */
	MarkedByCooker				= 1UL << 18,
	/**
	 * Whether resource object is localized.
	 */
	LocalizedResource			= 1UL << 19,
	/**
	 * Whether InitProperties has been called on this object.
	 */
	InitializedProperties		= 1UL << 20,
	/**
	 * Indicates that this struct will receive additional member properties from the script patcher.
	 */
	PendingFieldPatches			= 1UL << 21,
	/**
	 * This object has been pointed to by a cross-level reference, and therefore requires additional cleanup upon deletion.
	 */
	IsCrossLevelReferenced		= 1UL << 22,
	// Unused 					= 1UL << 23,
	// Unused 					= 1UL << 24,
	// Unused 					= 1UL << 25,
	// Unused 					= 1UL << 26,
	// Unused 					= 1UL << 27,
	// Unused 					= 1UL << 28,
	// Unused 					= 1UL << 29,
	// Unused 					= 1UL << 30,
	/**
	 * Object has been saved via SavePackage. (Temporary)
	 */
	Saved						= 1UL << 31,
	/**
	 * Object is transactional.
	 */
	Transactional				= 1UL << 32,
	/**
	 * Object is not reachable on the object graph.
	 */
	Unreachable					= 1UL << 33,
	/**
	 * Object is visible outside its package.
	 */
	Public						= 1UL << 34,
	/**
	 * Temporary import tag in load/save.
	 */
	TagImport					= 1UL << 35,
	/**
	 * Temporary export tag in load/save.
	 */
	TagExport					= 1UL << 36,
	/**
	 * Object marked as obsolete and should be replaced.
	 */
	Obsolete					= 1UL << 37,
	/**
	 * Check during garbage collection.
	 */
	TagGarbage					= 1UL << 38,
	/**
	 * Object is being disregard for GC as its static and itself and all references are always loaded.
	 */
	DisregardForGC				= 1UL << 39,
	/**
	 * Object is localized by instance name, not by class.
	 */
	LocalizedPerObject			= 1UL << 40,
	/**
	 * During load, indicates object needs loading.
	 */
	NeedLoad					= 1UL << 41,
	/**
	 * Object is being asynchronously loaded.
	 */
	AsyncLoading				= 1UL << 42,
	/**
	 * During load, indicates that the object still needs to instance subobjects and fixup serialized component references.
	 */
	NeedPostLoadSubObjects		= 1UL << 43,
	/**
	 * Suppress log name.
	 */
	Suppress					= 1UL << 44,
	/**
	 * Within an EndState call.
	 */
	InEndState					= 1UL << 45,
	/**
	 * Don't save object.
	 */
	Transient					= 1UL << 46,
	/**
	 * Whether the object has already been cooked.
	 */
	Cooked						= 1UL << 47,
	/**
	 * In-file load for the game client.
	 */
	LoadForClient				= 1UL << 48,
	/**
	 * In-file load for the game server.
	 */
	LoadForServer				= 1UL << 49,
	/**
	 * In-file load for the editor.
	 */
	LoadForEditor				= 1UL << 50,
	/**
	 * Keep object around for editing even if unreferenced.
	 */
	Standalone					= 1UL << 51,
	/**
	 * Don't load this object for the game client.
	 */
	NotForClient				= 1UL << 52,
	/**
	 * Don't load this object for the game server.
	 */
	NotForServer				= 1UL << 53,
	/**
	 * Don't load this object for the editor.
	 */
	NotForEditor				= 1UL << 54,
	// Unused 					= 1UL << 55,
	/**
	 * Object needs to be PostLoad'ed.
	 */
	NeedPostLoad				= 1UL << 56,
	/**
	 * Has an execution stack.
	 */
	HasStack					= 1UL << 57,
	/**
	 * Native. (ScriptClass only)
	 */
	Native						= 1UL << 58,
	/**
	 * Marked. (for debugging)
	 */
	Marked						= 1UL << 59,
	/**
	 * ShutdownAfterError called.
	 */
	ErrorShutdown				= 1UL << 60,
	/**
	 * Object is pending destruction. (invalid for gameplay but still a valid object)
	 */
	PendingKill					= 1UL << 61,
	// Unused 					= 1UL << 62,
	// Unused					= 1UL << 63,

	/**
	 * All context flags.
	 */
	ContextFlags = NotForClient | NotForServer | NotForEditor,
	/**
	 * Flags affecting loading.
	 */
	LoadContextFlags = LoadForClient | LoadForServer | LoadForEditor,
	/**
	 * Flags to load from Unrealfiles.
	 */
	LoadedFlags = ContextFlags | LoadContextFlags | Public | Standalone | Native | Obsolete | Protected | Transactional | HasStack | LocalizedPerObject | ClassDefaultObject | ArchetypeObject | LocalizedResource,
	/**
	 * Flags to persist across loads.
	 */
	KeptFlags = Native | Marked | LocalizedPerObject | MisalignedObject | DisregardForGC | RootSet | LocalizedResource,
	/**
	 * Script-accessibility flags.
	 */
	ScriptMask = Transactional | Public | Transient | NotForClient | NotForServer | NotForEditor | Standalone,
	/**
	 * Undo/redo will store/restore these.
	 */
	UndoRedoMask = PendingKill,
	/**
	 * Sub-objects will inherit these flags from their SuperObject.
	 */
	FlagsPropagatedToSubObjects = Public | ArchetypeObject | Transactional,

	AllFlags = 0xFFFFFFFFFFFFFFFF,
}

extern(C++) public interface ScriptField : ScriptObject // Total size: 0x40
{
public:
	@property
	{
		final auto ref ScriptField Next() { return *cast(ScriptField*)(cast(size_t)cast(void*)this + 0x3C); }	// 0x3C (0x04)
	}
}

extern(C++) public interface ScriptEnum : ScriptField // Total size: 0x4C
{
public:
	@property
	{
		final auto ref ScriptArray!(ScriptName) ValueNames() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 0x40); }	// 0x40 (0x0C)
	}
}

extern(C++) public interface ScriptConst : ScriptField // Total size: 0x4C
{
public:
	@property
	{
		final auto ref ScriptString Value() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 0x40); }	// 0x40 (0x0C)
	}
}

extern(C++) public interface ScriptStruct : ScriptField // Total size: 0x90
{
public:
	@property
	{
		// __padding0__ 0x40 (0x08)
		final auto ref ScriptField Super() { return *cast(ScriptField*)(cast(size_t)cast(void*)this + 0x48); }		// 0x48 (0x04)
		final auto ref ScriptField Children() { return *cast(ScriptField*)(cast(size_t)cast(void*)this + 0x4C); }	// 0x4C (0x04)
		final auto ref uint PropertySize() { return *cast(uint*)(cast(size_t)cast(void*)this + 0x50); }				// 0x50 (0x04)
		// __padding1__ 0x54 (0x3C)
	}
}

extern(C++) public interface ScriptFunction : ScriptStruct // Total size: 0xB4
{
public:
	@property
	{
		final auto ref Flags!(ScriptFunctionFlags) FunctionFlags() { return *cast(Flags!(ScriptFunctionFlags)*)(cast(size_t)cast(void*)this + 0x90); }		// 0x90 (0x04)
		final auto ref ushort Native() { return *cast(ushort*)(cast(size_t)cast(void*)this + 0x94); }														// 0x94 (0x02)
		final auto ref ushort RepOffset() { return *cast(ushort*)(cast(size_t)cast(void*)this + 0x96); }													// 0x96 (0x02)
		final auto ref ScriptName FriendlyName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 0x98); }											// 0x98 (0x08)
		final auto ref ushort NumParams() { return *cast(ushort*)(cast(size_t)cast(void*)this + 0xA0); }													// 0xA0 (0x02)
		final auto ref ushort ParamsSize() { return *cast(ushort*)(cast(size_t)cast(void*)this + 0xA2); }													// 0xA2 (0x02)
		final auto ref uint ReturnValOffset() { return *cast(uint*)(cast(size_t)cast(void*)this + 0xA4); }													// 0xA4 (0x04)
		// __padding__ 0xA8 (0x04)
		final auto ref void* Function() { return *cast(void**)(cast(size_t)cast(void*)this + 0xAC); }														// 0xAC (0x04)
	}
}

public enum ScriptFunctionFlags : uint // Total size: 0x04
{
	/**
	 * Function is final (prebindable, non-overridable function).
	 */
	Final					= 1 <<  0,
	/**
	 * Function has been defined (not just declared).
	 */
	Defined					= 1 <<  1,
	/**
	 * Function is an iterator.
	 */
	Iterator				= 1 <<  2,
	/**
	 * Function is a latent state function.
	 */
	Latent					= 1 <<  3,
	/**
	 * Unary operator is a prefix operator.
	 */
	PreOperator				= 1 <<  4,
	/**
	 * Function cannot be reentered.
	 */
	Singular				= 1 <<  5,
	/**
	 * Function is network-replicated.
	 */
	Net						= 1 <<  6,
	/**
	 * Function should be sent reliably on the network.
	 */
	NetReliable				= 1 <<  7,
	/**
	 * Function executed on the client side.
	 */
	Simulated				= 1 <<  8,
	/**
	 * Executable from command line.
	 */
	Exec					= 1 <<  9,
	/**
	 * Native function.
	 */
	Native					= 1 << 10,
	/**
	 * Event function.
	 */
	Event					= 1 << 11,
	/**
	 * Operator function.
	 */
	Operator				= 1 << 12,
	/**
	 * Static function.
	 */
	Static					= 1 << 13,
	/**
	 * Function has optional parameters.
	 */
	HasOptionalParams		= 1 << 14,
	/**
	 * Function doesn't modify this object.
	 */
	Const					= 1 << 15,
	/**
	 * Return value is purely dependent on parameters; no state dependencies or internal state changes.
	 */
	Invarient				= 1 << 16,
	/**
	 * Function is accessible in all classes (if overridden, parameters much remain unchanged).
	 */
	Public					= 1 << 17,
	/**
	 * Function is accessible only in the class it is defined in (cannot be overriden, but function
	 * name may be reused in subclasses.  IOW: if overridden, parameters don't need to match, and
	 * Super.Func() cannot be accessed since it's private.)
	 */
	Private					= 1 << 18,
	/**
	 * Function is accessible only in the class it is defined in and subclasses (if overridden, parameters much remain unchanged).
	 */
	Protected				= 1 << 19,
	/**
	 * Function is actually a delegate.
	 */
	Delegate				= 1 << 20,
	/**
	 * Function is executed on servers (set by replication code if passes check).
	 */
	NetServer				= 1 << 21,
	/**
	 * Function has out (pass by reference) parameters.
	 */
	HasOutParams			= 1 << 22,
	/**
	 * Function has structs that contain defaults.
	 */
	HasDefaults				= 1 << 23,
	/**
	 * Function is executed on clients.
	 */
	NetClient				= 1 << 24,
	/**
	 * Function is imported from a DLL.
	 */
	DLLImport				= 1 << 25,
	/**
	 * Function can be called from K2.
	 */
	K2Call					= 1 << 26,
	/**
	 * Function can be overriden/implemented from K2.
	 */
	K2Override				= 1 << 27,
	/**
	 * Function can be called from K2, and is also pure (produces no side effects).
	 * If you set this, you should set K2Call as well.
	 */
	K2Pure					= 1 << 28,

	InheritFuncFlags = Exec | Event,
	OverrideFuncMatchFlags = Exec | Final | Latent | PreOperator | Iterator | Static | Public | Protected | Const,
	NetFuncFlags = Net | NetReliable | NetServer | NetClient,

	AllFlags = 0xFFFFFFFF,
}

extern(C++) public interface ScriptState : ScriptStruct // Total size: 0xD8
{
public:
	@property
	{
		// __padding__ 0x90 (0x48)
	}
}

extern(C++) public interface ScriptClass : ScriptState // Total size: 0x01D4
{
public:
	@property
	{
		// __padding__ 0xD8 (0xFC)
	}
}

extern(C++) public interface ScriptProperty : ScriptField // Total size: 0x80
{
public:
	@property
	{
		final auto ref uint ArrayDimentions() { return *cast(uint*)(cast(size_t)cast(void*)this + 0x40); }													// 0x40 (0x04)
		final auto ref uint ElementSize() { return *cast(uint*)(cast(size_t)cast(void*)this + 0x44); }														// 0x44 (0x04)
		final auto ref Flags!(ScriptPropertyFlags) PropertyFlags() { return *cast(Flags!(ScriptPropertyFlags)*)(cast(size_t)cast(void*)this + 0x48); }		// 0x48 (0x08)
		// __padding1__ 0x50 (0x10)
		final auto ref uint Offset() { return *cast(uint*)(cast(size_t)cast(void*)this + 0x60); }															// 0x60 (0x04)
		// __padding2__ 0x64 (0x1C)


		// Utility Properties

		final bool IsConstant() { return PropertyFlags.HasFlag(ScriptPropertyFlags.Const); }
		final bool IsOptionalParameter() { return PropertyFlags.HasFlag(ScriptPropertyFlags.OptionalParam); }
		final bool IsOutParameter() { return PropertyFlags.HasFlag(ScriptPropertyFlags.OutParam); }
		final bool IsParameter() { return PropertyFlags.HasFlag(ScriptPropertyFlags.Param); }
		final bool IsReturnParameter() { return PropertyFlags.HasFlag(ScriptPropertyFlags.ReturnParam); }

		final const(ScriptPropertyType) Type()
		{
			switch (ObjectClass.GetName())
			{
				case "ArrayProperty":
					return ScriptPropertyType.Array;
				case "BoolProperty":
					return ScriptPropertyType.Boolean;
				case "ByteProperty":
					if ((cast(ScriptByteProperty)this).EnumType !is null)
						return ScriptPropertyType.Enum;
					else
						return ScriptPropertyType.Byte;
				case "ClassProperty":
					return ScriptPropertyType.Class;
				case "ComponentProperty":
					return ScriptPropertyType.Component;
				case "DelegateProperty":
					return ScriptPropertyType.Delegate;
				case "FloatProperty":
					return ScriptPropertyType.Float;
				case "IntProperty":
					return ScriptPropertyType.Integer;
				case "InterfaceProperty":
					return ScriptPropertyType.Interface;
				case "MapProperty":
					return ScriptPropertyType.Map;
				case "NameProperty":
					return ScriptPropertyType.Name;
				case "ObjectProperty":
					return ScriptPropertyType.Object;
				case "StrProperty":
					return ScriptPropertyType.String;
				case "StructProperty":
					return ScriptPropertyType.Struct;

				default:
					throw new Exception("Unknown object class '" ~ ObjectClass.GetName() ~ "' for a property!");
			}
		}
	}
}

public enum ScriptPropertyType
{
	Array,
	Boolean,
	Byte,
	Class,
	Component,
	Delegate,
	Enum,
	Float,
	Integer,
	Interface,
	Map,
	Name,
	Object,
	String,
	Struct,
}

public enum ScriptPropertyFlags : ulong // Total size: 0x08
{
	/**
	 * Property is user-settable in the editor.
	 */
	Edit				= 1UL <<  0,
	/**
	 * Actor's property always matches class's default actor property.
	 */
	Const				= 1UL <<  1,
	/**
	 * Variable is writable by the input system.
	 */
	Input				= 1UL <<  2,
	/**
	 * Object can be exported with actor.
	 */
	ExportObject		= 1UL <<  3,
	/**
	 * Optional parameter. (if Param is set)
	 */
	OptionalParam		= 1UL <<  4,
	/**
	 * Property is relevant to network replication.
	 */
	Net					= 1UL <<  5,
	/**
	 * Indicates that elements of an array can be modified, but its size cannot be changed.
	 */
	EditFixedSize		= 1UL <<  6,
	/**
	 * Function/When call parameter.
	 */
	Param				= 1UL <<  7,
	/**
	 * Value is copied out after function call.
	 */
	OutParam			= 1UL <<  8,
	/**
	 * Property is a short-circuitable evaluation function param.
	 */
	SkipParam			= 1UL <<  9,
	/**
	 * Return value.
	 */
	ReturnParam			= 1UL << 10,
	/**
	 * Coerce arguments into this function parameter.
	 */
	CoerceParam			= 1UL << 11,
	/**
	 * Property is native: C++ code is responsible for serializing it.
	 */
	Native				= 1UL << 12,
	/**
	 * Property is transient: shouldn't be saved, zero-filled at load time.
	 */
	Transient			= 1UL << 13,
	/**
	 * Property should be loaded/saved as permanent profile.
	 */
	Config				= 1UL << 14,
	/**
	 * Property should be loaded as localizable text.
	 */
	Localized			= 1UL << 15,
	/**
	 * Property travels across levels/servers.
	 */
	Travel				= 1UL << 16,
	/**
	 * Property isn't editable in the editor.
	 */
	EditConst			= 1UL << 17,
	/**
	 * Load config from base class, not subclass.
	 */
	GlobalConfig		= 1UL << 18,
	/**
	 * Property contains component references.
	 */
	Component			= 1UL << 19,
	/**
	 * Property should never be exported as NoInit.
	 */
	AlwaysInit			= 1UL << 20,
	/**
	 * Property should always be reset to the default value during any type of duplication. (copy/paste, binary duplication, etc.)
	 */
	DuplicateTransient	= 1UL << 21,
	/**
	 * Fields need construction/destruction.
	 */
	NeedCtorLink		= 1UL << 22,
	/**
	 * Property should not be exported to the native class header file.
	 */
	NoExport			= 1UL << 23,
	/**
	 * Property should not be imported when creating an object from text. (copy/paste)
	 */
	NoImport			= 1UL << 24,
	/**
	 * Hide clear (and browse) button.
	 */
	NoClear				= 1UL << 25,
	/**
	 * Edit this object reference inline.
	 */
	EditInline			= 1UL << 26,
	/**
	 * References are set by clicking on actors in the editor viewports.
	 */
	EditorFindable		= 1UL << 27,
	/**
	 * EditInline with Use button.
	 */
	EditInlineUse		= 1UL << 28,
	/**
	 * Property is deprecated. Read it from an archive, but don't save it.
	 */
	Deprecated			= 1UL << 29,
	/**
	 * Indicates that this property should be exposed to data stores.
	 */
	DataBinding			= 1UL << 30,
	/**
	 * Native property should be serialized as text. (ImportText, ExportText)
	 */
	SerializeText		= 1UL << 31,
	/**
	 * Notify actors when a property is replicated.
	 */
	RepNotify			= 1UL << 32,
	/**
	 * Interpolatable property for use with matinee.
	 */
	Interpolate			= 1UL << 33,
	/**
	 * Property isn't transacted.
	 */
	NonTransactional	= 1UL << 34,
	/**
	 * Property should only be loaded in the editor.
	 */
	EditorOnly			= 1UL << 35,
	/**
	 * Property should not be loaded on console. (or be a console cooker commandlet)
	 */
	NotForConsole		= 1UL << 36,
	/**
	 * Retry replication of this property if it fails to be fully sent. (e.g. object references not yet available to serialize over the network)
	 */
	RepRetry			= 1UL << 37,
	/**
	 * Property is const outside of the class it was declared in.
	 */
	PrivateWrite		= 1UL << 38,
	/**
	 * Property is const outside of the class it was declared in and subclasses.
	 */
	ProtectedWrite		= 1UL << 39,
	/**
	 * Property should be ignored by archives which have ArIgnoreArchetypeRef set.
	 */
	ArchetypeProperty	= 1UL << 40,
	/**
	 * Property should never be shown in a properties window.
	 */
	EditHide			= 1UL << 41,
	/**
	 * Property can be edited using a text dialog box.
	 */
	EditTextBox			= 1UL << 42,
	// UNKNOWN			= 1UL << 43,
	/**
	 * Property can point across levels, and will be serialized properly, but assumes it's target exists in-game. (non-editor)
	 */
	CrossLevelPassive	= 1UL << 44,
	/**
	 * Property can point across levels, and will be serialized properly, and will be updated when the target is streamed in/out.
	 */
	CrossLevelActive	= 1UL << 45,
	
	ParamFlags = OptionalParam | Param | OutParam | SkipParam | ReturnParam | CoerceParam,
	PropagateFromStruct = Const | Native | Transient,
	PropagateToArrayInner = ExportObject | EditInline | EditInlineUse | Localized | Component | Config | AlwaysInit | EditConst | Deprecated | SerializeText | CrossLevelPassive | CrossLevelActive,
	
	/**
	 * The flags that should never be set on interface properties.
	 */
	InterfaceClearMask = NeedCtorLink | ExportObject,
	/**
	 * A combination of both cross level types.
	 */
	CrossLevel = CrossLevelPassive | CrossLevelActive,
}

extern(C++) public interface ScriptObjectProperty : ScriptProperty // Total size: 0x84
{
public:
	@property
	{
		final auto ref ScriptClass PropertyClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 0x80); }		// 0x80 (0x04)
	}
}

extern(C++) public interface ScriptArrayProperty : ScriptProperty // Total size: 0x84
{
public:
	@property
	{
		final auto ref ScriptProperty InnerProperty() { return *cast(ScriptProperty*)(cast(size_t)cast(void*)this + 0x80); }	// 0x80 (0x04)
	}
}

extern(C++) public interface ScriptBoolProperty : ScriptProperty // Total size: 0x84
{
public:
	@property
	{
		final auto ref uint BitMask() { return *cast(uint*)(cast(size_t)cast(void*)this + 0x80); }		// 0x80 (0x04)
	}
}

extern(C++) public interface ScriptByteProperty : ScriptProperty // Total size: 0x84
{
public:
	@property
	{
		final auto ref ScriptEnum EnumType() { return *cast(ScriptEnum*)(cast(size_t)cast(void*)this + 0x80); }		// 0x80 (0x04)
	}
}

/**
 * Describes a pointer to a function bound to an Object.
 */
extern(C++) public interface ScriptDelegateProperty : ScriptProperty // Total size: 0x88
{
public:
	@property
	{
		/**
		 * The function this delegate is mapped to.
		 */
		final auto ref ScriptFunction Function() { return *cast(ScriptFunction*)(cast(size_t)cast(void*)this + 0x80); }				// 0x80 (0x04)
		/**
		 * If this DelegateProperty corresponds to an actual delegate
		 * variable, as opposed to the hidden property the script
		 * compiler creates when you declare a delegate function,
	 	 * this points to the source delegate function (the function
	 	 * declared with the delegate keyword) used in the declaration
	 	 * of this delegate property.
		 */
		final auto ref ScriptFunction SourceDelegate() { return *cast(ScriptFunction*)(cast(size_t)cast(void*)this + 0x84); }		// 0x84 (0x04)
	}
}

/**
 *  Describes a dynamic map.
 */
extern(C++) public interface ScriptMapProperty : ScriptProperty // Total size: 0x88
{
public:
	@property
	{
		final auto ref ScriptProperty Key() { return *cast(ScriptProperty*)(cast(size_t)cast(void*)this + 0x80); }		// 0x80 (0x04)
		final auto ref ScriptProperty Value() { return *cast(ScriptProperty*)(cast(size_t)cast(void*)this + 0x84); }	// 0x84 (0x04)
	}
}

/**
 * This variable type provides safe access to a native interface 
 * pointer.
 */
extern(C++) public interface ScriptInterfaceProperty : ScriptProperty // Total size: 0x84
{
public:
	@property
	{
		/**
		 * The native interface class that this interface property refers to.
		 */
		final auto ref ScriptClass InterfaceClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 0x80); }		// 0x80 (0x04)
	}
}

extern(C++) public interface ScriptClassProperty : ScriptObjectProperty // Total size: 0x88
{
public:
	@property
	{
		final auto ref ScriptClass MetaClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 0x84); }			// 0x84 (0x04)
	}
}

public struct Vector // Total size: 0x0C
{
private:
	float mX, mY, mZ;
	
public:
	this(float x = 0, float y = 0, float z = 0)
	{
		this.mX = x;
		this.mY = y;
		this.mZ = z;
	}
	
	@property
	{
		auto ref float X() { return mX; }
		float X(float x) { return mX = x; }
		auto ref float Y() { return mY; }
		float Y(float y) { return mY = y; }
		auto ref float Z() { return mZ; }
		float Z(float z) { return mZ = z; }
	}
	
	Vector opBinary(string op)(float num)
	{
		static if (op == "*")
			return Vector(X * num, Y * num, Z * num);
		else static if (op == "/")
			return Vector(X / num, Y / num, Z / num);
		else static if (op == "+")
			return Vector(X + num, Y + num, Z + num);
		else static if (op == "-")
			return Vector(X - num, Y - num, Z - num);
		else
			static assert(0, "Operator " ~ op ~ " is not implemented!");
	}
	
	Vector opBinary(string op)(Vector other)
	{
		static if (op == "+")
			return Vector(X + other.X, Y + other.Y, Z + other.Z);
		else static if(op == "-")
			return Vector(X - other.X, Y - other.Y, Z - other.Z);
		else
			static assert(0, "Operator " ~ op ~ " is not implemented!");
	}
	
	float Length()
	{
		if (X + Y + Z == 0)
			return 0.0f;
		
		return sqrt(X * X + Y * Y + Z * Z);
	}
	
	Vector Normalize()
	{
		float magnitude = Length();
		Vector tmp = this;
		tmp.X /= magnitude;
		tmp.Y /= magnitude;
		tmp.Z /= magnitude;
		return tmp;
	}
	
	float DotProduct(Vector other)
	{
		return X * other.X + Y * other.Y + Z * other.Z;
	}
	
	Vector CrossProduct(Vector other)
	{
		return Vector(Y * other.Z - Z * other.Y, Z * other.X - X * other.Z, X * other.Y - Y * other.X);
	}
}

public struct Rotator // Total size: 0x0C
{
private:
	int mPitch, mYaw, mRoll;
	
public:
	this(int pitch = 0, int yaw = 0, int roll = 0)
	{
		this.mPitch = pitch;
		this.mYaw = yaw;
		this.mRoll = roll;
	}
	
	@property
	{
		auto ref int Pitch() { return mPitch; }
		int Pitch(int pitch) { return mPitch = pitch; }
		auto ref int Yaw() { return mYaw; }
		int Yaw(int yaw) { return mYaw = yaw; }
		auto ref int Roll() { return mRoll; }
		int Roll(int roll) { return mRoll = roll; }
	}
	
	Rotator opBinary(string op)(float num)
	{
		static if (op == "*")
			return Rotator(cast(int)(Pitch * num), cast(int)(Yaw * num), cast(int)(Roll * num));
		else static if (op == "/")
			return Rotator(cast(int)(Pitch / num), cast(int)(Yaw / num), cast(int)(Roll / num));
		else static if (op == "+")
			return Rotator(cast(int)(Pitch + num), cast(int)(Yaw + num), cast(int)(Roll + num));
		else static if (op == "-")
			return Rotator(cast(int)(Pitch - num), cast(int)(Yaw - num), cast(int)(Roll - num));
		else
			static assert(0, "Operator " ~ op ~ " is not implemented!");
	}
	
	Rotator opBinary(string op)(Rotator other)
	{
		static if (op == "+")
			return Rotator(Pitch + other.Pitch, Yaw + other.Yaw, Roll + other.Roll);
		else static if (op == "-")
			return Rotator(Pitch - other.Pitch, Yaw - other.Yaw, Roll - other.Roll);
		else
			static assert(0, "Operator " ~ op ~ " is not implemented!");
	}
	
	Vector GetForward()
	{
		float angle;
		
		angle = cast(float)(Pitch) * (PI * 2 / 65535);
		float sinPitch = sin(angle);
		float cosPitch = cos(angle);
		
		angle = cast(float)(Yaw) * (PI * 2 / 65535);
		float sinYaw = sin(angle);
		float cosYaw = cos(angle);
		
		return Vector(cosPitch * cosYaw, cosPitch * sinYaw, sinPitch);
	}
	
	Vector GetRight()
	{
		float angle;
		
		angle = cast(float)(Pitch) * (PI * 2 / 65535);
		float sinPitch = sin(angle);
		float cosPitch = cos(angle);
		
		angle = cast(float)(Yaw) * (PI * 2 / 65535);
		float sinYaw = sin(angle);
		float cosYaw = cos(angle);
		
		angle = cast(float)(Roll) * (PI * 2 / 65535);
		float sinRoll = sin(angle);
		float cosRoll = cos(angle);
		
		return Vector(-sinRoll * sinPitch * cosYaw + cosRoll * sinYaw, -sinRoll * sinPitch * sinYaw - cosRoll * cosYaw, sinRoll * cosPitch);
	}
	
	Vector GetUp()
	{
		float angle;
		
		angle = cast(float)(Pitch) * (PI * 2 / 65535);
		float sinPitch = sin(angle);
		float cosPitch = cos(angle);
		
		angle = cast(float)(Yaw) * (PI * 2 / 65535);
		float sinYaw = sin(angle);
		float cosYaw = cos(angle);
		
		angle = cast(float)(Roll) * (PI * 2 / 65535);
		float sinRoll = sin(angle);
		float cosRoll = cos(angle);
		
		return Vector(cosRoll * sinPitch * cosYaw + sinRoll * sinYaw, cosRoll * sinPitch * sinYaw - sinRoll * cosYaw, -cosRoll * cosPitch);
	}
}