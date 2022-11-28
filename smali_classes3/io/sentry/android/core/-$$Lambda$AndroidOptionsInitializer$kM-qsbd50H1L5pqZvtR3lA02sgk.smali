.class public final synthetic Lio/sentry/android/core/-$$Lambda$AndroidOptionsInitializer$kM-qsbd50H1L5pqZvtR3lA02sgk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetDirPath;


# instance fields
.field private final synthetic f$0:Lio/sentry/SentryOptions;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/-$$Lambda$AndroidOptionsInitializer$kM-qsbd50H1L5pqZvtR3lA02sgk;->f$0:Lio/sentry/SentryOptions;

    return-void
.end method


# virtual methods
.method public final getDirPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/sentry/android/core/-$$Lambda$AndroidOptionsInitializer$kM-qsbd50H1L5pqZvtR3lA02sgk;->f$0:Lio/sentry/SentryOptions;

    invoke-static {v0}, Lio/sentry/android/core/AndroidOptionsInitializer;->lambda$installDefaultIntegrations$0(Lio/sentry/SentryOptions;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
