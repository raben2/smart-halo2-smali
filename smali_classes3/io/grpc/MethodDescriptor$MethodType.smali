.class public final enum Lio/grpc/MethodDescriptor$MethodType;
.super Ljava/lang/Enum;
.source "MethodDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/MethodDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MethodType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/MethodDescriptor$MethodType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/MethodDescriptor$MethodType;

.field public static final enum BIDI_STREAMING:Lio/grpc/MethodDescriptor$MethodType;

.field public static final enum CLIENT_STREAMING:Lio/grpc/MethodDescriptor$MethodType;

.field public static final enum SERVER_STREAMING:Lio/grpc/MethodDescriptor$MethodType;

.field public static final enum UNARY:Lio/grpc/MethodDescriptor$MethodType;

.field public static final enum UNKNOWN:Lio/grpc/MethodDescriptor$MethodType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 85
    new-instance v0, Lio/grpc/MethodDescriptor$MethodType;

    const-string v1, "UNARY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/grpc/MethodDescriptor$MethodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/MethodDescriptor$MethodType;->UNARY:Lio/grpc/MethodDescriptor$MethodType;

    .line 90
    new-instance v0, Lio/grpc/MethodDescriptor$MethodType;

    const-string v1, "CLIENT_STREAMING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lio/grpc/MethodDescriptor$MethodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/MethodDescriptor$MethodType;->CLIENT_STREAMING:Lio/grpc/MethodDescriptor$MethodType;

    .line 95
    new-instance v0, Lio/grpc/MethodDescriptor$MethodType;

    const-string v1, "SERVER_STREAMING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lio/grpc/MethodDescriptor$MethodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/MethodDescriptor$MethodType;->SERVER_STREAMING:Lio/grpc/MethodDescriptor$MethodType;

    .line 100
    new-instance v0, Lio/grpc/MethodDescriptor$MethodType;

    const-string v1, "BIDI_STREAMING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lio/grpc/MethodDescriptor$MethodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/MethodDescriptor$MethodType;->BIDI_STREAMING:Lio/grpc/MethodDescriptor$MethodType;

    .line 106
    new-instance v0, Lio/grpc/MethodDescriptor$MethodType;

    const-string v1, "UNKNOWN"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lio/grpc/MethodDescriptor$MethodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/MethodDescriptor$MethodType;->UNKNOWN:Lio/grpc/MethodDescriptor$MethodType;

    const/4 v0, 0x5

    .line 81
    new-array v0, v0, [Lio/grpc/MethodDescriptor$MethodType;

    sget-object v1, Lio/grpc/MethodDescriptor$MethodType;->UNARY:Lio/grpc/MethodDescriptor$MethodType;

    aput-object v1, v0, v2

    sget-object v1, Lio/grpc/MethodDescriptor$MethodType;->CLIENT_STREAMING:Lio/grpc/MethodDescriptor$MethodType;

    aput-object v1, v0, v3

    sget-object v1, Lio/grpc/MethodDescriptor$MethodType;->SERVER_STREAMING:Lio/grpc/MethodDescriptor$MethodType;

    aput-object v1, v0, v4

    sget-object v1, Lio/grpc/MethodDescriptor$MethodType;->BIDI_STREAMING:Lio/grpc/MethodDescriptor$MethodType;

    aput-object v1, v0, v5

    sget-object v1, Lio/grpc/MethodDescriptor$MethodType;->UNKNOWN:Lio/grpc/MethodDescriptor$MethodType;

    aput-object v1, v0, v6

    sput-object v0, Lio/grpc/MethodDescriptor$MethodType;->$VALUES:[Lio/grpc/MethodDescriptor$MethodType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/MethodDescriptor$MethodType;
    .locals 1

    .line 81
    const-class v0, Lio/grpc/MethodDescriptor$MethodType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/MethodDescriptor$MethodType;

    return-object p0
.end method

.method public static values()[Lio/grpc/MethodDescriptor$MethodType;
    .locals 1

    .line 81
    sget-object v0, Lio/grpc/MethodDescriptor$MethodType;->$VALUES:[Lio/grpc/MethodDescriptor$MethodType;

    invoke-virtual {v0}, [Lio/grpc/MethodDescriptor$MethodType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/MethodDescriptor$MethodType;

    return-object v0
.end method


# virtual methods
.method public final clientSendsOneMessage()Z
    .locals 1

    .line 116
    sget-object v0, Lio/grpc/MethodDescriptor$MethodType;->UNARY:Lio/grpc/MethodDescriptor$MethodType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lio/grpc/MethodDescriptor$MethodType;->SERVER_STREAMING:Lio/grpc/MethodDescriptor$MethodType;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final serverSendsOneMessage()Z
    .locals 1

    .line 127
    sget-object v0, Lio/grpc/MethodDescriptor$MethodType;->UNARY:Lio/grpc/MethodDescriptor$MethodType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lio/grpc/MethodDescriptor$MethodType;->CLIENT_STREAMING:Lio/grpc/MethodDescriptor$MethodType;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
