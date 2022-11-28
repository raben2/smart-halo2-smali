.class public abstract Lio/sentry/SentryBaseEvent;
.super Ljava/lang/Object;
.source "SentryBaseEvent.java"


# instance fields
.field private final contexts:Lio/sentry/protocol/Contexts;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private environment:Ljava/lang/String;

.field private eventId:Lio/sentry/protocol/SentryId;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private release:Ljava/lang/String;

.field private request:Lio/sentry/protocol/Request;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private sdk:Lio/sentry/protocol/SdkVersion;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected transient throwable:Ljava/lang/Throwable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 70
    new-instance v0, Lio/sentry/protocol/SentryId;

    invoke-direct {v0}, Lio/sentry/protocol/SentryId;-><init>()V

    invoke-direct {p0, v0}, Lio/sentry/SentryBaseEvent;-><init>(Lio/sentry/protocol/SentryId;)V

    return-void
.end method

.method protected constructor <init>(Lio/sentry/protocol/SentryId;)V
    .locals 1
    .param p1    # Lio/sentry/protocol/SentryId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lio/sentry/protocol/Contexts;

    invoke-direct {v0}, Lio/sentry/protocol/Contexts;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryBaseEvent;->contexts:Lio/sentry/protocol/Contexts;

    .line 66
    iput-object p1, p0, Lio/sentry/SentryBaseEvent;->eventId:Lio/sentry/protocol/SentryId;

    return-void
.end method


# virtual methods
.method public getContexts()Lio/sentry/protocol/Contexts;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 82
    iget-object v0, p0, Lio/sentry/SentryBaseEvent;->contexts:Lio/sentry/protocol/Contexts;

    return-object v0
.end method

.method public getEnvironment()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lio/sentry/SentryBaseEvent;->environment:Ljava/lang/String;

    return-object v0
.end method

.method public getEventId()Lio/sentry/protocol/SentryId;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 74
    iget-object v0, p0, Lio/sentry/SentryBaseEvent;->eventId:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public getOriginThrowable()Ljava/lang/Throwable;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 117
    iget-object v0, p0, Lio/sentry/SentryBaseEvent;->throwable:Ljava/lang/Throwable;

    .line 118
    instance-of v1, v0, Lio/sentry/exception/ExceptionMechanismException;

    if-eqz v1, :cond_0

    .line 119
    check-cast v0, Lio/sentry/exception/ExceptionMechanismException;

    invoke-virtual {v0}, Lio/sentry/exception/ExceptionMechanismException;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v0
.end method

.method public getRelease()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lio/sentry/SentryBaseEvent;->release:Ljava/lang/String;

    return-object v0
.end method

.method public getRequest()Lio/sentry/protocol/Request;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 94
    iget-object v0, p0, Lio/sentry/SentryBaseEvent;->request:Lio/sentry/protocol/Request;

    return-object v0
.end method

.method public getSdk()Lio/sentry/protocol/SdkVersion;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 86
    iget-object v0, p0, Lio/sentry/SentryBaseEvent;->sdk:Lio/sentry/protocol/SdkVersion;

    return-object v0
.end method

.method public getTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 149
    iget-object v0, p0, Lio/sentry/SentryBaseEvent;->tags:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 150
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method getTags()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lio/sentry/SentryBaseEvent;->tags:Ljava/util/Map;

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 107
    iget-object v0, p0, Lio/sentry/SentryBaseEvent;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public removeTag(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 143
    iget-object v0, p0, Lio/sentry/SentryBaseEvent;->tags:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 144
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setEnvironment(Ljava/lang/String;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lio/sentry/SentryBaseEvent;->environment:Ljava/lang/String;

    return-void
.end method

.method public setEventId(Lio/sentry/protocol/SentryId;)V
    .locals 0
    .param p1    # Lio/sentry/protocol/SentryId;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 78
    iput-object p1, p0, Lio/sentry/SentryBaseEvent;->eventId:Lio/sentry/protocol/SentryId;

    return-void
.end method

.method public setRelease(Ljava/lang/String;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lio/sentry/SentryBaseEvent;->release:Ljava/lang/String;

    return-void
.end method

.method public setRequest(Lio/sentry/protocol/Request;)V
    .locals 0
    .param p1    # Lio/sentry/protocol/Request;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 98
    iput-object p1, p0, Lio/sentry/SentryBaseEvent;->request:Lio/sentry/protocol/Request;

    return-void
.end method

.method public setSdk(Lio/sentry/protocol/SdkVersion;)V
    .locals 0
    .param p1    # Lio/sentry/protocol/SdkVersion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 90
    iput-object p1, p0, Lio/sentry/SentryBaseEvent;->sdk:Lio/sentry/protocol/SdkVersion;

    return-void
.end method

.method public setTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 156
    iget-object v0, p0, Lio/sentry/SentryBaseEvent;->tags:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryBaseEvent;->tags:Ljava/util/Map;

    .line 159
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryBaseEvent;->tags:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setTags(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 139
    iput-object p1, p0, Lio/sentry/SentryBaseEvent;->tags:Ljava/util/Map;

    return-void
.end method

.method public setThrowable(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 131
    iput-object p1, p0, Lio/sentry/SentryBaseEvent;->throwable:Ljava/lang/Throwable;

    return-void
.end method
