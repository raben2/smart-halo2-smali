.class public Lcom/instabug/library/l/b/j/c;
.super Lcom/instabug/library/l/b/i/b;
.source "FileInspector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/l/b/i/b<",
        "Lcom/instabug/library/l/b/j/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/instabug/library/l/b/j/d;)V
    .locals 0
    .param p1    # Lcom/instabug/library/l/b/j/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/l/b/i/b;-><init>(Lcom/instabug/library/l/b/i/e;)V

    return-void
.end method

.method public static b()Lcom/instabug/library/l/b/j/c;
    .locals 2

    .line 1
    new-instance v0, Lcom/instabug/library/l/b/j/c;

    new-instance v1, Lcom/instabug/library/l/b/j/d;

    invoke-direct {v1}, Lcom/instabug/library/l/b/j/d;-><init>()V

    invoke-direct {v0, v1}, Lcom/instabug/library/l/b/j/c;-><init>(Lcom/instabug/library/l/b/j/d;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/Collection;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/instabug/library/l/b/i/c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/instabug/library/l/b/i/b;->a:Lcom/instabug/library/l/b/i/e;

    invoke-interface {v1}, Lcom/instabug/library/l/b/i/e;->a()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/library/l/b/j/b;

    .line 3
    invoke-virtual {p0, v2}, Lcom/instabug/library/l/b/j/c;->a(Lcom/instabug/library/l/b/j/b;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method a(Lcom/instabug/library/l/b/j/b;)Ljava/util/Collection;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instabug/library/l/b/j/b;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/instabug/library/l/b/i/c;",
            ">;"
        }
    .end annotation

    .line 4
    invoke-virtual {p1}, Lcom/instabug/library/l/b/j/b;->c()Lcom/instabug/library/l/b/j/g;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instabug/library/l/b/i/d;->a()Lcom/instabug/library/l/b/i/a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/instabug/library/l/b/j/b;->b()Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/instabug/library/l/b/j/c;->a(Lcom/instabug/library/l/b/j/g;Lcom/instabug/library/l/b/i/a;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method a(Lcom/instabug/library/l/b/j/g;Lcom/instabug/library/l/b/i/a;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 10
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instabug/library/l/b/j/g;",
            "Lcom/instabug/library/l/b/i/a;",
            "Ljava/util/Collection<",
            "Lcom/instabug/library/l/b/j/f;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/instabug/library/l/b/i/c;",
            ">;"
        }
    .end annotation

    .line 5
    invoke-virtual {p1}, Lcom/instabug/library/l/b/j/g;->a()Ljava/util/Collection;

    move-result-object v0

    .line 6
    invoke-virtual {p2}, Lcom/instabug/library/l/b/i/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/instabug/library/l/b/j/c;->b(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/instabug/library/l/b/j/g;->b()J

    move-result-wide v3

    .line 8
    invoke-virtual {p2}, Lcom/instabug/library/l/b/i/a;->a()J

    move-result-wide v8

    .line 9
    invoke-virtual {p2}, Lcom/instabug/library/l/b/i/a;->b()J

    move-result-wide v5

    .line 10
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    cmp-long p2, v3, v5

    if-lez p2, :cond_1

    .line 13
    invoke-virtual {p0, v0}, Lcom/instabug/library/l/b/j/c;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    move-object v1, p0

    move-object v7, p3

    .line 14
    invoke-virtual/range {v1 .. v7}, Lcom/instabug/library/l/b/j/c;->a(Ljava/util/List;JJLjava/util/Collection;)Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 17
    :cond_1
    invoke-virtual {p0, v0, v8, v9, p3}, Lcom/instabug/library/l/b/j/c;->a(Ljava/util/Collection;JLjava/util/Collection;)Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 18
    invoke-virtual {p0, p1}, Lcom/instabug/library/l/b/j/c;->b(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method a(Ljava/util/Collection;JLjava/util/Collection;)Ljava/util/Collection;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/instabug/library/l/b/j/e;",
            ">;J",
            "Ljava/util/Collection<",
            "Lcom/instabug/library/l/b/j/f;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/instabug/library/l/b/j/e;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 26
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/library/l/b/j/e;

    .line 27
    invoke-virtual {v1}, Lcom/instabug/library/l/b/j/e;->b()J

    move-result-wide v2

    cmp-long v4, v2, p2

    if-lez v4, :cond_0

    invoke-virtual {p0, v1, p4}, Lcom/instabug/library/l/b/j/c;->a(Lcom/instabug/library/l/b/j/e;Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 28
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method a(Ljava/util/List;JJLjava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/library/l/b/j/e;",
            ">;JJ",
            "Ljava/util/Collection<",
            "Lcom/instabug/library/l/b/j/f;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/instabug/library/l/b/j/e;",
            ">;"
        }
    .end annotation

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/library/l/b/j/e;

    cmp-long v2, p2, p4

    if-lez v2, :cond_1

    .line 22
    invoke-virtual {p0, v1, p6}, Lcom/instabug/library/l/b/j/c;->a(Lcom/instabug/library/l/b/j/e;Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 23
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-virtual {v1}, Lcom/instabug/library/l/b/j/e;->a()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    sub-long/2addr p2, v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method a(Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/instabug/library/l/b/j/e;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/instabug/library/l/b/j/e;",
            ">;"
        }
    .end annotation

    .line 29
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/List;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    .line 32
    :goto_0
    new-instance v0, Lcom/instabug/library/l/b/j/c$a;

    invoke-direct {v0, p0}, Lcom/instabug/library/l/b/j/c$a;-><init>(Lcom/instabug/library/l/b/j/c;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p1
.end method

.method a(Lcom/instabug/library/l/b/j/e;Ljava/util/Collection;)Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instabug/library/l/b/j/e;",
            "Ljava/util/Collection<",
            "Lcom/instabug/library/l/b/j/f;",
            ">;)Z"
        }
    .end annotation

    .line 33
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/library/l/b/j/f;

    .line 34
    invoke-interface {v0, p1}, Lcom/instabug/library/l/b/i/g;->a(Lcom/instabug/library/l/b/i/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method b(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/instabug/library/l/b/j/e;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/instabug/library/l/b/i/c;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/library/l/b/j/e;

    .line 4
    new-instance v2, Lcom/instabug/library/l/b/j/a;

    invoke-direct {v2, v1}, Lcom/instabug/library/l/b/j/a;-><init>(Lcom/instabug/library/l/b/j/e;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
