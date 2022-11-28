.class public Lcom/instabug/library/visualusersteps/c;
.super Ljava/lang/Object;
.source "Parent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/visualusersteps/c$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Lcom/instabug/library/visualusersteps/c$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/instabug/library/visualusersteps/VisualUserStep;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/instabug/library/visualusersteps/c;->b:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/instabug/library/visualusersteps/c;->c:Ljava/lang/String;

    .line 4
    new-instance p1, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object p1, p0, Lcom/instabug/library/visualusersteps/c;->e:Ljava/util/Deque;

    .line 5
    iput-object p3, p0, Lcom/instabug/library/visualusersteps/c;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method a(Lcom/instabug/library/visualusersteps/VisualUserStep;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/c;->e:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p1}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getStepType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getStepType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACTIVITY_RESUMED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getStepType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FRAGMENT_RESUMED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/instabug/library/visualusersteps/c;->f:Z

    :cond_1
    return-void
.end method

.method public a(Lcom/instabug/library/visualusersteps/c$a;)V
    .locals 0
    .param p1    # Lcom/instabug/library/visualusersteps/c$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    iput-object p1, p0, Lcom/instabug/library/visualusersteps/c;->d:Lcom/instabug/library/visualusersteps/c$a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/library/visualusersteps/c;->c:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/instabug/library/visualusersteps/c;->f:Z

    return-void
.end method

.method b()Lcom/instabug/library/visualusersteps/VisualUserStep;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/c;->e:Ljava/util/Deque;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/c;->e:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/library/visualusersteps/VisualUserStep;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method c()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/instabug/library/visualusersteps/c$a;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/c;->d:Lcom/instabug/library/visualusersteps/c$a;

    return-object v0
.end method

.method e()Ljava/util/Deque;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Deque<",
            "Lcom/instabug/library/visualusersteps/VisualUserStep;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/c;->e:Ljava/util/Deque;

    return-object v0
.end method

.method f()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/c;->e:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/library/visualusersteps/c;->f:Z

    return v0
.end method

.method i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/c;->e:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/c;->e:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/c;->e:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/c;->e:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    :cond_0
    return-void
.end method
