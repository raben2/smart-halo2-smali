.class public final synthetic Lio/sentry/transport/ITransport$-CC;
.super Ljava/lang/Object;
.source "ITransport.java"


# direct methods
.method public static $default$send(Lio/sentry/transport/ITransport;Lio/sentry/SentryEnvelope;)V
    .locals 1
    .param p0, "-this"    # Lio/sentry/transport/ITransport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 12
    invoke-interface {p0, p1, v0}, Lio/sentry/transport/ITransport;->send(Lio/sentry/SentryEnvelope;Ljava/lang/Object;)V

    return-void
.end method
