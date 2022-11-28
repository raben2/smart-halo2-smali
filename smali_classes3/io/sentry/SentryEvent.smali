.class public final Lio/sentry/SentryEvent;
.super Lio/sentry/SentryBaseEvent;
.source "SentryEvent.java"

# interfaces
.implements Lio/sentry/IUnknownPropertiesConsumer;


# instance fields
.field private breadcrumbs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/Breadcrumb;",
            ">;"
        }
    .end annotation
.end field

.field private debugMeta:Lio/sentry/protocol/DebugMeta;

.field private dist:Ljava/lang/String;

.field private exception:Lio/sentry/SentryValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/SentryValues<",
            "Lio/sentry/protocol/SentryException;",
            ">;"
        }
    .end annotation
.end field

.field private extra:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private fingerprint:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private level:Lio/sentry/SentryLevel;

.field private logger:Ljava/lang/String;

.field private message:Lio/sentry/protocol/Message;

.field private modules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private platform:Ljava/lang/String;

.field private serverName:Ljava/lang/String;

.field private threads:Lio/sentry/SentryValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/SentryValues<",
            "Lio/sentry/protocol/SentryThread;",
            ">;"
        }
    .end annotation
.end field

.field private final timestamp:Ljava/util/Date;

.field private transaction:Ljava/lang/String;

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

.field private user:Lio/sentry/protocol/User;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 140
    new-instance v0, Lio/sentry/protocol/SentryId;

    invoke-direct {v0}, Lio/sentry/protocol/SentryId;-><init>()V

    invoke-static {}, Lio/sentry/DateUtils;->getCurrentDateTime()Ljava/util/Date;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/sentry/SentryEvent;-><init>(Lio/sentry/protocol/SentryId;Ljava/util/Date;)V

    return-void
.end method

.method constructor <init>(Lio/sentry/protocol/SentryId;Ljava/util/Date;)V
    .locals 0

    .line 125
    invoke-direct {p0, p1}, Lio/sentry/SentryBaseEvent;-><init>(Lio/sentry/protocol/SentryId;)V

    .line 126
    iput-object p2, p0, Lio/sentry/SentryEvent;->timestamp:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 135
    invoke-direct {p0}, Lio/sentry/SentryEvent;-><init>()V

    .line 136
    iput-object p1, p0, Lio/sentry/SentryEvent;->throwable:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 1
    .annotation build Lorg/jetbrains/annotations/TestOnly;
    .end annotation

    .line 145
    new-instance v0, Lio/sentry/protocol/SentryId;

    invoke-direct {v0}, Lio/sentry/protocol/SentryId;-><init>()V

    invoke-direct {p0, v0, p1}, Lio/sentry/SentryEvent;-><init>(Lio/sentry/protocol/SentryId;Ljava/util/Date;)V

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

    .line 295
    iput-object p1, p0, Lio/sentry/SentryEvent;->unknown:Ljava/util/Map;

    return-void
.end method

.method public addBreadcrumb(Lio/sentry/Breadcrumb;)V
    .locals 1

    .line 254
    iget-object v0, p0, Lio/sentry/SentryEvent;->breadcrumbs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryEvent;->breadcrumbs:Ljava/util/List;

    .line 257
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryEvent;->breadcrumbs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addBreadcrumb(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 261
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0, p1}, Lio/sentry/Breadcrumb;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/sentry/SentryEvent;->addBreadcrumb(Lio/sentry/Breadcrumb;)V

    return-void
.end method

.method public getBreadcrumbs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/Breadcrumb;",
            ">;"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lio/sentry/SentryEvent;->breadcrumbs:Ljava/util/List;

    return-object v0
.end method

.method public getDebugMeta()Lio/sentry/protocol/DebugMeta;
    .locals 1

    .line 332
    iget-object v0, p0, Lio/sentry/SentryEvent;->debugMeta:Lio/sentry/protocol/DebugMeta;

    return-object v0
.end method

.method public getDist()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lio/sentry/SentryEvent;->dist:Ljava/lang/String;

    return-object v0
.end method

.method public getExceptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentryException;",
            ">;"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lio/sentry/SentryEvent;->exception:Lio/sentry/SentryValues;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lio/sentry/SentryValues;->getValues()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 286
    iget-object v0, p0, Lio/sentry/SentryEvent;->extra:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 287
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method getExtras()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lio/sentry/SentryEvent;->extra:Ljava/util/Map;

    return-object v0
.end method

.method public getFingerprints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lio/sentry/SentryEvent;->fingerprint:Ljava/util/List;

    return-object v0
.end method

.method public getLevel()Lio/sentry/SentryLevel;
    .locals 1

    .line 214
    iget-object v0, p0, Lio/sentry/SentryEvent;->level:Lio/sentry/SentryLevel;

    return-object v0
.end method

.method public getLogger()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lio/sentry/SentryEvent;->logger:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Lio/sentry/protocol/Message;
    .locals 1

    .line 154
    iget-object v0, p0, Lio/sentry/SentryEvent;->message:Lio/sentry/protocol/Message;

    return-object v0
.end method

