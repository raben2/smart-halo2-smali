.class public final synthetic Lio/sentry/IHub$-CC;
.super Ljava/lang/Object;
.source "IHub.java"


# direct methods
.method public static $default$addBreadcrumb(Lio/sentry/IHub;Lio/sentry/Breadcrumb;)V
    .locals 1
    .param p0, "-this"    # Lio/sentry/IHub;

    const/4 v0, 0x0

    .line 126
    invoke-interface {p0, p1, v0}, Lio/sentry/IHub;->addBreadcrumb(Lio/sentry/Breadcrumb;Ljava/lang/Object;)V

    return-void
.end method

.method public static $default$addBreadcrumb(Lio/sentry/IHub;Ljava/lang/String;)V
    .locals 1
    .param p0, "-this"    # Lio/sentry/IHub;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 135
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0, p1}, Lio/sentry/Breadcrumb;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lio/sentry/IHub;->addBreadcrumb(Lio/sentry/Breadcrumb;)V

    return-void
.end method

.method public static $default$addBreadcrumb(Lio/sentry/IHub;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "-this"    # Lio/sentry/IHub;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 146
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0, p1}, Lio/sentry/Breadcrumb;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0, p2}, Lio/sentry/Breadcrumb;->setCategory(Ljava/lang/String;)V

    .line 148
    invoke-interface {p0, v0}, Lio/sentry/IHub;->addBreadcrumb(Lio/sentry/Breadcrumb;)V

    return-void
.end method

.method public static $default$captureEnvelope(Lio/sentry/IHub;Lio/sentry/SentryEnvelope;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p0, "-this"    # Lio/sentry/IHub;

    const/4 v0, 0x0

    .line 74
    invoke-interface {p0, p1, v0}, Lio/sentry/IHub;->captureEnvelope(Lio/sentry/SentryEnvelope;Ljava/lang/Object;)Lio/sentry/protocol/SentryId;

    move-result-object p1

    return-object p1
.end method

.method public static $default$captureEvent(Lio/sentry/IHub;Lio/sentry/SentryEvent;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p0, "-this"    # Lio/sentry/IHub;

    const/4 v0, 0x0

    .line 36
    invoke-interface {p0, p1, v0}, Lio/sentry/IHub;->captureEvent(Lio/sentry/SentryEvent;Ljava/lang/Object;)Lio/sentry/protocol/SentryId;

    move-result-object p1

    return-object p1
.end method

.method public static $default$captureException(Lio/sentry/IHub;Ljava/lang/Throwable;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p0, "-this"    # Lio/sentry/IHub;

    const/4 v0, 0x0

    .line 93
    invoke-interface {p0, p1, v0}, Lio/sentry/IHub;->captureException(Ljava/lang/Throwable;Ljava/lang/Object;)Lio/sentry/protocol/SentryId;

    move-result-object p1

    return-object p1
.end method

.method public static $default$captureMessage(Lio/sentry/IHub;Ljava/lang/String;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p0, "-this"    # Lio/sentry/IHub;

    .line 46
    sget-object v0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    invoke-interface {p0, p1, v0}, Lio/sentry/IHub;->captureMessage(Ljava/lang/String;Lio/sentry/SentryLevel;)Lio/sentry/protocol/SentryId;

    move-result-object p1

    return-object p1
.end method

.method public static $default$captureTransaction(Lio/sentry/IHub;Lio/sentry/ITransaction;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p0, "-this"    # Lio/sentry/IHub;
    .annotation build Lorg/jetbrains/annotations/ApiStatus$Internal;
    .end annotation

    const/4 v0, 0x0

    .line 279
    invoke-interface {p0, p1, v0}, Lio/sentry/IHub;->captureTransaction(Lio/sentry/ITransaction;Ljava/lang/Object;)Lio/sentry/protocol/SentryId;

    move-result-object p1

    return-object p1
.end method

.method public static $default$startTransaction(Lio/sentry/IHub;Ljava/lang/String;Ljava/lang/String;)Lio/sentry/ITransaction;
    .locals 1
    .param p0, "-this"    # Lio/sentry/IHub;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 328
    invoke-interface {p0, p1, p2, v0}, Lio/sentry/IHub;->startTransaction(Ljava/lang/String;Ljava/lang/String;Lio/sentry/CustomSamplingContext;)Lio/sentry/ITransaction;

    move-result-object p1

    return-object p1
.end method

.method public static $default$startTransaction(Lio/sentry/IHub;Ljava/lang/String;Ljava/lang/String;Lio/sentry/CustomSamplingContext;)Lio/sentry/ITransaction;
    .locals 1
    .param p0, "-this"    # Lio/sentry/IHub;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 301
    new-instance v0, Lio/sentry/TransactionContext;

    invoke-direct {v0, p1, p2}, Lio/sentry/TransactionContext;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0, p3}, Lio/sentry/IHub;->startTransaction(Lio/sentry/TransactionContext;Lio/sentry/CustomSamplingContext;)Lio/sentry/ITransaction;

    move-result-object p1

    return-object p1
.end method
