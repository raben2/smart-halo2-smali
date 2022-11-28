.class public final enum Lio/realm/sync/Subscription$State;
.super Ljava/lang/Enum;
.source "Subscription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/sync/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/realm/sync/Subscription$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/realm/sync/Subscription$State;

.field public static final enum ACTIVE:Lio/realm/sync/Subscription$State;

.field public static final enum ERROR:Lio/realm/sync/Subscription$State;

.field public static final enum INVALIDATED:Lio/realm/sync/Subscription$State;

.field public static final enum PENDING:Lio/realm/sync/Subscription$State;


# instance fields
.field private final nativeValue:Ljava/lang/Byte;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 58
    new-instance v0, Lio/realm/sync/Subscription$State;

    const-string v1, "ERROR"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lio/realm/sync/Subscription$State;-><init>(Ljava/lang/String;ILjava/lang/Byte;)V

    sput-object v0, Lio/realm/sync/Subscription$State;->ERROR:Lio/realm/sync/Subscription$State;

    .line 64
    new-instance v0, Lio/realm/sync/Subscription$State;

    const-string v1, "PENDING"

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lio/realm/sync/Subscription$State;-><init>(Ljava/lang/String;ILjava/lang/Byte;)V

    sput-object v0, Lio/realm/sync/Subscription$State;->PENDING:Lio/realm/sync/Subscription$State;

    .line 70
    new-instance v0, Lio/realm/sync/Subscription$State;

    const-string v1, "ACTIVE"

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lio/realm/sync/Subscription$State;-><init>(Ljava/lang/String;ILjava/lang/Byte;)V

    sput-object v0, Lio/realm/sync/Subscription$State;->ACTIVE:Lio/realm/sync/Subscription$State;

    .line 77
    new-instance v0, Lio/realm/sync/Subscription$State;

    const-string v1, "INVALIDATED"

    const/4 v2, 0x3

    const/4 v6, 0x0

    invoke-direct {v0, v1, v2, v6}, Lio/realm/sync/Subscription$State;-><init>(Ljava/lang/String;ILjava/lang/Byte;)V

    sput-object v0, Lio/realm/sync/Subscription$State;->INVALIDATED:Lio/realm/sync/Subscription$State;

    const/4 v0, 0x4

    .line 53
    new-array v0, v0, [Lio/realm/sync/Subscription$State;

    sget-object v1, Lio/realm/sync/Subscription$State;->ERROR:Lio/realm/sync/Subscription$State;

    aput-object v1, v0, v3

    sget-object v1, Lio/realm/sync/Subscription$State;->PENDING:Lio/realm/sync/Subscription$State;

    aput-object v1, v0, v4

    sget-object v1, Lio/realm/sync/Subscription$State;->ACTIVE:Lio/realm/sync/Subscription$State;

    aput-object v1, v0, v5

    sget-object v1, Lio/realm/sync/Subscription$State;->INVALIDATED:Lio/realm/sync/Subscription$State;

    aput-object v1, v0, v2

    sput-object v0, Lio/realm/sync/Subscription$State;->$VALUES:[Lio/realm/sync/Subscription$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Byte;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Byte;",
            ")V"
        }
    .end annotation

    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 83
    iput-object p3, p0, Lio/realm/sync/Subscription$State;->nativeValue:Ljava/lang/Byte;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/sync/Subscription$State;
    .locals 1

    .line 53
    const-class v0, Lio/realm/sync/Subscription$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/realm/sync/Subscription$State;

    return-object p0
.end method

.method public static values()[Lio/realm/sync/Subscription$State;
    .locals 1

    .line 53
    sget-object v0, Lio/realm/sync/Subscription$State;->$VALUES:[Lio/realm/sync/Subscription$State;

    invoke-virtual {v0}, [Lio/realm/sync/Subscription$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/sync/Subscription$State;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/Byte;
    .locals 1

    .line 92
    iget-object v0, p0, Lio/realm/sync/Subscription$State;->nativeValue:Ljava/lang/Byte;

    return-object v0
.end method
