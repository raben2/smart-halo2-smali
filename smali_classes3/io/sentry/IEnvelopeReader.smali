.class public interface abstract Lio/sentry/IEnvelopeReader;
.super Ljava/lang/Object;
.source "IEnvelopeReader.java"


# virtual methods
.method public abstract read(Ljava/io/InputStream;)Lio/sentry/SentryEnvelope;
    .param p1    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
