.class public final enum Lcom/google/rpc/Code;
.super Ljava/lang/Enum;
.source "Code.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/rpc/Code$CodeVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/rpc/Code;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/rpc/Code;

.field public static final enum ABORTED:Lcom/google/rpc/Code;

.field public static final ABORTED_VALUE:I = 0xa

.field public static final enum ALREADY_EXISTS:Lcom/google/rpc/Code;

.field public static final ALREADY_EXISTS_VALUE:I = 0x6

.field public static final enum CANCELLED:Lcom/google/rpc/Code;

.field public static final CANCELLED_VALUE:I = 0x1

.field public static final enum DATA_LOSS:Lcom/google/rpc/Code;

.field public static final DATA_LOSS_VALUE:I = 0xf

.field public static final enum DEADLINE_EXCEEDED:Lcom/google/rpc/Code;

.field public static final DEADLINE_EXCEEDED_VALUE:I = 0x4

.field public static final enum FAILED_PRECONDITION:Lcom/google/rpc/Code;

.field public static final FAILED_PRECONDITION_VALUE:I = 0x9

.field public static final enum INTERNAL:Lcom/google/rpc/Code;

.field public static final INTERNAL_VALUE:I = 0xd

.field public static final enum INVALID_ARGUMENT:Lcom/google/rpc/Code;

.field public static final INVALID_ARGUMENT_VALUE:I = 0x3

.field public static final enum NOT_FOUND:Lcom/google/rpc/Code;

.field public static final NOT_FOUND_VALUE:I = 0x5

.field public static final enum OK:Lcom/google/rpc/Code;

.field public static final OK_VALUE:I = 0x0

.field public static final enum OUT_OF_RANGE:Lcom/google/rpc/Code;

.field public static final OUT_OF_RANGE_VALUE:I = 0xb

.field public static final enum PERMISSION_DENIED:Lcom/google/rpc/Code;

.field public static final PERMISSION_DENIED_VALUE:I = 0x7

.field public static final enum RESOURCE_EXHAUSTED:Lcom/google/rpc/Code;

.field public static final RESOURCE_EXHAUSTED_VALUE:I = 0x8

.field public static final enum UNAUTHENTICATED:Lcom/google/rpc/Code;

.field public static final UNAUTHENTICATED_VALUE:I = 0x10

.field public static final enum UNAVAILABLE:Lcom/google/rpc/Code;

.field public static final UNAVAILABLE_VALUE:I = 0xe

.field public static final enum UNIMPLEMENTED:Lcom/google/rpc/Code;

.field public static final UNIMPLEMENTED_VALUE:I = 0xc

.field public static final enum UNKNOWN:Lcom/google/rpc/Code;

.field public static final UNKNOWN_VALUE:I = 0x2

