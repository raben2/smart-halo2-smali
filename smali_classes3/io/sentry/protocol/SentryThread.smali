.class public final Lio/sentry/protocol/SentryThread;
.super Ljava/lang/Object;
.source "SentryThread.java"

# interfaces
.implements Lio/sentry/IUnknownPropertiesConsumer;


# instance fields
.field private crashed:Ljava/lang/Boolean;

.field private current:Ljava/lang/Boolean;

.field private daemon:Ljava/lang/Boolean;

.field private id:Ljava/lang/Long;

.field private name:Ljava/lang/String;

.field private priority:Ljava/lang/Integer;

.field private stacktrace:Lio/sentry/protocol/SentryStackTrace;

.field private state:Ljava/lang/String;

.field private unknown:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptUnknownProperties(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/ApiStatus$Internal;
    .end annotation

    .line 181
    iput-object p1, p0, Lio/sentry/protocol/SentryThread;->unknown:Ljava/util/Map;

    return-void
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 40
    iget-object v0, p0, Lio/sentry/protocol/SentryThread;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lio/sentry/protocol/SentryThread;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()Ljava/lang/Integer;
    .locals 1

    .line 130
    iget-object v0, p0, Lio/sentry/protocol/SentryThread;->priority:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStacktrace()Lio/sentry/protocol/SentryStackTrace;
    .locals 1

    .line 112
    iget-object v0, p0, Lio/sentry/protocol/SentryThread;->stacktrace:Lio/sentry/protocol/SentryStackTrace;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lio/sentry/protocol/SentryThread;->state:Ljava/lang/String;

    return-object v0
.end method

.method public isCrashed()Ljava/lang/Boolean;
    .locals 1

    .line 76
    iget-object v0, p0, Lio/sentry/protocol/SentryThread;->crashed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isCurrent()Ljava/lang/Boolean;
    .locals 1

    .line 94
    iget-object v0, p0, Lio/sentry/protocol/SentryThread;->current:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isDaemon()Ljava/lang/Boolean;
    .locals 1

    .line 148
    iget-object v0, p0, Lio/sentry/protocol/SentryThread;->daemon:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setCrashed(Ljava/lang/Boolean;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lio/sentry/protocol/SentryThread;->crashed:Ljava/lang/Boolean;

    return-void
.end method

.method public setCurrent(Ljava/lang/Boolean;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lio/sentry/protocol/SentryThread;->current:Ljava/lang/Boolean;

    return-void
.end method

.method public setDaemon(Ljava/lang/Boolean;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lio/sentry/protocol/SentryThread;->daemon:Ljava/lang/Boolean;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lio/sentry/protocol/SentryThread;->id:Ljava/lang/Long;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lio/sentry/protocol/SentryThread;->name:Ljava/lang/String;

    return-void
.end method

.method public setPriority(Ljava/lang/Integer;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lio/sentry/protocol/SentryThread;->priority:Ljava/lang/Integer;

    return-void
.end method

.method public setStacktrace(Lio/sentry/protocol/SentryStackTrace;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lio/sentry/protocol/SentryThread;->stacktrace:Lio/sentry/protocol/SentryStackTrace;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lio/sentry/protocol/SentryThread;->state:Ljava/lang/String;

    return-void
.end method
