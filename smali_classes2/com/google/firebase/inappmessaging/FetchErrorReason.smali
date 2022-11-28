.class public final enum Lcom/google/firebase/inappmessaging/FetchErrorReason;
.super Ljava/lang/Enum;
.source "FetchErrorReason.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/FetchErrorReason$FetchErrorReasonVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/inappmessaging/FetchErrorReason;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/inappmessaging/FetchErrorReason;

.field public static final enum CLIENT_ERROR:Lcom/google/firebase/inappmessaging/FetchErrorReason;

.field public static final CLIENT_ERROR_VALUE:I = 0x2

.field public static final enum NETWORK_ERROR:Lcom/google/firebase/inappmessaging/FetchErrorReason;

.field public static final NETWORK_ERROR_VALUE:I = 0x3

.field public static final enum SERVER_ERROR:Lcom/google/firebase/inappmessaging/FetchErrorReason;

.field public static final SERVER_ERROR_VALUE:I = 0x1

.field public static final enum UNSPECIFIED_FETCH_ERROR:Lcom/google/firebase/inappmessaging/FetchErrorReason;

.field public static final UNSPECIFIED_FETCH_ERROR_VALUE:I

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/firebase/inappmessaging/FetchErrorReason;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 23
    new-instance v0, Lcom/google/firebase/inappmessaging/FetchErrorReason;

    const-string v1, "UNSPECIFIED_FETCH_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firebase/inappmessaging/FetchErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/inappmessaging/FetchErrorReason;->UNSPECIFIED_FETCH_ERROR:Lcom/google/firebase/inappmessaging/FetchErrorReason;

    .line 31
    new-instance v0, Lcom/google/firebase/inappmessaging/FetchErrorReason;

    const-string v1, "SERVER_ERROR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/firebase/inappmessaging/FetchErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/inappmessaging/FetchErrorReason;->SERVER_ERROR:Lcom/google/firebase/inappmessaging/FetchErrorReason;

    .line 39
    new-instance v0, Lcom/google/firebase/inappmessaging/FetchErrorReason;

    const-string v1, "CLIENT_ERROR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/google/firebase/inappmessaging/FetchErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/inappmessaging/FetchErrorReason;->CLIENT_ERROR:Lcom/google/firebase/inappmessaging/FetchErrorReason;

    .line 47
    new-instance v0, Lcom/google/firebase/inappmessaging/FetchErrorReason;

    const-string v1, "NETWORK_ERROR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/google/firebase/inappmessaging/FetchErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/inappmessaging/FetchErrorReason;->NETWORK_ERROR:Lcom/google/firebase/inappmessaging/FetchErrorReason;

    const/4 v0, 0x4

    .line 14
    new-array v0, v0, [Lcom/google/firebase/inappmessaging/FetchErrorReason;

    sget-object v1, Lcom/google/firebase/inappmessaging/FetchErrorReason;->UNSPECIFIED_FETCH_ERROR:Lcom/google/firebase/inappmessaging/FetchErrorReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/inappmessaging/FetchErrorReason;->SERVER_ERROR:Lcom/google/firebase/inappmessaging/FetchErrorReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/firebase/inappmessaging/FetchErrorReason;->CLIENT_ERROR:Lcom/google/firebase/inappmessaging/FetchErrorReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/firebase/inappmessaging/FetchErrorReason;->NETWORK_ERROR:Lcom/google/firebase/inappmessaging/FetchErrorReason;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/firebase/inappmessaging/FetchErrorReason;->$VALUES:[Lcom/google/firebase/inappmessaging/FetchErrorReason;

    .line 114
    new-instance v0, Lcom/google/firebase/inappmessaging/FetchErrorReason$1;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/FetchErrorReason$1;-><init>()V

    sput-object v0, Lcom/google/firebase/inappmessaging/FetchErrorReason;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 138
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 139
    iput p3, p0, Lcom/google/firebase/inappmessaging/FetchErrorReason;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/firebase/inappmessaging/FetchErrorReason;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 104
    :pswitch_0
    sget-object p0, Lcom/google/firebase/inappmessaging/FetchErrorReason;->NETWORK_ERROR:Lcom/google/firebase/inappmessaging/FetchErrorReason;

    return-object p0

    .line 103
    :pswitch_1
    sget-object p0, Lcom/google/firebase/inappmessaging/FetchErrorReason;->CLIENT_ERROR:Lcom/google/firebase/inappmessaging/FetchErrorReason;

    return-object p0

    .line 102
    :pswitch_2
    sget-object p0, Lcom/google/firebase/inappmessaging/FetchErrorReason;->SERVER_ERROR:Lcom/google/firebase/inappmessaging/FetchErrorReason;

    return-object p0

    .line 101
    :pswitch_3
    sget-object p0, Lcom/google/firebase/inappmessaging/FetchErrorReason;->UNSPECIFIED_FETCH_ERROR:Lcom/google/firebase/inappmessaging/FetchErrorReason;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
            "Lcom/google/firebase/inappmessaging/FetchErrorReason;",
            ">;"
        }
    .end annotation

    .line 111
    sget-object v0, Lcom/google/firebase/inappmessaging/FetchErrorReason;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 124
    sget-object v0, Lcom/google/firebase/inappmessaging/FetchErrorReason$FetchErrorReasonVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/firebase/inappmessaging/FetchErrorReason;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 96
    invoke-static {p0}, Lcom/google/firebase/inappmessaging/FetchErrorReason;->forNumber(I)Lcom/google/firebase/inappmessaging/FetchErrorReason;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/FetchErrorReason;
    .locals 1

    .line 14
    const-class v0, Lcom/google/firebase/inappmessaging/FetchErrorReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/FetchErrorReason;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/inappmessaging/FetchErrorReason;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/firebase/inappmessaging/FetchErrorReason;->$VALUES:[Lcom/google/firebase/inappmessaging/FetchErrorReason;

    invoke-virtual {v0}, [Lcom/google/firebase/inappmessaging/FetchErrorReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/inappmessaging/FetchErrorReason;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/google/firebase/inappmessaging/FetchErrorReason;->value:I

    return v0
.end method
