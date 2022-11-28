.class public Lcom/instabug/library/network/e/e/f;
.super Ljava/lang/Object;
.source "AttributesSyncManager.java"


# instance fields
.field private final a:Lcom/instabug/library/network/e/e/d;


# direct methods
.method constructor <init>(Lcom/instabug/library/network/e/e/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/instabug/library/network/e/e/f;->a:Lcom/instabug/library/network/e/e/d;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/instabug/library/network/e/e/f;
    .locals 3

    .line 1
    new-instance v0, Lcom/instabug/library/network/NetworkManager;

    invoke-direct {v0}, Lcom/instabug/library/network/NetworkManager;-><init>()V

    .line 2
    new-instance v1, Lcom/instabug/library/internal/utils/PreferencesUtils;

    const-string v2, "instabug"

    invoke-direct {v1, p0, v2}, Lcom/instabug/library/internal/utils/PreferencesUtils;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    new-instance p0, Lcom/instabug/library/network/e/e/c;

    invoke-direct {p0, v0, v1}, Lcom/instabug/library/network/e/e/c;-><init>(Lcom/instabug/library/network/a;Lcom/instabug/library/internal/utils/PreferencesUtils;)V

    .line 4
    new-instance v0, Lcom/instabug/library/network/e/e/b;

    invoke-direct {v0}, Lcom/instabug/library/network/e/e/b;-><init>()V

    .line 5
    new-instance v1, Lcom/instabug/library/network/e/e/d;

    invoke-direct {v1, p0, v0}, Lcom/instabug/library/network/e/e/d;-><init>(Lcom/instabug/library/network/e/e/c;Lcom/instabug/library/network/e/e/b;)V

    .line 6
    new-instance p0, Lcom/instabug/library/network/e/e/f;

    invoke-direct {p0, v1}, Lcom/instabug/library/network/e/e/f;-><init>(Lcom/instabug/library/network/e/e/d;)V

    return-object p0
.end method


# virtual methods
.method a()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 7
    invoke-static {}, Lcom/instabug/library/user/b;->k()Z

    move-result v0

    return v0
.end method

.method public b()Lio/reactivex/Completable;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/network/e/e/f;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/instabug/library/network/e/e/e;

    const-string v1, "current user is not identified"

    invoke-direct {v0, v1}, Lcom/instabug/library/network/e/e/e;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Completable;->error(Ljava/lang/Throwable;)Lio/reactivex/Completable;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/library/network/e/e/f;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lcom/instabug/library/network/e/e/e;

    const-string v1, "sync feature is not available"

    invoke-direct {v0, v1}, Lcom/instabug/library/network/e/e/e;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Completable;->error(Ljava/lang/Throwable;)Lio/reactivex/Completable;

    move-result-object v0

    return-object v0

    .line 6
    :cond_1
    invoke-static {}, Lcom/instabug/library/Instabug;->getAppToken()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {}, Lcom/instabug/library/user/b;->h()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {}, Lcom/instabug/library/user/b;->e()Ljava/lang/String;

    move-result-object v2

    .line 9
    iget-object v3, p0, Lcom/instabug/library/network/e/e/f;->a:Lcom/instabug/library/network/e/e/d;

    invoke-virtual {v3, v0, v1, v2}, Lcom/instabug/library/network/e/e/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Completable;

    move-result-object v0

    return-object v0
.end method

.method c()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    sget-object v0, Lcom/instabug/library/Feature;->BE_USER_ATTRIBUTES:Lcom/instabug/library/Feature;

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->isExperimentalFeatureAvailable(Lcom/instabug/library/Feature;)Z

    move-result v0

    return v0
.end method
