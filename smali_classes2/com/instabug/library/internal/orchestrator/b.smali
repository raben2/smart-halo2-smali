.class public Lcom/instabug/library/internal/orchestrator/b;
.super Ljava/lang/Object;
.source "DisposeDataAction.java"

# interfaces
.implements Lcom/instabug/library/internal/orchestrator/Action;


# instance fields
.field private final a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/instabug/library/l/b/i/b<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Lcom/instabug/library/l/b/i/b;[Lcom/instabug/library/l/b/i/b;)V
    .locals 1
    .param p1    # Lcom/instabug/library/l/b/i/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Lcom/instabug/library/l/b/i/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instabug/library/l/b/i/b<",
            "*>;[",
            "Lcom/instabug/library/l/b/i/b<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length v0, p2

    if-nez v0, :cond_0

    .line 3
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/library/internal/orchestrator/b;->a:Ljava/util/Collection;

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/internal/orchestrator/b;->a:Ljava/util/Collection;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p0, Lcom/instabug/library/internal/orchestrator/b;->a:Ljava/util/Collection;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/instabug/library/l/b/a;->b()Lcom/instabug/library/l/b/a$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/instabug/library/internal/orchestrator/b;->a:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/library/l/b/i/b;

    .line 3
    invoke-virtual {v0, v2}, Lcom/instabug/library/l/b/a$a;->a(Lcom/instabug/library/l/b/i/b;)Lcom/instabug/library/l/b/a$a;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/instabug/library/l/b/a$a;->a()Lcom/instabug/library/l/b/a;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/instabug/library/l/b/a;->a()Lcom/instabug/library/l/b/i/c;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/instabug/library/l/b/i/c;->dispose()V

    return-void
.end method
