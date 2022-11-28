.class final enum Lio/sentry/transport/RateLimiter$DataCategory;
.super Ljava/lang/Enum;
.source "RateLimiter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/transport/RateLimiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DataCategory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/transport/RateLimiter$DataCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/transport/RateLimiter$DataCategory;

.field public static final enum All:Lio/sentry/transport/RateLimiter$DataCategory;

.field public static final enum Attachment:Lio/sentry/transport/RateLimiter$DataCategory;

.field public static final enum Default:Lio/sentry/transport/RateLimiter$DataCategory;

.field public static final enum Error:Lio/sentry/transport/RateLimiter$DataCategory;

.field public static final enum Security:Lio/sentry/transport/RateLimiter$DataCategory;

.field public static final enum Session:Lio/sentry/transport/RateLimiter$DataCategory;

.field public static final enum Transaction:Lio/sentry/transport/RateLimiter$DataCategory;

.field public static final enum Unknown:Lio/sentry/transport/RateLimiter$DataCategory;


# instance fields
.field private final category:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 24
    new-instance v0, Lio/sentry/transport/RateLimiter$DataCategory;

    const-string v1, "All"

    const-string v2, "__all__"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lio/sentry/transport/RateLimiter$DataCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/transport/RateLimiter$DataCategory;->All:Lio/sentry/transport/RateLimiter$DataCategory;

    .line 25
    new-instance v0, Lio/sentry/transport/RateLimiter$DataCategory;

    const-string v1, "Default"

    const-string v2, "default"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lio/sentry/transport/RateLimiter$DataCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/transport/RateLimiter$DataCategory;->Default:Lio/sentry/transport/RateLimiter$DataCategory;

    .line 26
    new-instance v0, Lio/sentry/transport/RateLimiter$DataCategory;

    const-string v1, "Error"

    const-string v2, "error"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lio/sentry/transport/RateLimiter$DataCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/transport/RateLimiter$DataCategory;->Error:Lio/sentry/transport/RateLimiter$DataCategory;

    .line 27
    new-instance v0, Lio/sentry/transport/RateLimiter$DataCategory;

    const-string v1, "Session"

    const-string v2, "session"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lio/sentry/transport/RateLimiter$DataCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/transport/RateLimiter$DataCategory;->Session:Lio/sentry/transport/RateLimiter$DataCategory;

    .line 28
    new-instance v0, Lio/sentry/transport/RateLimiter$DataCategory;

    const-string v1, "Attachment"

    const-string v2, "attachment"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lio/sentry/transport/RateLimiter$DataCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/transport/RateLimiter$DataCategory;->Attachment:Lio/sentry/transport/RateLimiter$DataCategory;

    .line 29
    new-instance v0, Lio/sentry/transport/RateLimiter$DataCategory;

    const-string v1, "Transaction"

    const-string v2, "transaction"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lio/sentry/transport/RateLimiter$DataCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/transport/RateLimiter$DataCategory;->Transaction:Lio/sentry/transport/RateLimiter$DataCategory;

    .line 30
    new-instance v0, Lio/sentry/transport/RateLimiter$DataCategory;

    const-string v1, "Security"

    const-string v2, "security"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lio/sentry/transport/RateLimiter$DataCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/transport/RateLimiter$DataCategory;->Security:Lio/sentry/transport/RateLimiter$DataCategory;

    .line 31
    new-instance v0, Lio/sentry/transport/RateLimiter$DataCategory;

    const-string v1, "Unknown"

    const-string v2, "unknown"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Lio/sentry/transport/RateLimiter$DataCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/transport/RateLimiter$DataCategory;->Unknown:Lio/sentry/transport/RateLimiter$DataCategory;

    const/16 v0, 0x8

    .line 23
    new-array v0, v0, [Lio/sentry/transport/RateLimiter$DataCategory;

    sget-object v1, Lio/sentry/transport/RateLimiter$DataCategory;->All:Lio/sentry/transport/RateLimiter$DataCategory;

    aput-object v1, v0, v3

    sget-object v1, Lio/sentry/transport/RateLimiter$DataCategory;->Default:Lio/sentry/transport/RateLimiter$DataCategory;

    aput-object v1, v0, v4

    sget-object v1, Lio/sentry/transport/RateLimiter$DataCategory;->Error:Lio/sentry/transport/RateLimiter$DataCategory;

    aput-object v1, v0, v5

    sget-object v1, Lio/sentry/transport/RateLimiter$DataCategory;->Session:Lio/sentry/transport/RateLimiter$DataCategory;

    aput-object v1, v0, v6

    sget-object v1, Lio/sentry/transport/RateLimiter$DataCategory;->Attachment:Lio/sentry/transport/RateLimiter$DataCategory;

    aput-object v1, v0, v7

    sget-object v1, Lio/sentry/transport/RateLimiter$DataCategory;->Transaction:Lio/sentry/transport/RateLimiter$DataCategory;

    aput-object v1, v0, v8

    sget-object v1, Lio/sentry/transport/RateLimiter$DataCategory;->Security:Lio/sentry/transport/RateLimiter$DataCategory;

    aput-object v1, v0, v9

    sget-object v1, Lio/sentry/transport/RateLimiter$DataCategory;->Unknown:Lio/sentry/transport/RateLimiter$DataCategory;

    aput-object v1, v0, v10

    sput-object v0, Lio/sentry/transport/RateLimiter$DataCategory;->$VALUES:[Lio/sentry/transport/RateLimiter$DataCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lio/sentry/transport/RateLimiter$DataCategory;->category:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/sentry/transport/RateLimiter$DataCategory;
    .locals 1

    .line 23
    const-class v0, Lio/sentry/transport/RateLimiter$DataCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/sentry/transport/RateLimiter$DataCategory;

    return-object p0
.end method

.method public static values()[Lio/sentry/transport/RateLimiter$DataCategory;
    .locals 1

    .line 23
    sget-object v0, Lio/sentry/transport/RateLimiter$DataCategory;->$VALUES:[Lio/sentry/transport/RateLimiter$DataCategory;

    invoke-virtual {v0}, [Lio/sentry/transport/RateLimiter$DataCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/transport/RateLimiter$DataCategory;

    return-object v0
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lio/sentry/transport/RateLimiter$DataCategory;->category:Ljava/lang/String;

    return-object v0
.end method
