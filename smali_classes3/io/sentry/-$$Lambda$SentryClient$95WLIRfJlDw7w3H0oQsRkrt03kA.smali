.class public final synthetic Lio/sentry/-$$Lambda$SentryClient$95WLIRfJlDw7w3H0oQsRkrt03kA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/sentry/Scope$IWithSession;


# instance fields
.field private final synthetic f$0:Lio/sentry/SentryClient;

.field private final synthetic f$1:Lio/sentry/SentryEvent;

.field private final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/SentryClient;Lio/sentry/SentryEvent;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/-$$Lambda$SentryClient$95WLIRfJlDw7w3H0oQsRkrt03kA;->f$0:Lio/sentry/SentryClient;

    iput-object p2, p0, Lio/sentry/-$$Lambda$SentryClient$95WLIRfJlDw7w3H0oQsRkrt03kA;->f$1:Lio/sentry/SentryEvent;

    iput-object p3, p0, Lio/sentry/-$$Lambda$SentryClient$95WLIRfJlDw7w3H0oQsRkrt03kA;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Lio/sentry/Session;)V
    .locals 3

    iget-object v0, p0, Lio/sentry/-$$Lambda$SentryClient$95WLIRfJlDw7w3H0oQsRkrt03kA;->f$0:Lio/sentry/SentryClient;

    iget-object v1, p0, Lio/sentry/-$$Lambda$SentryClient$95WLIRfJlDw7w3H0oQsRkrt03kA;->f$1:Lio/sentry/SentryEvent;

    iget-object v2, p0, Lio/sentry/-$$Lambda$SentryClient$95WLIRfJlDw7w3H0oQsRkrt03kA;->f$2:Ljava/lang/Object;

    invoke-static {v0, v1, v2, p1}, Lio/sentry/SentryClient;->lambda$updateSessionData$0(Lio/sentry/SentryClient;Lio/sentry/SentryEvent;Ljava/lang/Object;Lio/sentry/Session;)V

    return-void
.end method
