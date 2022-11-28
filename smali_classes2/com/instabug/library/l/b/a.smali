.class public final Lcom/instabug/library/l/b/a;
.super Ljava/lang/Object;
.source "DataGarbageCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/l/b/a$a;
    }
.end annotation


# instance fields
.field final a:Ljava/util/Set;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/instabug/library/l/b/i/b<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/instabug/library/l/b/i/b<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/instabug/library/l/b/a;->a:Ljava/util/Set;

    return-void
.end method

.method public static b()Lcom/instabug/library/l/b/a$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/library/l/b/a$a;

    invoke-direct {v0}, Lcom/instabug/library/l/b/a$a;-><init>()V

    return-object v0
.end method

.method public static c()Lcom/instabug/library/l/b/b;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcom/instabug/library/user/b;->b()Lcom/instabug/library/l/b/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-static {}, Lcom/instabug/library/core/plugin/a;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    new-instance v1, Lcom/instabug/library/l/b/b;

    invoke-direct {v1, v0}, Lcom/instabug/library/l/b/b;-><init>(Ljava/util/List;)V

    return-object v1
.end method


# virtual methods
.method public a()Lcom/instabug/library/l/b/i/c;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/instabug/library/l/b/a;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/library/l/b/i/b;

    .line 3
    invoke-virtual {v2}, Lcom/instabug/library/l/b/i/b;->a()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Lcom/instabug/library/l/b/i/c$a;

    invoke-direct {v1, v0}, Lcom/instabug/library/l/b/i/c$a;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method
