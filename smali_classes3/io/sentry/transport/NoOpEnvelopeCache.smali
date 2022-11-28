.class public final Lio/sentry/transport/NoOpEnvelopeCache;
.super Ljava/lang/Object;
.source "NoOpEnvelopeCache.java"

# interfaces
.implements Lio/sentry/cache/IEnvelopeCache;


# static fields
.field private static final instance:Lio/sentry/transport/NoOpEnvelopeCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lio/sentry/transport/NoOpEnvelopeCache;

    invoke-direct {v0}, Lio/sentry/transport/NoOpEnvelopeCache;-><init>()V

    sput-object v0, Lio/sentry/transport/NoOpEnvelopeCache;->instance:Lio/sentry/transport/NoOpEnvelopeCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/transport/NoOpEnvelopeCache;
    .locals 1

    .line 14
    sget-object v0, Lio/sentry/transport/NoOpEnvelopeCache;->instance:Lio/sentry/transport/NoOpEnvelopeCache;

    return-object v0
.end method


# virtual methods
.method public discard(Lio/sentry/SentryEnvelope;)V
    .locals 0

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lio/sentry/SentryEnvelope;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic store(Lio/sentry/SentryEnvelope;)V
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/cache/IEnvelopeCache$-CC;->$default$store(Lio/sentry/cache/IEnvelopeCache;Lio/sentry/SentryEnvelope;)V

    return-void
.end method

.method public store(Lio/sentry/SentryEnvelope;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method
