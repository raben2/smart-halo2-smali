.class public final synthetic Lio/sentry/-$$Lambda$SentryEnvelopeItem$jxUHPkaLs3ntawrMEkpL6JjoX2Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lio/sentry/ISerializer;

.field private final synthetic f$1:Lio/sentry/SentryBaseEvent;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/ISerializer;Lio/sentry/SentryBaseEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/-$$Lambda$SentryEnvelopeItem$jxUHPkaLs3ntawrMEkpL6JjoX2Q;->f$0:Lio/sentry/ISerializer;

    iput-object p2, p0, Lio/sentry/-$$Lambda$SentryEnvelopeItem$jxUHPkaLs3ntawrMEkpL6JjoX2Q;->f$1:Lio/sentry/SentryBaseEvent;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lio/sentry/-$$Lambda$SentryEnvelopeItem$jxUHPkaLs3ntawrMEkpL6JjoX2Q;->f$0:Lio/sentry/ISerializer;

    iget-object v1, p0, Lio/sentry/-$$Lambda$SentryEnvelopeItem$jxUHPkaLs3ntawrMEkpL6JjoX2Q;->f$1:Lio/sentry/SentryBaseEvent;

    invoke-static {v0, v1}, Lio/sentry/SentryEnvelopeItem;->lambda$fromEvent$3(Lio/sentry/ISerializer;Lio/sentry/SentryBaseEvent;)[B

    move-result-object v0

    return-object v0
.end method
