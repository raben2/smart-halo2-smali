.class public final enum Lio/grpc/okhttp/internal/framed/HeadersMode;
.super Ljava/lang/Enum;
.source "HeadersMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/okhttp/internal/framed/HeadersMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/okhttp/internal/framed/HeadersMode;

.field public static final enum HTTP_20_HEADERS:Lio/grpc/okhttp/internal/framed/HeadersMode;

.field public static final enum SPDY_HEADERS:Lio/grpc/okhttp/internal/framed/HeadersMode;

.field public static final enum SPDY_REPLY:Lio/grpc/okhttp/internal/framed/HeadersMode;

.field public static final enum SPDY_SYN_STREAM:Lio/grpc/okhttp/internal/framed/HeadersMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 23
    new-instance v0, Lio/grpc/okhttp/internal/framed/HeadersMode;

    const-string v1, "SPDY_SYN_STREAM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/grpc/okhttp/internal/framed/HeadersMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/okhttp/internal/framed/HeadersMode;->SPDY_SYN_STREAM:Lio/grpc/okhttp/internal/framed/HeadersMode;

    .line 24
    new-instance v0, Lio/grpc/okhttp/internal/framed/HeadersMode;

    const-string v1, "SPDY_REPLY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lio/grpc/okhttp/internal/framed/HeadersMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/okhttp/internal/framed/HeadersMode;->SPDY_REPLY:Lio/grpc/okhttp/internal/framed/HeadersMode;

    .line 25
    new-instance v0, Lio/grpc/okhttp/internal/framed/HeadersMode;

    const-string v1, "SPDY_HEADERS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lio/grpc/okhttp/internal/framed/HeadersMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/okhttp/internal/framed/HeadersMode;->SPDY_HEADERS:Lio/grpc/okhttp/internal/framed/HeadersMode;

    .line 26
    new-instance v0, Lio/grpc/okhttp/internal/framed/HeadersMode;

    const-string v1, "HTTP_20_HEADERS"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lio/grpc/okhttp/internal/framed/HeadersMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/okhttp/internal/framed/HeadersMode;->HTTP_20_HEADERS:Lio/grpc/okhttp/internal/framed/HeadersMode;

    const/4 v0, 0x4

    .line 22
    new-array v0, v0, [Lio/grpc/okhttp/internal/framed/HeadersMode;

    sget-object v1, Lio/grpc/okhttp/internal/framed/HeadersMode;->SPDY_SYN_STREAM:Lio/grpc/okhttp/internal/framed/HeadersMode;

    aput-object v1, v0, v2

    sget-object v1, Lio/grpc/okhttp/internal/framed/HeadersMode;->SPDY_REPLY:Lio/grpc/okhttp/internal/framed/HeadersMode;

    aput-object v1, v0, v3

    sget-object v1, Lio/grpc/okhttp/internal/framed/HeadersMode;->SPDY_HEADERS:Lio/grpc/okhttp/internal/framed/HeadersMode;

    aput-object v1, v0, v4

    sget-object v1, Lio/grpc/okhttp/internal/framed/HeadersMode;->HTTP_20_HEADERS:Lio/grpc/okhttp/internal/framed/HeadersMode;

    aput-object v1, v0, v5

    sput-object v0, Lio/grpc/okhttp/internal/framed/HeadersMode;->$VALUES:[Lio/grpc/okhttp/internal/framed/HeadersMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/okhttp/internal/framed/HeadersMode;
    .locals 1

    .line 22
    const-class v0, Lio/grpc/okhttp/internal/framed/HeadersMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/okhttp/internal/framed/HeadersMode;

    return-object p0
.end method

.method public static values()[Lio/grpc/okhttp/internal/framed/HeadersMode;
    .locals 1

    .line 22
    sget-object v0, Lio/grpc/okhttp/internal/framed/HeadersMode;->$VALUES:[Lio/grpc/okhttp/internal/framed/HeadersMode;

    invoke-virtual {v0}, [Lio/grpc/okhttp/internal/framed/HeadersMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/okhttp/internal/framed/HeadersMode;

    return-object v0
.end method


# virtual methods
.method public failIfHeadersAbsent()Z
    .locals 1

    .line 43
    sget-object v0, Lio/grpc/okhttp/internal/framed/HeadersMode;->SPDY_HEADERS:Lio/grpc/okhttp/internal/framed/HeadersMode;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public failIfHeadersPresent()Z
    .locals 1

    .line 51
    sget-object v0, Lio/grpc/okhttp/internal/framed/HeadersMode;->SPDY_REPLY:Lio/grpc/okhttp/internal/framed/HeadersMode;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public failIfStreamAbsent()Z
    .locals 1

    .line 30
    sget-object v0, Lio/grpc/okhttp/internal/framed/HeadersMode;->SPDY_REPLY:Lio/grpc/okhttp/internal/framed/HeadersMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lio/grpc/okhttp/internal/framed/HeadersMode;->SPDY_HEADERS:Lio/grpc/okhttp/internal/framed/HeadersMode;

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

.method public failIfStreamPresent()Z
    .locals 1

    .line 35
    sget-object v0, Lio/grpc/okhttp/internal/framed/HeadersMode;->SPDY_SYN_STREAM:Lio/grpc/okhttp/internal/framed/HeadersMode;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
