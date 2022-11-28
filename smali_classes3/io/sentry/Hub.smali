.class public final Lio/sentry/Hub;
.super Ljava/lang/Object;
.source "Hub.java"

# interfaces
.implements Lio/sentry/IHub;


# instance fields
.field private volatile isEnabled:Z

.field private volatile lastEventId:Lio/sentry/protocol/SentryId;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final options:Lio/sentry/SentryOptions;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final stack:Lio/sentry/Stack;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final throwableToSpan:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Throwable;",
            "Lio/sentry/ISpan;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tracesSampler:Lio/sentry/TracesSampler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 1
    .param p1    # Lio/sentry/SentryOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 25
    invoke-static {p1}, Lio/sentry/Hub;->createRootStackItem(Lio/sentry/SentryOptions;)Lio/sentry/Stack$StackItem;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/sentry/Hub;-><init>(Lio/sentry/SentryOptions;Lio/sentry/Stack$StackItem;)V

    return-void
.end method

.method private constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/Stack$StackItem;)V
    .locals 2
    .param p1    # Lio/sentry/SentryOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/sentry/Stack$StackItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 44
    new-instance v0, Lio/sentry/Stack;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lio/sentry/Stack;-><init>(Lio/sentry/ILogger;Lio/sentry/Stack$StackItem;)V

    invoke-direct {p0, p1, v0}, Lio/sentry/Hub;-><init>(Lio/sentry/SentryOptions;Lio/sentry/Stack;)V

    return-void
.end method

.method private constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/Stack;)V
    .locals 1
    .param p1    # Lio/sentry/SentryOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/sentry/Stack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/Hub;->throwableToSpan:Ljava/util/WeakHashMap;

    .line 31
    invoke-static {p1}, Lio/sentry/Hub;->validateOptions(Lio/sentry/SentryOptions;)V

    .line 33
    iput-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 34
    new-instance v0, Lio/sentry/TracesSampler;

    invoke-direct {v0, p1}, Lio/sentry/TracesSampler;-><init>(Lio/sentry/SentryOptions;)V

    iput-object v0, p0, Lio/sentry/Hub;->tracesSampler:Lio/sentry/TracesSampler;

    .line 35
    iput-object p2, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    .line 36
    sget-object p1, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    iput-object p1, p0, Lio/sentry/Hub;->lastEventId:Lio/sentry/protocol/SentryId;

    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lio/sentry/Hub;->isEnabled:Z

    return-void
.end method

.method private assignTraceContext(Lio/sentry/SentryEvent;)V
    .locals 2
    .param p1    # Lio/sentry/SentryEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 172
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lio/sentry/Hub;->throwableToSpan:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getThrowable()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/ISpan;

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/protocol/Contexts;->getTrace()Lio/sentry/SpanContext;

    move-result-object v1

    if-nez v1, :cond_0

    .line 176
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object p1

    invoke-interface {v0}, Lio/sentry/ISpan;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/protocol/Contexts;->setTrace(Lio/sentry/SpanContext;)V

    :cond_0
    return-void
.end method

.method private static createRootStackItem(Lio/sentry/SentryOptions;)Lio/sentry/Stack$StackItem;
    .locals 3
    .param p0    # Lio/sentry/SentryOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 56
    invoke-static {p0}, Lio/sentry/Hub;->validateOptions(Lio/sentry/SentryOptions;)V

    .line 57
    new-instance v0, Lio/sentry/Scope;

    invoke-direct {v0, p0}, Lio/sentry/Scope;-><init>(Lio/sentry/SentryOptions;)V

    .line 58
    new-instance v1, Lio/sentry/SentryClient;

    invoke-direct {v1, p0}, Lio/sentry/SentryClient;-><init>(Lio/sentry/SentryOptions;)V

    .line 59
    new-instance v2, Lio/sentry/Stack$StackItem;

    invoke-direct {v2, p0, v1, v0}, Lio/sentry/Stack$StackItem;-><init>(Lio/sentry/SentryOptions;Lio/sentry/ISentryClient;Lio/sentry/Scope;)V

    return-object v2
.end method

