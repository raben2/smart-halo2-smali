.class public final enum Lio/grpc/ConnectivityState;
.super Ljava/lang/Enum;
.source "ConnectivityState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/ConnectivityState;",
        ">;"
    }
.end annotation

.annotation build Lio/grpc/ExperimentalApi;
    value = "https://github.com/grpc/grpc-java/issues/4359"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/ConnectivityState;

.field public static final enum CONNECTING:Lio/grpc/ConnectivityState;

.field public static final enum IDLE:Lio/grpc/ConnectivityState;

.field public static final enum READY:Lio/grpc/ConnectivityState;

.field public static final enum SHUTDOWN:Lio/grpc/ConnectivityState;

.field public static final enum TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 32
    new-instance v0, Lio/grpc/ConnectivityState;

    const-string v1, "CONNECTING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/grpc/ConnectivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    .line 39
    new-instance v0, Lio/grpc/ConnectivityState;

    const-string v1, "READY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lio/grpc/ConnectivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    .line 50
    new-instance v0, Lio/grpc/ConnectivityState;

    const-string v1, "TRANSIENT_FAILURE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lio/grpc/ConnectivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    .line 61
    new-instance v0, Lio/grpc/ConnectivityState;

    const-string v1, "IDLE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lio/grpc/ConnectivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    .line 71
    new-instance v0, Lio/grpc/ConnectivityState;

    const-string v1, "SHUTDOWN"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lio/grpc/ConnectivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/ConnectivityState;->SHUTDOWN:Lio/grpc/ConnectivityState;

    const/4 v0, 0x5

    .line 25
    new-array v0, v0, [Lio/grpc/ConnectivityState;

    sget-object v1, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    aput-object v1, v0, v2

    sget-object v1, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    aput-object v1, v0, v3

    sget-object v1, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    aput-object v1, v0, v4

    sget-object v1, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    aput-object v1, v0, v5

    sget-object v1, Lio/grpc/ConnectivityState;->SHUTDOWN:Lio/grpc/ConnectivityState;

    aput-object v1, v0, v6

    sput-object v0, Lio/grpc/ConnectivityState;->$VALUES:[Lio/grpc/ConnectivityState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/ConnectivityState;
    .locals 1

    .line 25
    const-class v0, Lio/grpc/ConnectivityState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/ConnectivityState;

    return-object p0
.end method

.method public static values()[Lio/grpc/ConnectivityState;
    .locals 1

    .line 25
    sget-object v0, Lio/grpc/ConnectivityState;->$VALUES:[Lio/grpc/ConnectivityState;

    invoke-virtual {v0}, [Lio/grpc/ConnectivityState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/ConnectivityState;

    return-object v0
.end method
