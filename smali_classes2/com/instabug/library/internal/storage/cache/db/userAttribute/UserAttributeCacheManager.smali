.class public Lcom/instabug/library/internal/storage/cache/db/userAttribute/UserAttributeCacheManager;
.super Ljava/lang/Object;
.source "UserAttributeCacheManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delete(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/user/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/instabug/library/internal/storage/cache/db/userAttribute/UserAttributesDbHelper;->delete(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static deleteAll()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/instabug/library/user/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/internal/storage/cache/db/userAttribute/UserAttributesDbHelper;->deleteUserAttributes(Ljava/lang/String;)V

    return-void
.end method

.method public static deleteAll(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/user/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/instabug/library/internal/storage/cache/db/userAttribute/UserAttributesDbHelper;->deleteType(Ljava/lang/String;I)V

    return-void
.end method

.method public static deleteAnonymousUserAttribute()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/db/userAttribute/UserAttributesDbHelper;->deleteAnonymousData()V

    return-void
.end method

.method public static getType(Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/user/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/instabug/library/internal/storage/cache/db/userAttribute/UserAttributesDbHelper;->getType(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static insert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/instabug/library/user/b;->h()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/instabug/library/model/h$b;

    invoke-direct {v1, p0, p1}, Lcom/instabug/library/model/h$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 3
    invoke-virtual {v1, p0}, Lcom/instabug/library/model/h$b;->a(I)Lcom/instabug/library/model/h$b;

    move-result-object p0

    .line 4
    invoke-static {}, Lcom/instabug/library/user/b;->k()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/instabug/library/model/h$b;->a(Z)Lcom/instabug/library/model/h$b;

    move-result-object p0

    .line 5
    invoke-virtual {p0, v0}, Lcom/instabug/library/model/h$b;->a(Ljava/lang/String;)Lcom/instabug/library/model/h$b;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lcom/instabug/library/model/h$b;->a()Lcom/instabug/library/model/h;

    move-result-object p0

    .line 8
    invoke-static {}, Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;->obtainOrchestrator()Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;

    move-result-object p1

    new-instance v1, Lcom/instabug/library/internal/orchestrator/d;

    .line 11
    invoke-static {}, Lcom/instabug/library/user/b;->g()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/instabug/library/internal/orchestrator/d;-><init>(Ljava/lang/String;I)V

    .line 12
    invoke-virtual {p1, v1}, Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;->addWorkerThreadAction(Lcom/instabug/library/internal/orchestrator/Action;)Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;

    move-result-object p1

    new-instance v0, Lcom/instabug/library/internal/orchestrator/c;

    invoke-direct {v0, p0}, Lcom/instabug/library/internal/orchestrator/c;-><init>(Lcom/instabug/library/model/h;)V

    .line 15
    invoke-virtual {p1, v0}, Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;->addWorkerThreadAction(Lcom/instabug/library/internal/orchestrator/Action;)Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;

    move-result-object p0

    .line 16
    invoke-virtual {p0}, Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;->orchestrate()V

    return-void
.end method

.method public static insertAll(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/library/model/h;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/instabug/library/internal/storage/cache/db/userAttribute/UserAttributesDbHelper;->insertBulk(Ljava/util/List;)V

    return-void
.end method

.method public static retrieve(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/user/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/instabug/library/internal/storage/cache/db/userAttribute/UserAttributesDbHelper;->retrieve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static retrieveAll()Ljava/util/HashMap;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/user/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/internal/storage/cache/db/userAttribute/UserAttributesDbHelper;->retrieveAll(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static retrieveAllSDKAttributes()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/user/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/internal/storage/cache/db/userAttribute/UserAttributesDbHelper;->retrieveAllSDKAttributes(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static retrieveAnonymousUserAttributes()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/instabug/library/model/h;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/db/userAttribute/UserAttributesDbHelper;->retrieveAnonymousUserAttribute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
