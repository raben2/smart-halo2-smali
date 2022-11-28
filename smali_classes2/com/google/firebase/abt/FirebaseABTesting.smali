.class public Lcom/google/firebase/abt/FirebaseABTesting;
.super Ljava/lang/Object;
.source "FirebaseABTesting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/abt/FirebaseABTesting$OriginService;
    }
.end annotation


# static fields
.field static final ABT_PREFERENCES:Ljava/lang/String; = "com.google.firebase.abt"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final ORIGIN_LAST_KNOWN_START_TIME_KEY_FORMAT:Ljava/lang/String; = "%s_lastKnownExperimentStartTime"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final analyticsConnector:Lcom/google/firebase/analytics/connector/AnalyticsConnector;

.field private maxUserProperties:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final originService:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/analytics/connector/AnalyticsConnector;Ljava/lang/String;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p2, p0, Lcom/google/firebase/abt/FirebaseABTesting;->analyticsConnector:Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    .line 95
    iput-object p3, p0, Lcom/google/firebase/abt/FirebaseABTesting;->originService:Ljava/lang/String;

    const/4 p1, 0x0

    .line 97
    iput-object p1, p0, Lcom/google/firebase/abt/FirebaseABTesting;->maxUserProperties:Ljava/lang/Integer;

    return-void
.end method

.method private addExperimentToAnalytics(Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;)V
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/google/firebase/abt/FirebaseABTesting;->analyticsConnector:Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    invoke-interface {v0, p1}, Lcom/google/firebase/analytics/connector/AnalyticsConnector;->setConditionalUserProperty(Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;)V

    return-void
.end method

.method private addExperiments(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/abt/AbtExperimentInfo;",
            ">;)V"
        }
    .end annotation

    .line 299
    new-instance v0, Ljava/util/ArrayDeque;

    .line 300
    invoke-direct {p0}, Lcom/google/firebase/abt/FirebaseABTesting;->getAllExperimentsInAnalytics()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 302
    invoke-direct {p0}, Lcom/google/firebase/abt/FirebaseABTesting;->getMaxUserPropertiesInAnalytics()I

    move-result v1

    .line 304
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/abt/AbtExperimentInfo;

    .line 305
    :goto_1
    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v3

    if-lt v3, v1, :cond_0

    .line 306
    invoke-interface {v0}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;

    iget-object v3, v3, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->name:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/google/firebase/abt/FirebaseABTesting;->removeExperimentFromAnalytics(Ljava/lang/String;)V

    goto :goto_1

    .line 309
    :cond_0
    iget-object v3, p0, Lcom/google/firebase/abt/FirebaseABTesting;->originService:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/firebase/abt/AbtExperimentInfo;->toConditionalUserProperty(Ljava/lang/String;)Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;

    move-result-object v2

    .line 310
    invoke-direct {p0, v2}, Lcom/google/firebase/abt/FirebaseABTesting;->addExperimentToAnalytics(Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;)V

    .line 311
    invoke-interface {v0, v2}, Ljava/util/Deque;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static convertMapsToExperimentInfos(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/google/firebase/abt/AbtExperimentInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/abt/AbtException;
        }
    .end annotation

    .line 328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 329
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 330
    invoke-static {v1}, Lcom/google/firebase/abt/AbtExperimentInfo;->fromMap(Ljava/util/Map;)Lcom/google/firebase/abt/AbtExperimentInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getAllExperimentsInAnalytics()Ljava/util/List;
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;",
            ">;"
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lcom/google/firebase/abt/FirebaseABTesting;->analyticsConnector:Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    iget-object v1, p0, Lcom/google/firebase/abt/FirebaseABTesting;->originService:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/google/firebase/analytics/connector/AnalyticsConnector;->getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getExperimentsToAdd(Ljava/util/List;Ljava/util/Set;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/abt/AbtExperimentInfo;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/google/firebase/abt/AbtExperimentInfo;",
            ">;"
        }
    .end annotation

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 288
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/abt/AbtExperimentInfo;

    .line 289
    invoke-virtual {v1}, Lcom/google/firebase/abt/AbtExperimentInfo;->getExperimentId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 290
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getExperimentsToRemove(Ljava/util/List;Ljava/util/Set;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;",
            ">;"
        }
    .end annotation

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 272
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;

    .line 273
    iget-object v2, v1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->name:Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 274
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getMaxUserPropertiesInAnalytics()I
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 359
    iget-object v0, p0, Lcom/google/firebase/abt/FirebaseABTesting;->maxUserProperties:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/google/firebase/abt/FirebaseABTesting;->analyticsConnector:Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    iget-object v1, p0, Lcom/google/firebase/abt/FirebaseABTesting;->originService:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/firebase/analytics/connector/AnalyticsConnector;->getMaxUserProperties(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/abt/FirebaseABTesting;->maxUserProperties:Ljava/lang/Integer;

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/abt/FirebaseABTesting;->maxUserProperties:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private removeExperimentFromAnalytics(Ljava/lang/String;)V
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/google/firebase/abt/FirebaseABTesting;->analyticsConnector:Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, v1}, Lcom/google/firebase/analytics/connector/AnalyticsConnector;->clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private removeExperiments(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;",
            ">;)V"
        }
    .end annotation

    .line 316
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;

    .line 317
    iget-object v0, v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/firebase/abt/FirebaseABTesting;->removeExperimentFromAnalytics(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private replaceAllExperimentsWith(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/abt/AbtExperimentInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/abt/AbtException;
        }
    .end annotation

    .line 242
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/google/firebase/abt/FirebaseABTesting;->removeAllExperiments()V

    return-void

    .line 247
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 248
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/abt/AbtExperimentInfo;

    .line 249
    invoke-virtual {v2}, Lcom/google/firebase/abt/AbtExperimentInfo;->getExperimentId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 252
    :cond_1
    invoke-direct {p0}, Lcom/google/firebase/abt/FirebaseABTesting;->getAllExperimentsInAnalytics()Ljava/util/List;

    move-result-object v1

    .line 253
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 254
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;

    .line 255
    iget-object v4, v4, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->name:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 259
    :cond_2
    invoke-direct {p0, v1, v0}, Lcom/google/firebase/abt/FirebaseABTesting;->getExperimentsToRemove(Ljava/util/List;Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v0

    .line 260
    invoke-direct {p0, v0}, Lcom/google/firebase/abt/FirebaseABTesting;->removeExperiments(Ljava/util/Collection;)V

    .line 263
    invoke-direct {p0, p1, v2}, Lcom/google/firebase/abt/FirebaseABTesting;->getExperimentsToAdd(Ljava/util/List;Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object p1

    .line 264
    invoke-direct {p0, p1}, Lcom/google/firebase/abt/FirebaseABTesting;->addExperiments(Ljava/util/List;)V

    return-void
.end method

.method private throwAbtExceptionIfAnalyticsIsNull()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/abt/AbtException;
        }
    .end annotation

    .line 340
    iget-object v0, p0, Lcom/google/firebase/abt/FirebaseABTesting;->analyticsConnector:Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    if-eqz v0, :cond_0

    return-void

    .line 341
    :cond_0
    new-instance v0, Lcom/google/firebase/abt/AbtException;

    const-string v1, "The Analytics SDK is not available. Please check that the Analytics SDK is included in your app dependencies."

    invoke-direct {v0, v1}, Lcom/google/firebase/abt/AbtException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAllExperiments()Ljava/util/List;
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/abt/AbtExperimentInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/abt/AbtException;
        }
    .end annotation

    .line 155
    invoke-direct {p0}, Lcom/google/firebase/abt/FirebaseABTesting;->throwAbtExceptionIfAnalyticsIsNull()V

    .line 157
    invoke-direct {p0}, Lcom/google/firebase/abt/FirebaseABTesting;->getAllExperimentsInAnalytics()Ljava/util/List;

    move-result-object v0

    .line 158
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 160
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;

    .line 161
    invoke-static {v2}, Lcom/google/firebase/abt/AbtExperimentInfo;->fromConditionalUserProperty(Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;)Lcom/google/firebase/abt/AbtExperimentInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public removeAllExperiments()V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/abt/AbtException;
        }
    .end annotation

    .line 140
    invoke-direct {p0}, Lcom/google/firebase/abt/FirebaseABTesting;->throwAbtExceptionIfAnalyticsIsNull()V

    .line 142
    invoke-direct {p0}, Lcom/google/firebase/abt/FirebaseABTesting;->getAllExperimentsInAnalytics()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/abt/FirebaseABTesting;->removeExperiments(Ljava/util/Collection;)V

    return-void