.method public getModule(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 325
    iget-object v0, p0, Lio/sentry/SentryEvent;->modules:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 326
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method getModules()Ljava/util/Map;
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

    .line 304
    iget-object v0, p0, Lio/sentry/SentryEvent;->modules:Ljava/util/Map;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lio/sentry/SentryEvent;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lio/sentry/SentryEvent;->serverName:Ljava/lang/String;

    return-object v0
.end method

.method public getThreads()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentryThread;",
            ">;"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lio/sentry/SentryEvent;->threads:Lio/sentry/SentryValues;

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0}, Lio/sentry/SentryValues;->getValues()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 1

    .line 150
    iget-object v0, p0, Lio/sentry/SentryEvent;->timestamp:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getTransaction()Ljava/lang/String;
    .locals 1

    .line 222
    iget-object v0, p0, Lio/sentry/SentryEvent;->transaction:Ljava/lang/String;

    return-object v0
.end method

.method public getUnknown()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/TestOnly;
    .end annotation

    .line 300
    iget-object v0, p0, Lio/sentry/SentryEvent;->unknown:Ljava/util/Map;

    return-object v0
.end method

.method public getUser()Lio/sentry/protocol/User;
    .locals 1

    .line 230
    iget-object v0, p0, Lio/sentry/SentryEvent;->user:Lio/sentry/protocol/User;

    return-object v0
.end method

.method public isCrashed()Z
    .locals 3

    .line 345
    iget-object v0, p0, Lio/sentry/SentryEvent;->exception:Lio/sentry/SentryValues;

    if-eqz v0, :cond_1

    .line 346
    invoke-virtual {v0}, Lio/sentry/SentryValues;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/protocol/SentryException;

    .line 347
    invoke-virtual {v1}, Lio/sentry/protocol/SentryException;->getMechanism()Lio/sentry/protocol/Mechanism;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 348
    invoke-virtual {v1}, Lio/sentry/protocol/SentryException;->getMechanism()Lio/sentry/protocol/Mechanism;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/protocol/Mechanism;->isHandled()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 349
    invoke-virtual {v1}, Lio/sentry/protocol/SentryException;->getMechanism()Lio/sentry/protocol/Mechanism;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/protocol/Mechanism;->isHandled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isErrored()Z
    .locals 1

    .line 364
    iget-object v0, p0, Lio/sentry/SentryEvent;->exception:Lio/sentry/SentryValues;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/sentry/SentryValues;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeExtra(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 280
    iget-object v0, p0, Lio/sentry/SentryEvent;->extra:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 281
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public removeModule(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 319
    iget-object v0, p0, Lio/sentry/SentryEvent;->modules:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 320
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setBreadcrumbs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/Breadcrumb;",
            ">;)V"
        }
    .end annotation

    .line 250
    iput-object p1, p0, Lio/sentry/SentryEvent;->breadcrumbs:Ljava/util/List;

    return-void
.end method

.method public setDebugMeta(Lio/sentry/protocol/DebugMeta;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lio/sentry/SentryEvent;->debugMeta:Lio/sentry/protocol/DebugMeta;

    return-void
.end method

.method public setDist(Ljava/lang/String;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lio/sentry/SentryEvent;->dist:Ljava/lang/String;

    return-void
.end method

.method public setExceptions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentryException;",
            ">;)V"
        }
    .end annotation

    .line 210
    new-instance v0, Lio/sentry/SentryValues;

    invoke-direct {v0, p1}, Lio/sentry/SentryValues;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lio/sentry/SentryEvent;->exception:Lio/sentry/SentryValues;

    return-void
.end method

.method public setExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 273
    iget-object v0, p0, Lio/sentry/SentryEvent;->extra:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 274
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryEvent;->extra:Ljava/util/Map;

    .line 276
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryEvent;->extra:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setExtras(Ljava/util/Map;)V
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

    .line 269
    iput-object p1, p0, Lio/sentry/SentryEvent;->extra:Ljava/util/Map;

    return-void
.end method

.method public setFingerprints(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 242
    iput-object p1, p0, Lio/sentry/SentryEvent;->fingerprint:Ljava/util/List;

    return-void
.end method

.method public setLevel(Lio/sentry/SentryLevel;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lio/sentry/SentryEvent;->level:Lio/sentry/SentryLevel;

    return-void
.end method

.method public setLogger(Ljava/lang/String;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lio/sentry/SentryEvent;->logger:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Lio/sentry/protocol/Message;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lio/sentry/SentryEvent;->message:Lio/sentry/protocol/Message;

    return-void
.end method

.method public setModule(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 312
    iget-object v0, p0, Lio/sentry/SentryEvent;->modules:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 313
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryEvent;->modules:Ljava/util/Map;

    .line 315
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryEvent;->modules:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setModules(Ljava/util/Map;)V
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

    .line 308
    iput-object p1, p0, Lio/sentry/SentryEvent;->modules:Ljava/util/Map;

    return-void
.end method

.method public setPlatform(Ljava/lang/String;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lio/sentry/SentryEvent;->platform:Ljava/lang/String;

    return-void
.end method

.method public setServerName(Ljava/lang/String;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lio/sentry/SentryEvent;->serverName:Ljava/lang/String;

    return-void
.end method

.method public setThreads(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentryThread;",
            ">;)V"
        }
    .end annotation

    .line 202
    new-instance v0, Lio/sentry/SentryValues;

    invoke-direct {v0, p1}, Lio/sentry/SentryValues;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lio/sentry/SentryEvent;->threads:Lio/sentry/SentryValues;

    return-void
.end method

.method public setTransaction(Ljava/lang/String;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lio/sentry/SentryEvent;->transaction:Ljava/lang/String;

    return-void
.end method

.method public setUser(Lio/sentry/protocol/User;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lio/sentry/SentryEvent;->user:Lio/sentry/protocol/User;

    return-void
.end method
