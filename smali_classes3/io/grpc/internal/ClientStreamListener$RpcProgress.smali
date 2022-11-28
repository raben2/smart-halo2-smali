.class public final enum Lio/grpc/internal/ClientStreamListener$RpcProgress;
.super Ljava/lang/Enum;
.source "ClientStreamListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ClientStreamListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RpcProgress"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/internal/ClientStreamListener$RpcProgress;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/internal/ClientStreamListener$RpcProgress;

.field public static final enum DROPPED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

.field public static final enum PROCESSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

.field public static final enum REFUSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 73
    new-instance v0, Lio/grpc/internal/ClientStreamListener$RpcProgress;

    const-string v1, "PROCESSED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/grpc/internal/ClientStreamListener$RpcProgress;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/internal/ClientStreamListener$RpcProgress;->PROCESSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    .line 77
    new-instance v0, Lio/grpc/internal/ClientStreamListener$RpcProgress;

    const-string v1, "REFUSED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lio/grpc/internal/ClientStreamListener$RpcProgress;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/internal/ClientStreamListener$RpcProgress;->REFUSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    .line 81
    new-instance v0, Lio/grpc/internal/ClientStreamListener$RpcProgress;

    const-string v1, "DROPPED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lio/grpc/internal/ClientStreamListener$RpcProgress;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/internal/ClientStreamListener$RpcProgress;->DROPPED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    const/4 v0, 0x3

    .line 69
    new-array v0, v0, [Lio/grpc/internal/ClientStreamListener$RpcProgress;

    sget-object v1, Lio/grpc/internal/ClientStreamListener$RpcProgress;->PROCESSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    aput-object v1, v0, v2

    sget-object v1, Lio/grpc/internal/ClientStreamListener$RpcProgress;->REFUSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    aput-object v1, v0, v3

    sget-object v1, Lio/grpc/internal/ClientStreamListener$RpcProgress;->DROPPED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    aput-object v1, v0, v4

    sput-object v0, Lio/grpc/internal/ClientStreamListener$RpcProgress;->$VALUES:[Lio/grpc/internal/ClientStreamListener$RpcProgress;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/internal/ClientStreamListener$RpcProgress;
    .locals 1

    .line 69
    const-class v0, Lio/grpc/internal/ClientStreamListener$RpcProgress;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/internal/ClientStreamListener$RpcProgress;

    return-object p0
.end method

.method public static values()[Lio/grpc/internal/ClientStreamListener$RpcProgress;
    .locals 1

    .line 69
    sget-object v0, Lio/grpc/internal/ClientStreamListener$RpcProgress;->$VALUES:[Lio/grpc/internal/ClientStreamListener$RpcProgress;

    invoke-virtual {v0}, [Lio/grpc/internal/ClientStreamListener$RpcProgress;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/internal/ClientStreamListener$RpcProgress;

    return-object v0
.end method
