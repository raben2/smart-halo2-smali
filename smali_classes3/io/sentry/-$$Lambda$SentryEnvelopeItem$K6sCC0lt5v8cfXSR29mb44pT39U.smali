.class public final synthetic Lio/sentry/-$$Lambda$SentryEnvelopeItem$K6sCC0lt5v8cfXSR29mb44pT39U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lio/sentry/ISerializer;

.field private final synthetic f$1:Lio/sentry/UserFeedback;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/ISerializer;Lio/sentry/UserFeedback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/-$$Lambda$SentryEnvelopeItem$K6sCC0lt5v8cfXSR29mb44pT39U;->f$0:Lio/sentry/ISerializer;

    iput-object p2, p0, Lio/sentry/-$$Lambda$SentryEnvelopeItem$K6sCC0lt5v8cfXSR29mb44pT39U;->f$1:Lio/sentry/UserFeedback;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lio/sentry/-$$Lambda$SentryEnvelopeItem$K6sCC0lt5v8cfXSR29mb44pT39U;->f$0:Lio/sentry/ISerializer;

    iget-object v1, p0, Lio/sentry/-$$Lambda$SentryEnvelopeItem$K6sCC0lt5v8cfXSR29mb44pT39U;->f$1:Lio/sentry/UserFeedback;

    invoke-static {v0, v1}, Lio/sentry/SentryEnvelopeItem;->lambda$fromUserFeedback$6(Lio/sentry/ISerializer;Lio/sentry/UserFeedback;)[B

    move-result-object v0

    return-object v0
.end method
