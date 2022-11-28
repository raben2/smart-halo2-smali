.class public interface abstract Lio/sentry/cache/IEnvelopeCache;
.super Ljava/lang/Object;
.source "IEnvelopeCache.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lio/sentry/SentryEnvelope;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract discard(Lio/sentry/SentryEnvelope;)V
.end method

.method public abstract store(Lio/sentry/SentryEnvelope;)V
.end method

.method public abstract store(Lio/sentry/SentryEnvelope;Ljava/lang/Object;)V
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method