.end method

.method public replaceAllExperiments(Ljava/util/List;)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/abt/AbtException;
        }
    .end annotation

    .line 121
    invoke-direct {p0}, Lcom/google/firebase/abt/FirebaseABTesting;->throwAbtExceptionIfAnalyticsIsNull()V

    if-eqz p1, :cond_0

    .line 127
    invoke-static {p1}, Lcom/google/firebase/abt/FirebaseABTesting;->convertMapsToExperimentInfos(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/abt/FirebaseABTesting;->replaceAllExperimentsWith(Ljava/util/List;)V

    return-void

    .line 124
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The replacementExperiments list is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reportActiveExperiment(Lcom/google/firebase/abt/AbtExperimentInfo;)V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/abt/AbtException;
        }
    .end annotation

    .line 179
    invoke-direct {p0}, Lcom/google/firebase/abt/FirebaseABTesting;->throwAbtExceptionIfAnalyticsIsNull()V

    .line 180
    invoke-static {p1}, Lcom/google/firebase/abt/AbtExperimentInfo;->validateAbtExperimentInfo(Lcom/google/firebase/abt/AbtExperimentInfo;)V

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 184
    invoke-virtual {p1}, Lcom/google/firebase/abt/AbtExperimentInfo;->toStringMap()Ljava/util/Map;

    move-result-object p1

    const-string v1, "triggerEvent"

    .line 185
    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-static {p1}, Lcom/google/firebase/abt/AbtExperimentInfo;->fromMap(Ljava/util/Map;)Lcom/google/firebase/abt/AbtExperimentInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    invoke-direct {p0, v0}, Lcom/google/firebase/abt/FirebaseABTesting;->addExperiments(Ljava/util/List;)V

    return-void
.end method

.method public validateRunningExperiments(Ljava/util/List;)V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/abt/AbtExperimentInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/abt/AbtException;
        }
    .end annotation

    .line 205
    invoke-direct {p0}, Lcom/google/firebase/abt/FirebaseABTesting;->throwAbtExceptionIfAnalyticsIsNull()V

    .line 206
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 207
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/abt/AbtExperimentInfo;

    .line 208
    invoke-virtual {v1}, Lcom/google/firebase/abt/AbtExperimentInfo;->getExperimentId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 211
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/abt/FirebaseABTesting;->getAllExperimentsInAnalytics()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/abt/FirebaseABTesting;->getExperimentsToRemove(Ljava/util/List;Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object p1

    .line 212
    invoke-direct {p0, p1}, Lcom/google/firebase/abt/FirebaseABTesting;->removeExperiments(Ljava/util/Collection;)V

    return-void
.end method
