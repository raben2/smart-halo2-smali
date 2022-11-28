.class Lcom/instabug/library/m/d;
.super Ljava/lang/Object;
.source "SessionsMerger.java"


# direct methods
.method static a(Ljava/util/List;)Lcom/instabug/library/model/session/SessionsBatchDTO;
    .locals 4
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/Size;
            min = 0x2L
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

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/library/model/session/CoreSession;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {p0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instabug/library/m/d;->a(Lcom/instabug/library/model/session/CoreSession;Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/library/model/session/CoreSession;

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/instabug/library/m/d;->a(Lcom/instabug/library/model/session/CoreSession;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v3

    .line 5
    invoke-virtual {v2}, Lcom/instabug/library/model/session/CoreSession;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/instabug/library/model/session/SessionMapper;->toRemoteEntity(Ljava/lang/String;Ljava/util/Map;)Lcom/instabug/library/model/session/SessionRemoteEntity;

    move-result-object v2

    .line 6
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {v0, v1}, Lcom/instabug/library/model/session/SessionMapper;->toDTO(Ljava/util/Map;Ljava/util/List;)Lcom/instabug/library/model/session/SessionsBatchDTO;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/reflect/Field;Lcom/instabug/library/model/session/CoreSession;)Ljava/lang/Object;
    .locals 0
    .param p0    # Ljava/lang/reflect/Field;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/instabug/library/model/session/CoreSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 39
    invoke-static {p0, p1}, Lcom/instabug/library/f;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/reflect/Field;Z)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/reflect/Field;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 35
    const-class v0, Lcom/instabug/library/l/a/c;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/instabug/library/l/a/c;

    if-nez v0, :cond_0

    .line 36
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 37
    invoke-interface {v0}, Lcom/instabug/library/l/a/c;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 38
    :cond_1
    invoke-interface {v0}, Lcom/instabug/library/l/a/c;->alternate()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {v0}, Lcom/instabug/library/l/a/c;->name()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lcom/instabug/library/l/a/c;->alternate()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static a(Lcom/instabug/library/model/session/CoreSession;Ljava/util/List;)Ljava/util/Map;
    .locals 6
    .param p0    # Lcom/instabug/library/model/session/CoreSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instabug/library/model/session/CoreSession;",
            "Ljava/util/List<",
            "Lcom/instabug/library/model/session/CoreSession;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    const/4 v5, 0x1

    .line 20
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 21
    invoke-static {v4}, Lcom/instabug/library/m/d;->a(Ljava/lang/reflect/Field;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 22
    invoke-static {p0, v4, p1}, Lcom/instabug/library/m/d;->a(Lcom/instabug/library/model/session/CoreSession;Ljava/lang/reflect/Field;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/instabug/library/model/session/CoreSession;->isUsersPageEnabled()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/instabug/library/m/d;->a(Ljava/lang/reflect/Field;Z)Ljava/lang/String;

    move-result-object v5

    .line 24
    invoke-static {v4, p0}, Lcom/instabug/library/m/d;->a(Ljava/lang/reflect/Field;Lcom/instabug/library/model/session/CoreSession;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 26
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static a(Lcom/instabug/library/model/session/CoreSession;Ljava/util/Set;)Ljava/util/Map;
    .locals 7
    .param p0    # Lcom/instabug/library/model/session/CoreSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instabug/library/model/session/CoreSession;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    const/4 v5, 0x1

    .line 11
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 12
    invoke-static {v4}, Lcom/instabug/library/m/d;->a(Ljava/lang/reflect/Field;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 13
    invoke-virtual {p0}, Lcom/instabug/library/model/session/CoreSession;->isUsersPageEnabled()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/instabug/library/m/d;->a(Ljava/lang/reflect/Field;Z)Ljava/lang/String;

    move-result-object v5

    .line 14
    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 15
    invoke-static {v4, p0}, Lcom/instabug/library/m/d;->a(Ljava/lang/reflect/Field;Lcom/instabug/library/model/session/CoreSession;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 17
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static a(Lcom/instabug/library/model/session/CoreSession;Ljava/lang/reflect/Field;Ljava/util/List;)Z
    .locals 4
    .param p0    # Lcom/instabug/library/model/session/CoreSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/reflect/Field;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instabug/library/model/session/CoreSession;",
            "Ljava/lang/reflect/Field;",
            "Ljava/util/List<",
            "Lcom/instabug/library/model/session/CoreSession;",
            ">;)Z"
        }
    .end annotation

    .line 28
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/library/model/session/CoreSession;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/instabug/library/f;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 32
    :cond_1
    invoke-static {p1, p0}, Lcom/instabug/library/f;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 33
    invoke-static {v1, v0}, Lcom/instabug/library/f;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v3, :cond_2

    .line 34
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    return v2

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private static a(Ljava/lang/reflect/Field;)Z
    .locals 1
    .param p0    # Ljava/lang/reflect/Field;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 27
    const-class v0, Lcom/instabug/library/l/a/b;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
