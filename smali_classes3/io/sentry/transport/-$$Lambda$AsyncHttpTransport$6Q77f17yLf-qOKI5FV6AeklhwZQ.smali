.class public final synthetic Lio/sentry/transport/-$$Lambda$AsyncHttpTransport$6Q77f17yLf-qOKI5FV6AeklhwZQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# instance fields
.field private final synthetic f$0:Lio/sentry/cache/IEnvelopeCache;

.field private final synthetic f$1:Lio/sentry/ILogger;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/cache/IEnvelopeCache;Lio/sentry/ILogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/transport/-$$Lambda$AsyncHttpTransport$6Q77f17yLf-qOKI5FV6AeklhwZQ;->f$0:Lio/sentry/cache/IEnvelopeCache;

    iput-object p2, p0, Lio/sentry/transport/-$$Lambda$AsyncHttpTransport$6Q77f17yLf-qOKI5FV6AeklhwZQ;->f$1:Lio/sentry/ILogger;

    return-void
.end method


# virtual methods
.method public final rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 2

    iget-object v0, p0, Lio/sentry/transport/-$$Lambda$AsyncHttpTransport$6Q77f17yLf-qOKI5FV6AeklhwZQ;->f$0:Lio/sentry/cache/IEnvelopeCache;

    iget-object v1, p0, Lio/sentry/transport/-$$Lambda$AsyncHttpTransport$6Q77f17yLf-qOKI5FV6AeklhwZQ;->f$1:Lio/sentry/ILogger;

    invoke-static {v0, v1, p1, p2}, Lio/sentry/transport/AsyncHttpTransport;->lambda$initExecutor$0(Lio/sentry/cache/IEnvelopeCache;Lio/sentry/ILogger;Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V

    return-void
.end method
