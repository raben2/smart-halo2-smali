.class public Lcom/instabug/library/internal/storage/cache/user/UserCacheManager;
.super Ljava/lang/Object;
.source "UserCacheManager.java"


# static fields
.field private static final TAG:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UserCacheManager"

    .line 1
    sput-object v0, Lcom/instabug/library/internal/storage/cache/user/UserCacheManager;->TAG:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getLastSeen(Ljava/lang/String;)J
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcom/instabug/library/internal/storage/cache/user/a;->a(Ljava/lang/String;)Lcom/instabug/library/model/g;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/model/g;->a()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public static getUserSessionCount(Ljava/lang/String;)I
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcom/instabug/library/internal/storage/cache/user/a;->a(Ljava/lang/String;)Lcom/instabug/library/model/g;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/model/g;->b()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static insertIfNotExists(Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/instabug/library/internal/storage/cache/user/UserCacheManager;->TAG:Ljava/lang/Object;

    const-string v1, "insertIfNotExists "

    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/instabug/library/internal/storage/cache/user/a;->a(Ljava/lang/String;)Lcom/instabug/library/model/g;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {p0, p1}, Lcom/instabug/library/internal/storage/cache/user/UserCacheManager;->insertUser(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static insertUser(Ljava/lang/String;I)V
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/instabug/library/model/g;

    invoke-static {p0}, Lcom/instabug/library/internal/storage/cache/user/UserCacheManager;->getLastSeen(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/instabug/library/model/g;-><init>(Ljava/lang/String;IJ)V

    .line 2
    invoke-static {v0}, Lcom/instabug/library/internal/storage/cache/user/a;->a(Lcom/instabug/library/model/g;)J

    return-void
.end method

.method public static updateLastSeen(Ljava/lang/String;J)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/instabug/library/model/g;

    invoke-static {p0}, Lcom/instabug/library/internal/storage/cache/user/UserCacheManager;->getUserSessionCount(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/instabug/library/model/g;-><init>(Ljava/lang/String;IJ)V

    invoke-static {v0}, Lcom/instabug/library/internal/storage/cache/user/a;->b(Lcom/instabug/library/model/g;)J

    return-void
.end method

.method public static updateSessionCount(Ljava/lang/String;I)V
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/instabug/library/model/g;

    invoke-static {p0}, Lcom/instabug/library/internal/storage/cache/user/UserCacheManager;->getLastSeen(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/instabug/library/model/g;-><init>(Ljava/lang/String;IJ)V

    invoke-static {v0}, Lcom/instabug/library/internal/storage/cache/user/a;->b(Lcom/instabug/library/model/g;)J

    return-void
.end method
