.class public final enum Lio/grpc/SecurityLevel;
.super Ljava/lang/Enum;
.source "SecurityLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/SecurityLevel;",
        ">;"
    }
.end annotation

.annotation build Lio/grpc/ExperimentalApi;
    value = "https://github.com/grpc/grpc-java/issues/4692"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/SecurityLevel;

.field public static final enum INTEGRITY:Lio/grpc/SecurityLevel;

.field public static final enum NONE:Lio/grpc/SecurityLevel;

.field public static final enum PRIVACY_AND_INTEGRITY:Lio/grpc/SecurityLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 27
    new-instance v0, Lio/grpc/SecurityLevel;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/grpc/SecurityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/SecurityLevel;->NONE:Lio/grpc/SecurityLevel;

    .line 32
    new-instance v0, Lio/grpc/SecurityLevel;

    const-string v1, "INTEGRITY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lio/grpc/SecurityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/SecurityLevel;->INTEGRITY:Lio/grpc/SecurityLevel;

    .line 38
    new-instance v0, Lio/grpc/SecurityLevel;

    const-string v1, "PRIVACY_AND_INTEGRITY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lio/grpc/SecurityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/SecurityLevel;->PRIVACY_AND_INTEGRITY:Lio/grpc/SecurityLevel;

    const/4 v0, 0x3

    .line 22
    new-array v0, v0, [Lio/grpc/SecurityLevel;

    sget-object v1, Lio/grpc/SecurityLevel;->NONE:Lio/grpc/SecurityLevel;

    aput-object v1, v0, v2

    sget-object v1, Lio/grpc/SecurityLevel;->INTEGRITY:Lio/grpc/SecurityLevel;

    aput-object v1, v0, v3

    sget-object v1, Lio/grpc/SecurityLevel;->PRIVACY_AND_INTEGRITY:Lio/grpc/SecurityLevel;

    aput-object v1, v0, v4

    sput-object v0, Lio/grpc/SecurityLevel;->$VALUES:[Lio/grpc/SecurityLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/SecurityLevel;
    .locals 1

    .line 22
    const-class v0, Lio/grpc/SecurityLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/SecurityLevel;

    return-object p0
.end method

.method public static values()[Lio/grpc/SecurityLevel;
    .locals 1

    .line 22
    sget-object v0, Lio/grpc/SecurityLevel;->$VALUES:[Lio/grpc/SecurityLevel;

    invoke-virtual {v0}, [Lio/grpc/SecurityLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/SecurityLevel;

    return-object v0
.end method