.field public static final enum UNRECOGNIZED:Lcom/google/rpc/Code;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/rpc/Code;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 27
    new-instance v0, Lcom/google/rpc/Code;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/rpc/Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/rpc/Code;->OK:Lcom/google/rpc/Code;

    .line 36
    new-instance v0, Lcom/google/rpc/Code;

    const-string v1, "CANCELLED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/rpc/Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/rpc/Code;->CANCELLED:Lcom/google/rpc/Code;

    .line 49
    new-instance v0, Lcom/google/rpc/Code;

    const-string v1, "UNKNOWN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/google/rpc/Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/rpc/Code;->UNKNOWN:Lcom/google/rpc/Code;

    .line 61
    new-instance v0, Lcom/google/rpc/Code;

    const-string v1, "INVALID_ARGUMENT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/google/rpc/Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/rpc/Code;->INVALID_ARGUMENT:Lcom/google/rpc/Code;

    .line 74
    new-instance v0, Lcom/google/rpc/Code;

    const-string v1, "DEADLINE_EXCEEDED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/google/rpc/Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/rpc/Code;->DEADLINE_EXCEEDED:Lcom/google/rpc/Code;

    .line 88
    new-instance v0, Lcom/google/rpc/Code;

    const-string v1, "NOT_FOUND"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/google/rpc/Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/rpc/Code;->NOT_FOUND:Lcom/google/rpc/Code;

    .line 98
    new-instance v0, Lcom/google/rpc/Code;

    const-string v1, "ALREADY_EXISTS"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/google/rpc/Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/rpc/Code;->ALREADY_EXISTS:Lcom/google/rpc/Code;

    .line 114
    new-instance v0, Lcom/google/rpc/Code;

    const-string v1, "PERMISSION_DENIED"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/google/rpc/Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/rpc/Code;->PERMISSION_DENIED:Lcom/google/rpc/Code;

    .line 124
    new-instance v0, Lcom/google/rpc/Code;

    const-string v1, "UNAUTHENTICATED"

    const/16 v10, 0x10

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v10}, Lcom/google/rpc/Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/rpc/Code;->UNAUTHENTICATED:Lcom/google/rpc/Code;

    .line 134
    new-instance v0, Lcom/google/rpc/Code;

    const-string v1, "RESOURCE_EXHAUSTED"

    const/16 v12, 0x9

    invoke-direct {v0, v1, v12, v11}, Lcom/google/rpc/Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/rpc/Code;->RESOURCE_EXHAUSTED:Lcom/google/rpc/Code;

    .line 157
    new-instance v0, Lcom/google/rpc/Code;

    const-string v1, "FAILED_PRECONDITION"

    const/16 v13, 0xa

    invoke-direct {v0, v1, v13, v12}, Lcom/google/rpc/Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/rpc/Code;->FAILED_PRECONDITION:Lcom/google/rpc/Code;

    .line 169
    new-instance v0, Lcom/google/rpc/Code;

    const-string v1, "ABORTED"

    const/16 v14, 0xb

    invoke-direct {v0, v1, v14, v13}, Lcom/google/rpc/Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/rpc/Code;->ABORTED:Lcom/google/rpc/Code;

    .line 190
    new-instance v0, Lcom/google/rpc/Code;

    const-string v1, "OUT_OF_RANGE"

    const/16 v15, 0xc

    invoke-direct {v0, v1, v15, v14}, Lcom/google/rpc/Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/rpc/Code;->OUT_OF_RANGE:Lcom/google/rpc/Code;

    .line 200
    new-instance v0, Lcom/google/rpc/Code;

    const-string v1, "UNIMPLEMENTED"

    const/16 v14, 0xd

    invoke-direct {v0, v1, v14, v15}, Lcom/google/rpc/Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/rpc/Code;->UNIMPLEMENTED:Lcom/google/rpc/Code;

    .line 211
    new-instance v0, Lcom/google/rpc/Code;

    const-string v1, "INTERNAL"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v14}, Lcom/google/rpc/Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/rpc/Code;->INTERNAL:Lcom/google/rpc/Code;

    .line 225
    new-instance v0, Lcom/google/rpc/Code;

    const-string v1, "UNAVAILABLE"

    const/16 v15, 0xf

    const/16 v14, 0xe

    invoke-direct {v0, v1, v15, v14}, Lcom/google/rpc/Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/rpc/Code;->UNAVAILABLE:Lcom/google/rpc/Code;

    .line 234
    new-instance v0, Lcom/google/rpc/Code;

    const-string v1, "DATA_LOSS"

    const/16 v14, 0xf

    invoke-direct {v0, v1, v10, v14}, Lcom/google/rpc/Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/rpc/Code;->DATA_LOSS:Lcom/google/rpc/Code;

    .line 235
    new-instance v0, Lcom/google/rpc/Code;

    const-string v1, "UNRECOGNIZED"

    const/16 v14, 0x11

    const/4 v15, -0x1

    invoke-direct {v0, v1, v14, v15}, Lcom/google/rpc/Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/rpc/Code;->UNRECOGNIZED:Lcom/google/rpc/Code;

    const/16 v0, 0x12

    .line 17
    new-array v0, v0, [Lcom/google/rpc/Code;

    sget-object v1, Lcom/google/rpc/Code;->OK:Lcom/google/rpc/Code;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/rpc/Code;->CANCELLED:Lcom/google/rpc/Code;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/rpc/Code;->UNKNOWN:Lcom/google/rpc/Code;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/rpc/Code;->INVALID_ARGUMENT:Lcom/google/rpc/Code;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/rpc/Code;->DEADLINE_EXCEEDED:Lcom/google/rpc/Code;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/rpc/Code;->NOT_FOUND:Lcom/google/rpc/Code;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/rpc/Code;->ALREADY_EXISTS:Lcom/google/rpc/Code;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/rpc/Code;->PERMISSION_DENIED:Lcom/google/rpc/Code;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/rpc/Code;->UNAUTHENTICATED:Lcom/google/rpc/Code;

    aput-object v1, v0, v11

    sget-object v1, Lcom/google/rpc/Code;->RESOURCE_EXHAUSTED:Lcom/google/rpc/Code;

    aput-object v1, v0, v12

    sget-object v1, Lcom/google/rpc/Code;->FAILED_PRECONDITION:Lcom/google/rpc/Code;

    aput-object v1, v0, v13

    sget-object v1, Lcom/google/rpc/Code;->ABORTED:Lcom/google/rpc/Code;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/rpc/Code;->OUT_OF_RANGE:Lcom/google/rpc/Code;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/rpc/Code;->UNIMPLEMENTED:Lcom/google/rpc/Code;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/rpc/Code;->INTERNAL:Lcom/google/rpc/Code;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/rpc/Code;->UNAVAILABLE:Lcom/google/rpc/Code;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/rpc/Code;->DATA_LOSS:Lcom/google/rpc/Code;

    aput-object v1, v0, v10

    sget-object v1, Lcom/google/rpc/Code;->UNRECOGNIZED:Lcom/google/rpc/Code;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/rpc/Code;->$VALUES:[Lcom/google/rpc/Code;

    .line 503
    new-instance v0, Lcom/google/rpc/Code$1;

    invoke-direct {v0}, Lcom/google/rpc/Code$1;-><init>()V

    sput-object v0, Lcom/google/rpc/Code;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 527
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 528
    iput p3, p0, Lcom/google/rpc/Code;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/rpc/Code;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 485
    :pswitch_0
    sget-object p0, Lcom/google/rpc/Code;->UNAUTHENTICATED:Lcom/google/rpc/Code;

    return-object p0

    .line 493
    :pswitch_1
    sget-object p0, Lcom/google/rpc/Code;->DATA_LOSS:Lcom/google/rpc/Code;

    return-object p0

    .line 492
    :pswitch_2
    sget-object p0, Lcom/google/rpc/Code;->UNAVAILABLE:Lcom/google/rpc/Code;

    return-object p0

    .line 491
    :pswitch_3
    sget-object p0, Lcom/google/rpc/Code;->INTERNAL:Lcom/google/rpc/Code;

    return-object p0

    .line 490
    :pswitch_4
    sget-object p0, Lcom/google/rpc/Code;->UNIMPLEMENTED:Lcom/google/rpc/Code;

    return-object p0

    .line 489
    :pswitch_5
    sget-object p0, Lcom/google/rpc/Code;->OUT_OF_RANGE:Lcom/google/rpc/Code;

    return-object p0

    .line 488
    :pswitch_6
    sget-object p0, Lcom/google/rpc/Code;->ABORTED:Lcom/google/rpc/Code;

    return-object p0

    .line 487
    :pswitch_7
    sget-object p0, Lcom/google/rpc/Code;->FAILED_PRECONDITION:Lcom/google/rpc/Code;

    return-object p0

    .line 486
    :pswitch_8
    sget-object p0, Lcom/google/rpc/Code;->RESOURCE_EXHAUSTED:Lcom/google/rpc/Code;

    return-object p0

    .line 484
    :pswitch_9
    sget-object p0, Lcom/google/rpc/Code;->PERMISSION_DENIED:Lcom/google/rpc/Code;

    return-object p0

    .line 483
    :pswitch_a
    sget-object p0, Lcom/google/rpc/Code;->ALREADY_EXISTS:Lcom/google/rpc/Code;

    return-object p0

    .line 482
    :pswitch_b
    sget-object p0, Lcom/google/rpc/Code;->NOT_FOUND:Lcom/google/rpc/Code;

    return-object p0

    .line 481
    :pswitch_c
    sget-object p0, Lcom/google/rpc/Code;->DEADLINE_EXCEEDED:Lcom/google/rpc/Code;

    return-object p0

    .line 480
    :pswitch_d
    sget-object p0, Lcom/google/rpc/Code;->INVALID_ARGUMENT:Lcom/google/rpc/Code;

    return-object p0

    .line 479
    :pswitch_e
    sget-object p0, Lcom/google/rpc/Code;->UNKNOWN:Lcom/google/rpc/Code;

    return-object p0

    .line 478
    :pswitch_f
    sget-object p0, Lcom/google/rpc/Code;->CANCELLED:Lcom/google/rpc/Code;

    return-object p0

    .line 477
    :pswitch_10
    sget-object p0, Lcom/google/rpc/Code;->OK:Lcom/google/rpc/Code;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/rpc/Code;",
            ">;"
        }
    .end annotation

    .line 500
    sget-object v0, Lcom/google/rpc/Code;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 513
    sget-object v0, Lcom/google/rpc/Code$CodeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/rpc/Code;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 472
    invoke-static {p0}, Lcom/google/rpc/Code;->forNumber(I)Lcom/google/rpc/Code;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/rpc/Code;
    .locals 1

    .line 17
    const-class v0, Lcom/google/rpc/Code;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/Code;

    return-object p0
.end method

.method public static values()[Lcom/google/rpc/Code;
    .locals 1

    .line 17
    sget-object v0, Lcom/google/rpc/Code;->$VALUES:[Lcom/google/rpc/Code;

    invoke-virtual {v0}, [Lcom/google/rpc/Code;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/rpc/Code;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    .line 458
    sget-object v0, Lcom/google/rpc/Code;->UNRECOGNIZED:Lcom/google/rpc/Code;

    if-eq p0, v0, :cond_0

    .line 462
    iget v0, p0, Lcom/google/rpc/Code;->value:I

    return v0

    .line 459
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
