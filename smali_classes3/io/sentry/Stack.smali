.class final Lio/sentry/Stack;
.super Ljava/lang/Object;
.source "Stack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/Stack$StackItem;
    }
.end annotation


# instance fields
.field private final items:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lio/sentry/Stack$StackItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final logger:Lio/sentry/ILogger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/sentry/ILogger;Lio/sentry/Stack$StackItem;)V
    .locals 1
    .param p1    # Lio/sentry/ILogger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/sentry/Stack$StackItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lio/sentry/Stack;->items:Ljava/util/Deque;

    const-string v0, "logger is required"

    .line 58
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/ILogger;

    iput-object p1, p0, Lio/sentry/Stack;->logger:Lio/sentry/ILogger;

    .line 59
    iget-object p1, p0, Lio/sentry/Stack;->items:Ljava/util/Deque;

    const-string v0, "rootStackItem is required"

    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/sentry/Stack$StackItem;

    invoke-interface {p1, p2}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/Stack;)V
    .locals 2
    .param p1    # Lio/sentry/Stack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 63
    iget-object v0, p1, Lio/sentry/Stack;->logger:Lio/sentry/ILogger;

    iget-object v1, p1, Lio/sentry/Stack;->items:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/Stack$StackItem;

    invoke-direct {p0, v0, v1}, Lio/sentry/Stack;-><init>(Lio/sentry/ILogger;Lio/sentry/Stack$StackItem;)V

    .line 64
    iget-object p1, p1, Lio/sentry/Stack;->items:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/Stack$StackItem;

    .line 65
    new-instance v1, Lio/sentry/Stack$StackItem;

    invoke-direct {v1, v0}, Lio/sentry/Stack$StackItem;-><init>(Lio/sentry/Stack$StackItem;)V

    invoke-virtual {p0, v1}, Lio/sentry/Stack;->push(Lio/sentry/Stack$StackItem;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method peek()Lio/sentry/Stack$StackItem;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 73
    iget-object v0, p0, Lio/sentry/Stack;->items:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/Stack$StackItem;

    return-object v0
.end method

.method pop()V
    .locals 5

    .line 77
    iget-object v0, p0, Lio/sentry/Stack;->items:Ljava/util/Deque;

    monitor-enter v0

    .line 78
    :try_start_0
    iget-object v1, p0, Lio/sentry/Stack;->items:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 79
    iget-object v1, p0, Lio/sentry/Stack;->items:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    goto :goto_0

    .line 81
    :cond_0
    iget-object v1, p0, Lio/sentry/Stack;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v3, "Attempt to pop the root scope."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method push(Lio/sentry/Stack$StackItem;)V
    .locals 1
    .param p1    # Lio/sentry/Stack$StackItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 87
    iget-object v0, p0, Lio/sentry/Stack;->items:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    return-void
.end method

.method size()I
    .locals 1

    .line 91
    iget-object v0, p0, Lio/sentry/Stack;->items:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    return v0
.end method
