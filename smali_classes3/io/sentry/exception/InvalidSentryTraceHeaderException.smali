.class public final Lio/sentry/exception/InvalidSentryTraceHeaderException;
.super Ljava/lang/Exception;
.source "InvalidSentryTraceHeaderException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final sentryTraceHeader:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sentry-trace header does not conform to expected format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lio/sentry/exception/InvalidSentryTraceHeaderException;->sentryTraceHeader:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSentryTraceHeader()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 20
    iget-object v0, p0, Lio/sentry/exception/InvalidSentryTraceHeaderException;->sentryTraceHeader:Ljava/lang/String;

    return-object v0
.end method