.method static synthetic lambda$captureTransaction$0(Lio/sentry/ITransaction;Lio/sentry/Scope;Lio/sentry/ITransaction;)V
    .locals 0

    if-ne p2, p0, :cond_0

    .line 564
    invoke-virtual {p1}, Lio/sentry/Scope;->clearTransaction()V

    :cond_0
    return-void
.end method

.method private static validateOptions(Lio/sentry/SentryOptions;)V
    .locals 1
    .param p0    # Lio/sentry/SentryOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "SentryOptions is required."

    .line 48
    invoke-static {p0, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getDsn()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getDsn()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 50
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Hub requires a DSN to be instantiated. Considering using the NoOpHub is no DSN is available."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public synthetic addBreadcrumb(Lio/sentry/Breadcrumb;)V
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/IHub$-CC;->$default$addBreadcrumb(Lio/sentry/IHub;Lio/sentry/Breadcrumb;)V

    return-void
.end method

.method public addBreadcrumb(Lio/sentry/Breadcrumb;Ljava/lang/Object;)V
    .locals 2
    .param p1    # Lio/sentry/Breadcrumb;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 270
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 271
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 272
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v0, "Instance is disabled and this \'addBreadcrumb\' call is a no-op."

    new-array v1, v1, [Ljava/lang/Object;

    .line 273
    invoke-interface {p1, p2, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 277
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v0, "addBreadcrumb called with null parameter."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, p2, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 279
    :cond_1
    iget-object v0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/Scope;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/sentry/Scope;->addBreadcrumb(Lio/sentry/Breadcrumb;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public synthetic addBreadcrumb(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lio/sentry/IHub$-CC;->$default$addBreadcrumb(Lio/sentry/IHub;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic addBreadcrumb(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1, p2}, Lio/sentry/IHub$-CC;->$default$addBreadcrumb(Lio/sentry/IHub;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bindClient(Lio/sentry/ISentryClient;)V
    .locals 5
    .param p1    # Lio/sentry/ISentryClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 476
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 477
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 478
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v2, "Instance is disabled and this \'bindClient\' call is a no-op."

    new-array v1, v1, [Ljava/lang/Object;

    .line 479
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 481
    :cond_0
    iget-object v0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 483
    iget-object v2, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v4, "New client bound to scope."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 484
    invoke-virtual {v0, p1}, Lio/sentry/Stack$StackItem;->setClient(Lio/sentry/ISentryClient;)V

    goto :goto_0

    .line 486
    :cond_1
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "NoOp client bound to scope."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 487
    invoke-static {}, Lio/sentry/NoOpSentryClient;->getInstance()Lio/sentry/NoOpSentryClient;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/sentry/Stack$StackItem;->setClient(Lio/sentry/ISentryClient;)V

    :goto_0
    return-void
.end method

.method public synthetic captureEnvelope(Lio/sentry/SentryEnvelope;)Lio/sentry/protocol/SentryId;
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/IHub$-CC;->$default$captureEnvelope(Lio/sentry/IHub;Lio/sentry/SentryEnvelope;)Lio/sentry/protocol/SentryId;

    move-result-object p1

    return-object p1
.end method

.method public captureEnvelope(Lio/sentry/SentryEnvelope;Ljava/lang/Object;)Lio/sentry/protocol/SentryId;
    .locals 3
    .param p1    # Lio/sentry/SentryEnvelope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/ApiStatus$Internal;
    .end annotation

    const-string v0, "SentryEnvelope is required."

    .line 122
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    .line 125
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 127
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v1, "Instance is disabled and this \'captureEnvelope\' call is a no-op."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 128
    invoke-interface {p1, p2, v1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 133
    :cond_0
    :try_start_0
    iget-object v1, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v1}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/Stack$StackItem;->getClient()Lio/sentry/ISentryClient;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lio/sentry/ISentryClient;->captureEnvelope(Lio/sentry/SentryEnvelope;Ljava/lang/Object;)Lio/sentry/protocol/SentryId;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 135
    iget-object p2, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p2

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Error while capturing envelope."

    invoke-interface {p2, v1, v2, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    :goto_0
    iput-object v0, p0, Lio/sentry/Hub;->lastEventId:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public synthetic captureEvent(Lio/sentry/SentryEvent;)Lio/sentry/protocol/SentryId;
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/IHub$-CC;->$default$captureEvent(Lio/sentry/IHub;Lio/sentry/SentryEvent;)Lio/sentry/protocol/SentryId;

    move-result-object p1

    return-object p1
.end method

.method public captureEvent(Lio/sentry/SentryEvent;Ljava/lang/Object;)Lio/sentry/protocol/SentryId;
    .locals 5
    .param p1    # Lio/sentry/SentryEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 70
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    .line 71
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 72
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 73
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v1, "Instance is disabled and this \'captureEvent\' call is a no-op."

    new-array v2, v2, [Ljava/lang/Object;

    .line 74
    invoke-interface {p1, p2, v1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 77
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v1, "captureEvent called with null parameter."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1, p2, v1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 80
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lio/sentry/Hub;->assignTraceContext(Lio/sentry/SentryEvent;)V

    .line 81
    iget-object v1, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v1}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Lio/sentry/Stack$StackItem;->getClient()Lio/sentry/ISentryClient;

    move-result-object v2

    invoke-virtual {v1}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/Scope;

    move-result-object v1

    invoke-interface {v2, p1, v1, p2}, Lio/sentry/ISentryClient;->captureEvent(Lio/sentry/SentryEvent;Lio/sentry/Scope;Ljava/lang/Object;)Lio/sentry/protocol/SentryId;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 84
    iget-object v1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 85
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while capturing event with id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-interface {v1, v2, p1, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    :goto_0
    iput-object v0, p0, Lio/sentry/Hub;->lastEventId:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public synthetic captureException(Ljava/lang/Throwable;)Lio/sentry/protocol/SentryId;
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/IHub$-CC;->$default$captureException(Lio/sentry/IHub;Ljava/lang/Throwable;)Lio/sentry/protocol/SentryId;

    move-result-object p1

    return-object p1
.end method

.method public captureException(Ljava/lang/Throwable;Ljava/lang/Object;)Lio/sentry/protocol/SentryId;
    .locals 5
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 145
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    .line 146
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 147
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 148
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v1, "Instance is disabled and this \'captureException\' call is a no-op."

    new-array v2, v2, [Ljava/lang/Object;

    .line 149
    invoke-interface {p1, p2, v1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 153
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v1, "captureException called with null parameter."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1, p2, v1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 156
    :cond_1
    :try_start_0
    iget-object v1, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v1}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v1

    .line 157
    new-instance v2, Lio/sentry/SentryEvent;

    invoke-direct {v2, p1}, Lio/sentry/SentryEvent;-><init>(Ljava/lang/Throwable;)V

    .line 158
    invoke-direct {p0, v2}, Lio/sentry/Hub;->assignTraceContext(Lio/sentry/SentryEvent;)V

    .line 159
    invoke-virtual {v1}, Lio/sentry/Stack$StackItem;->getClient()Lio/sentry/ISentryClient;

    move-result-object v3

    invoke-virtual {v1}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/Scope;

    move-result-object v1

    invoke-interface {v3, v2, v1, p2}, Lio/sentry/ISentryClient;->captureEvent(Lio/sentry/SentryEvent;Lio/sentry/Scope;Ljava/lang/Object;)Lio/sentry/protocol/SentryId;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 161
    iget-object v1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 162
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while capturing exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 163
    invoke-interface {v1, v2, p1, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    :goto_0
    iput-object v0, p0, Lio/sentry/Hub;->lastEventId:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public synthetic captureMessage(Ljava/lang/String;)Lio/sentry/protocol/SentryId;
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/IHub$-CC;->$default$captureMessage(Lio/sentry/IHub;Ljava/lang/String;)Lio/sentry/protocol/SentryId;

    move-result-object p1

    return-object p1
.end method

.method public captureMessage(Ljava/lang/String;Lio/sentry/SentryLevel;)Lio/sentry/protocol/SentryId;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/sentry/SentryLevel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 97
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    .line 98
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 99
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 100
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v1, "Instance is disabled and this \'captureMessage\' call is a no-op."

    new-array v2, v2, [Ljava/lang/Object;

    .line 101
    invoke-interface {p1, p2, v1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 105
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v1, "captureMessage called with null parameter."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1, p2, v1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 108
    :cond_1
    :try_start_0
    iget-object v1, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v1}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v1

    .line 109
    invoke-virtual {v1}, Lio/sentry/Stack$StackItem;->getClient()Lio/sentry/ISentryClient;

    move-result-object v2

    invoke-virtual {v1}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/Scope;

    move-result-object v1

    invoke-interface {v2, p1, p2, v1}, Lio/sentry/ISentryClient;->captureMessage(Ljava/lang/String;Lio/sentry/SentryLevel;Lio/sentry/Scope;)Lio/sentry/protocol/SentryId;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 111
    iget-object v1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while capturing message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    :goto_0
    iput-object v0, p0, Lio/sentry/Hub;->lastEventId:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public synthetic captureTransaction(Lio/sentry/ITransaction;)Lio/sentry/protocol/SentryId;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/ApiStatus$Internal;
    .end annotation

    invoke-static {p0, p1}, Lio/sentry/IHub$-CC;->$default$captureTransaction(Lio/sentry/IHub;Lio/sentry/ITransaction;)Lio/sentry/protocol/SentryId;

    move-result-object p1

    return-object p1
.end method

.method public captureTransaction(Lio/sentry/ITransaction;Ljava/lang/Object;)Lio/sentry/protocol/SentryId;
    .locals 8
    .param p1    # Lio/sentry/ITransaction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/ApiStatus$Internal;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "transaction is required"

    .line 520
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 522
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    .line 523
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 524
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 525
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v1, "Instance is disabled and this \'captureTransaction\' call is a no-op."

    new-array v2, v2, [Ljava/lang/Object;

    .line 526
    invoke-interface {p1, p2, v1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 530
    :cond_0
    invoke-interface {p1}, Lio/sentry/ITransaction;->isFinished()Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 531
    iget-object v1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 532
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v4, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v5, "Capturing unfinished transaction: %s"

    new-array v6, v3, [Ljava/lang/Object;

    .line 536
    invoke-interface {p1}, Lio/sentry/ITransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v7

    aput-object v7, v6, v2

    .line 533
    invoke-interface {v1, v4, v5, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 538
    :cond_1
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1}, Lio/sentry/ITransaction;->isSampled()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 539
    iget-object p2, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 540
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p2

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v4, "Transaction %s was dropped due to sampling decision."

    new-array v3, v3, [Ljava/lang/Object;

    .line 544
    invoke-interface {p1}, Lio/sentry/ITransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object p1

    aput-object p1, v3, v2

    .line 541
    invoke-interface {p2, v1, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 548
    :try_start_0
    iget-object v2, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v2}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v1

    .line 549
    invoke-virtual {v1}, Lio/sentry/Stack$StackItem;->getClient()Lio/sentry/ISentryClient;

    move-result-object v2

    invoke-virtual {v1}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/Scope;

    move-result-object v3

    invoke-interface {v2, p1, v3, p2}, Lio/sentry/ISentryClient;->captureTransaction(Lio/sentry/ITransaction;Lio/sentry/Scope;Ljava/lang/Object;)Lio/sentry/protocol/SentryId;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 559
    invoke-virtual {v1}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/Scope;

    move-result-object p2

    .line 561
    new-instance v1, Lio/sentry/-$$Lambda$Hub$9i0mqfRG-mf__2u7ycjsu8ML_iQ;

    invoke-direct {v1, p1, p2}, Lio/sentry/-$$Lambda$Hub$9i0mqfRG-mf__2u7ycjsu8ML_iQ;-><init>(Lio/sentry/ITransaction;Lio/sentry/Scope;)V

    :goto_0
    invoke-virtual {p2, v1}, Lio/sentry/Scope;->withTransaction(Lio/sentry/Scope$IWithTransaction;)V

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception p2

    .line 551
    :try_start_1
    iget-object v2, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 552
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while capturing transaction with id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    invoke-interface {p1}, Lio/sentry/ITransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 553
    invoke-interface {v2, v3, v4, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    .line 559
    invoke-virtual {v1}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/Scope;

    move-result-object p2

    .line 561
    new-instance v1, Lio/sentry/-$$Lambda$Hub$9i0mqfRG-mf__2u7ycjsu8ML_iQ;

    invoke-direct {v1, p1, p2}, Lio/sentry/-$$Lambda$Hub$9i0mqfRG-mf__2u7ycjsu8ML_iQ;-><init>(Lio/sentry/ITransaction;Lio/sentry/Scope;)V

    goto :goto_0

    .line 571
    :cond_3
    :goto_1
    iput-object v0, p0, Lio/sentry/Hub;->lastEventId:Lio/sentry/protocol/SentryId;

    return-object v0

    :goto_2
    if-eqz v1, :cond_4

    .line 559
    invoke-virtual {v1}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/Scope;

    move-result-object v0

    .line 561
    new-instance v1, Lio/sentry/-$$Lambda$Hub$9i0mqfRG-mf__2u7ycjsu8ML_iQ;

    invoke-direct {v1, p1, v0}, Lio/sentry/-$$Lambda$Hub$9i0mqfRG-mf__2u7ycjsu8ML_iQ;-><init>(Lio/sentry/ITransaction;Lio/sentry/Scope;)V

    invoke-virtual {v0, v1}, Lio/sentry/Scope;->withTransaction(Lio/sentry/Scope$IWithTransaction;)V

    .line 567
    :cond_4
    throw p2
.end method

.method public captureUserFeedback(Lio/sentry/UserFeedback;)V
    .locals 5

    .line 184
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 186
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v1, "Instance is disabled and this \'captureUserFeedback\' call is a no-op."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 187
    invoke-interface {p1, v0, v1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 192
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getClient()Lio/sentry/ISentryClient;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/sentry/ISentryClient;->captureUserFeedback(Lio/sentry/UserFeedback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 195
    iget-object v1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 196
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while capturing captureUserFeedback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {p1}, Lio/sentry/UserFeedback;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 197
    invoke-interface {v1, v2, p1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public clearBreadcrumbs()V
    .locals 4

    .line 335
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    iget-object v0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 337
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v2, "Instance is disabled and this \'clearBreadcrumbs\' call is a no-op."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 338
    invoke-interface {v0, v1, v2, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 342
    :cond_0
    iget-object v0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/Scope;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/Scope;->clearBreadcrumbs()V

    :goto_0
    return-void
.end method

.method public clone()Lio/sentry/IHub;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 509
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 510
    iget-object v0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v2, "Disabled Hub cloned."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 513
    :cond_0
    new-instance v0, Lio/sentry/Hub;

    iget-object v1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    new-instance v2, Lio/sentry/Stack;

    iget-object v3, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-direct {v2, v3}, Lio/sentry/Stack;-><init>(Lio/sentry/Stack;)V

    invoke-direct {v0, v1, v2}, Lio/sentry/Hub;-><init>(Lio/sentry/SentryOptions;Lio/sentry/Stack;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 16
    invoke-virtual {p0}, Lio/sentry/Hub;->clone()Lio/sentry/IHub;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 5

    .line 244
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 246
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v3, "Instance is disabled and this \'close\' call is a no-op."

    new-array v1, v1, [Ljava/lang/Object;

    .line 247
    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 250
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getIntegrations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/Integration;

    .line 251
    instance-of v3, v2, Ljava/io/Closeable;

    if-eqz v3, :cond_1

    .line 252
    check-cast v2, Ljava/io/Closeable;

    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    goto :goto_0

    .line 255
    :cond_2
    iget-object v0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    iget-object v2, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getShutdownTimeout()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lio/sentry/ISentryExecutorService;->close(J)V

    .line 258
    iget-object v0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v0

    .line 260
    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getClient()Lio/sentry/ISentryClient;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/ISentryClient;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 262
    iget-object v2, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Error while closing the Hub."

    invoke-interface {v2, v3, v4, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 264
    :goto_1
    iput-boolean v1, p0, Lio/sentry/Hub;->isEnabled:Z

    :goto_2
    return-void
.end method

.method public configureScope(Lio/sentry/ScopeCallback;)V
    .locals 3
    .param p1    # Lio/sentry/ScopeCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 459
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 460
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 461
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v1, "Instance is disabled and this \'configureScope\' call is a no-op."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 462
    invoke-interface {p1, v0, v1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 467
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/Scope;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/sentry/ScopeCallback;->run(Lio/sentry/Scope;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 469
    iget-object v0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Error in the \'configureScope\' callback."

    invoke-interface {v0, v1, v2, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public endSession()V
    .locals 4

    .line 229
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 231
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v2, "Instance is disabled and this \'endSession\' call is a no-op."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 232
    invoke-interface {v0, v1, v2, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 234
    :cond_0
    iget-object v0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/Scope;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/Scope;->endSession()Lio/sentry/Session;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 237
    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getClient()Lio/sentry/ISentryClient;

    move-result-object v0

    new-instance v2, Lio/sentry/hints/SessionEndHint;

    invoke-direct {v2}, Lio/sentry/hints/SessionEndHint;-><init>()V

    invoke-interface {v0, v1, v2}, Lio/sentry/ISentryClient;->captureSession(Lio/sentry/Session;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public flush(J)V
    .locals 2

    .line 494
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 495
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 496
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v0, "Instance is disabled and this \'flush\' call is a no-op."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 497
    invoke-interface {p1, p2, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 500
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getClient()Lio/sentry/ISentryClient;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/sentry/ISentryClient;->flush(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 502
    iget-object p2, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p2

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "Error in the \'client.flush\'."

    invoke-interface {p2, v0, v1, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public getLastEventId()Lio/sentry/protocol/SentryId;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 400
    iget-object v0, p0, Lio/sentry/Hub;->lastEventId:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public getOptions()Lio/sentry/SentryOptions;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 426
    iget-object v0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    return-object v0
.end method

.method public getSpan()Lio/sentry/ISpan;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 626
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 627
    iget-object v0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 628
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v2, "Instance is disabled and this \'getSpan\' call is a no-op."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 629
    invoke-interface {v0, v1, v2, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0

    .line 631
    :cond_0
    iget-object v0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/Scope;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/Scope;->getSpan()Lio/sentry/ISpan;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method getSpanContext(Ljava/lang/Throwable;)Lio/sentry/SpanContext;
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "throwable is required"

    .line 646
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 647
    iget-object v0, p0, Lio/sentry/Hub;->throwableToSpan:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/ISpan;

    if-eqz p1, :cond_0

    .line 649
    invoke-interface {p1}, Lio/sentry/ISpan;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isEnabled()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lio/sentry/Hub;->isEnabled:Z

    return v0
.end method

.method public popScope()V
    .locals 4

    .line 431
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 432
    iget-object v0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 433
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v2, "Instance is disabled and this \'popScope\' call is a no-op."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 434
    invoke-interface {v0, v1, v2, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 436
    :cond_0
    iget-object v0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v0}, Lio/sentry/Stack;->pop()V

    :goto_0
    return-void
.end method

.method public pushScope()V
    .locals 6

    .line 405
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    iget-object v0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 407
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v2, "Instance is disabled and this \'pushScope\' call is a no-op."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 408
    invoke-interface {v0, v1, v2, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 410
    :cond_0
    iget-object v0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v0

    const/4 v1, 0x0

    .line 413
    :try_start_0
    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/Scope;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/Scope;->clone()Lio/sentry/Scope;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 415
    iget-object v3, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v5, "An error has occurred when cloning a Scope"

    invoke-interface {v3, v4, v5, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    if-eqz v1, :cond_1

    .line 418
    new-instance v2, Lio/sentry/Stack$StackItem;

    iget-object v3, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getClient()Lio/sentry/ISentryClient;

    move-result-object v0

    invoke-direct {v2, v3, v0, v1}, Lio/sentry/Stack$StackItem;-><init>(Lio/sentry/SentryOptions;Lio/sentry/ISentryClient;Lio/sentry/Scope;)V

    .line 419
    iget-object v0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v0, v2}, Lio/sentry/Stack;->push(Lio/sentry/Stack$StackItem;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public removeExtra(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 387
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 388
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 389
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v2, "Instance is disabled and this \'removeExtra\' call is a no-op."

    new-array v1, v1, [Ljava/lang/Object;

    .line 390
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 392
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v2, "removeExtra called with null parameter."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 394
    :cond_1
    iget-object v0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/Scope;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/sentry/Scope;->removeExtra(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public removeTag(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 361
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 362
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 363
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v2, "Instance is disabled and this \'removeTag\' call is a no-op."

    new-array v1, v1, [Ljava/lang/Object;

    .line 364
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 366
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v2, "removeTag called with null parameter."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 368
    :cond_1
    iget-object v0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/Scope;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/sentry/Scope;->removeTag(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 374
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 375
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 376
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v0, "Instance is disabled and this \'setExtra\' call is a no-op."

    new-array v1, v1, [Ljava/lang/Object;

    .line 377
    invoke-interface {p1, p2, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 381
    :cond_1
    iget-object v0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/Scope;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/sentry/Scope;->setExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 379
    :cond_2
    :goto_0
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v0, "setExtra called with null parameter."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, p2, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public setFingerprint(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 320
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 321
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 322
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v2, "Instance is disabled and this \'setFingerprint\' call is a no-op."

    new-array v1, v1, [Ljava/lang/Object;

    .line 323
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 327
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v2, "setFingerprint called with null parameter."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 329
    :cond_1
    iget-object v0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/Scope;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/sentry/Scope;->setFingerprint(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public setLevel(Lio/sentry/SentryLevel;)V
    .locals 3
    .param p1    # Lio/sentry/SentryLevel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 285
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 287
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v1, "Instance is disabled and this \'setLevel\' call is a no-op."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 288
    invoke-interface {p1, v0, v1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 290
    :cond_0
    iget-object v0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/Scope;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/sentry/Scope;->setLevel(Lio/sentry/SentryLevel;)V

    :goto_0
    return-void
.end method

.method public setSpanContext(Ljava/lang/Throwable;Lio/sentry/ISpan;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/sentry/ISpan;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/ApiStatus$Internal;
    .end annotation

    const-string v0, "throwable is required"

    .line 639
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "span is required"

    .line 640
    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 641
    iget-object v0, p0, Lio/sentry/Hub;->throwableToSpan:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 348
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 349
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 350
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v0, "Instance is disabled and this \'setTag\' call is a no-op."

    new-array v1, v1, [Ljava/lang/Object;

    .line 351
    invoke-interface {p1, p2, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 355
    :cond_1
    iget-object v0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/Scope;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/sentry/Scope;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 353
    :cond_2
    :goto_0
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v0, "setTag called with null parameter."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, p2, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public setTransaction(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 296
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 298
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v1, "Instance is disabled and this \'setTransaction\' call is a no-op."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 299
    invoke-interface {p1, v0, v1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 303
    :cond_0
    iget-object v0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/Scope;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/sentry/Scope;->setTransaction(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setUser(Lio/sentry/protocol/User;)V
    .locals 3
    .param p1    # Lio/sentry/protocol/User;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 309
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 311
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v1, "Instance is disabled and this \'setUser\' call is a no-op."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 312
    invoke-interface {p1, v0, v1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 314
    :cond_0
    iget-object v0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/Scope;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/sentry/Scope;->setUser(Lio/sentry/protocol/User;)V

    :goto_0
    return-void
.end method

.method public startSession()V
    .locals 5

    .line 207
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 209
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v2, "Instance is disabled and this \'startSession\' call is a no-op."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 210
    invoke-interface {v0, v1, v2, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 213
    :cond_0
    iget-object v0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/Scope;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/Scope;->startSession()Lio/sentry/Scope$SessionPair;

    move-result-object v1

    .line 219
    invoke-virtual {v1}, Lio/sentry/Scope$SessionPair;->getPrevious()Lio/sentry/Session;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 220
    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getClient()Lio/sentry/ISentryClient;

    move-result-object v2

    invoke-virtual {v1}, Lio/sentry/Scope$SessionPair;->getPrevious()Lio/sentry/Session;

    move-result-object v3

    new-instance v4, Lio/sentry/hints/SessionEndHint;

    invoke-direct {v4}, Lio/sentry/hints/SessionEndHint;-><init>()V

    invoke-interface {v2, v3, v4}, Lio/sentry/ISentryClient;->captureSession(Lio/sentry/Session;Ljava/lang/Object;)V

    .line 223
    :cond_1
    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getClient()Lio/sentry/ISentryClient;

    move-result-object v0

    invoke-virtual {v1}, Lio/sentry/Scope$SessionPair;->getCurrent()Lio/sentry/Session;

    move-result-object v1

    new-instance v2, Lio/sentry/hints/SessionStartHint;

    invoke-direct {v2}, Lio/sentry/hints/SessionStartHint;-><init>()V

    invoke-interface {v0, v1, v2}, Lio/sentry/ISentryClient;->captureSession(Lio/sentry/Session;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public startTransaction(Lio/sentry/TransactionContext;)Lio/sentry/ITransaction;
    .locals 1
    .param p1    # Lio/sentry/TransactionContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 578
    invoke-virtual {p0, p1, v0}, Lio/sentry/Hub;->startTransaction(Lio/sentry/TransactionContext;Lio/sentry/CustomSamplingContext;)Lio/sentry/ITransaction;

    move-result-object p1

    return-object p1
.end method

.method public startTransaction(Lio/sentry/TransactionContext;Lio/sentry/CustomSamplingContext;)Lio/sentry/ITransaction;
    .locals 2
    .param p1    # Lio/sentry/TransactionContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/sentry/CustomSamplingContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "transactionContext is required"

    .line 585
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 588
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 589
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 590
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v0, "Instance is disabled and this \'startTransaction\' returns a no-op."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 591
    invoke-interface {p1, p2, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 594
    invoke-static {}, Lio/sentry/NoOpTransaction;->getInstance()Lio/sentry/NoOpTransaction;

    move-result-object p1

    goto :goto_0

    .line 596
    :cond_0
    new-instance v0, Lio/sentry/SamplingContext;

    invoke-direct {v0, p1, p2}, Lio/sentry/SamplingContext;-><init>(Lio/sentry/TransactionContext;Lio/sentry/CustomSamplingContext;)V

    .line 598
    iget-object p2, p0, Lio/sentry/Hub;->tracesSampler:Lio/sentry/TracesSampler;

    invoke-virtual {p2, v0}, Lio/sentry/TracesSampler;->sample(Lio/sentry/SamplingContext;)Z

    move-result p2

    .line 599
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/sentry/TransactionContext;->setSampled(Ljava/lang/Boolean;)V

    .line 601
    new-instance p2, Lio/sentry/SentryTransaction;

    invoke-direct {p2, p1, p0}, Lio/sentry/SentryTransaction;-><init>(Lio/sentry/TransactionContext;Lio/sentry/IHub;)V

    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public synthetic startTransaction(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/ITransaction;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1, p2}, Lio/sentry/IHub$-CC;->$default$startTransaction(Lio/sentry/IHub;Ljava/lang/String;Ljava/lang/String;)Lio/sentry/ITransaction;

    move-result-object p1

    return-object p1
.end method

.method public synthetic startTransaction(Ljava/lang/String;Ljava/lang/String;Lio/sentry/CustomSamplingContext;)Lio/sentry/ITransaction;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lio/sentry/IHub$-CC;->$default$startTransaction(Lio/sentry/IHub;Ljava/lang/String;Ljava/lang/String;Lio/sentry/CustomSamplingContext;)Lio/sentry/ITransaction;

    move-result-object p1

    return-object p1
.end method

.method public traceHeaders()Lio/sentry/SentryTraceHeader;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 609
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 610
    iget-object v0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 611
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v2, "Instance is disabled and this \'traceHeaders\' call is a no-op."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 612
    invoke-interface {v0, v1, v2, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 615
    :cond_0
    iget-object v0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/Scope;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/Scope;->getSpan()Lio/sentry/ISpan;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 617
    invoke-interface {v0}, Lio/sentry/ISpan;->toSentryTrace()Lio/sentry/SentryTraceHeader;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public withScope(Lio/sentry/ScopeCallback;)V
    .locals 3
    .param p1    # Lio/sentry/ScopeCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 442
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 444
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v1, "Instance is disabled and this \'withScope\' call is a no-op."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 445
    invoke-interface {p1, v0, v1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 447
    :cond_0
    invoke-virtual {p0}, Lio/sentry/Hub;->pushScope()V

    .line 449
    :try_start_0
    iget-object v0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/Scope;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/sentry/ScopeCallback;->run(Lio/sentry/Scope;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 451
    iget-object v0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Error in the \'withScope\' callback."

    invoke-interface {v0, v1, v2, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 453
    :goto_0
    invoke-virtual {p0}, Lio/sentry/Hub;->popScope()V

    :goto_1
    return-void
.end method
