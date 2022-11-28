.class public final Lcom/instabug/library/m/b;
.super Ljava/lang/Object;
.source "SessionsBatcherImpl.java"

# interfaces
.implements Lcom/instabug/library/m/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/instabug/library/model/session/CoreSession;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/instabug/library/model/session/SessionsBatchDTO;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 5
    invoke-direct {p0, v1}, Lcom/instabug/library/m/b;->b(Ljava/util/List;)Lcom/instabug/library/model/session/SessionsBatchDTO;

    move-result-object v1

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private b(Ljava/util/List;)Lcom/instabug/library/model/session/SessionsBatchDTO;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/library/model/session/CoreSession;",
            ">;)",
            "Lcom/instabug/library/model/session/SessionsBatchDTO;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 11
    invoke-static {p1}, Lcom/instabug/library/m/d;->a(Ljava/util/List;)Lcom/instabug/library/model/session/SessionsBatchDTO;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 12
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/library/model/session/CoreSession;

    .line 13
    invoke-static {p1}, Lcom/instabug/library/model/session/SessionMapper;->toRemoteEntity(Lcom/instabug/library/model/session/CoreSession;)Lcom/instabug/library/model/session/SessionRemoteEntity;

    move-result-object p1

    .line 14
    invoke-static {p1}, Lcom/instabug/library/model/session/SessionMapper;->toDTO(Lcom/instabug/library/model/session/SessionRemoteEntity;)Lcom/instabug/library/model/session/SessionsBatchDTO;

    move-result-object p1

    return-object p1

    .line 15
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 17
    invoke-static {p1, v0}, Lcom/instabug/library/model/session/SessionMapper;->toDTO(Ljava/util/Map;Ljava/util/List;)Lcom/instabug/library/model/session/SessionsBatchDTO;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Ljava/util/List;I)Ljava/util/List;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/library/model/session/CoreSession;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/instabug/library/model/session/SessionsBatchDTO;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lcom/instabug/library/util/ListUtils;->split(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/instabug/library/m/b;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
