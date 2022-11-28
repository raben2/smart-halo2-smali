.class public Lcom/instabug/library/user/a;
.super Ljava/lang/Object;
.source "UserAttributeManager.java"


# static fields
.field private static a:Lcom/instabug/library/user/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/instabug/library/user/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/user/a;->a:Lcom/instabug/library/user/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/instabug/library/user/a;

    invoke-direct {v0}, Lcom/instabug/library/user/a;-><init>()V

    sput-object v0, Lcom/instabug/library/user/a;->a:Lcom/instabug/library/user/a;

    .line 4
    :cond_0
    sget-object v0, Lcom/instabug/library/user/a;->a:Lcom/instabug/library/user/a;

    return-object v0
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/library/model/h;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 9
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/db/userAttribute/UserAttributeCacheManager;->retrieveAll()Ljava/util/HashMap;

    move-result-object v0

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/instabug/library/user/a;->a(Ljava/util/List;Ljava/util/HashMap;)V

    .line 11
    invoke-virtual {p0, p2, v0}, Lcom/instabug/library/user/a;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object p1

    .line 12
    invoke-static {p1}, Lcom/instabug/library/internal/storage/cache/db/userAttribute/UserAttributeCacheManager;->insertAll(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;
    .locals 4
    .param p2    # Ljava/util/HashMap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/instabug/library/model/h;",
            ">;"
        }
    .end annotation

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 17
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 18
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 19
    new-instance v3, Lcom/instabug/library/model/h$b;

    invoke-direct {v3, v2, v1}, Lcom/instabug/library/model/h$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 20
    invoke-virtual {v3, v1}, Lcom/instabug/library/model/h$b;->a(I)Lcom/instabug/library/model/h$b;

    move-result-object v2

    .line 21
    invoke-virtual {v2, v1}, Lcom/instabug/library/model/h$b;->a(Z)Lcom/instabug/library/model/h$b;

    move-result-object v1

    .line 22
    invoke-virtual {v1, p1}, Lcom/instabug/library/model/h$b;->a(Ljava/lang/String;)Lcom/instabug/library/model/h$b;

    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/instabug/library/model/h$b;->a()Lcom/instabug/library/model/h;

    move-result-object v1

    .line 24
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 5
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/db/userAttribute/UserAttributeCacheManager;->retrieveAnonymousUserAttributes()Ljava/util/List;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    invoke-direct {p0, v0, p1}, Lcom/instabug/library/user/a;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/db/userAttribute/UserAttributeCacheManager;->deleteAnonymousUserAttribute()V

    :cond_0
    return-void
.end method

.method a(Ljava/util/List;Ljava/util/HashMap;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/library/model/h;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/library/model/h;

    .line 14
    invoke-virtual {v0}, Lcom/instabug/library/model/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/instabug/library/model/h;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
