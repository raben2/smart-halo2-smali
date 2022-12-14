.class public Lio/realm/internal/SubscriptionAwareOsResults;
.super Lio/realm/internal/OsResults;
.source "SubscriptionAwareOsResults.java"


# instance fields
.field private collectionChanged:Z

.field private delayedNotificationPtr:J

.field private firstCallback:Z

.field private subscription:Lio/realm/internal/sync/OsSubscription;

.field private subscriptionChanged:Z


# direct methods
.method constructor <init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/Table;JLjava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lio/realm/internal/OsResults;-><init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/Table;J)V

    const-wide/16 p2, 0x0

    .line 31
    iput-wide p2, p0, Lio/realm/internal/SubscriptionAwareOsResults;->delayedNotificationPtr:J

    const/4 p2, 0x0

    .line 35
    iput-object p2, p0, Lio/realm/internal/SubscriptionAwareOsResults;->subscription:Lio/realm/internal/sync/OsSubscription;

    const/4 p2, 0x0

    .line 36
    iput-boolean p2, p0, Lio/realm/internal/SubscriptionAwareOsResults;->collectionChanged:Z

    const/4 p2, 0x1

    .line 50
    iput-boolean p2, p0, Lio/realm/internal/SubscriptionAwareOsResults;->firstCallback:Z

    .line 51
    new-instance p2, Lio/realm/internal/sync/OsSubscription;

    invoke-direct {p2, p0, p5}, Lio/realm/internal/sync/OsSubscription;-><init>(Lio/realm/internal/OsResults;Ljava/lang/String;)V

    iput-object p2, p0, Lio/realm/internal/SubscriptionAwareOsResults;->subscription:Lio/realm/internal/sync/OsSubscription;

    .line 52
    iget-object p2, p0, Lio/realm/internal/SubscriptionAwareOsResults;->subscription:Lio/realm/internal/sync/OsSubscription;

    new-instance p3, Lio/realm/internal/SubscriptionAwareOsResults$1;

    invoke-direct {p3, p0}, Lio/realm/internal/SubscriptionAwareOsResults$1;-><init>(Lio/realm/internal/SubscriptionAwareOsResults;)V

    invoke-virtual {p2, p3}, Lio/realm/internal/sync/OsSubscription;->addChangeListener(Lio/realm/RealmChangeListener;)V

    .line 58
    iget-object p1, p1, Lio/realm/internal/OsSharedRealm;->realmNotifier:Lio/realm/internal/RealmNotifier;

    .line 59
    new-instance p2, Lio/realm/internal/SubscriptionAwareOsResults$2;

    invoke-direct {p2, p0}, Lio/realm/internal/SubscriptionAwareOsResults$2;-><init>(Lio/realm/internal/SubscriptionAwareOsResults;)V

    invoke-virtual {p1, p2}, Lio/realm/internal/RealmNotifier;->addBeginSendingNotificationsCallback(Ljava/lang/Runnable;)V

    .line 67
    new-instance p2, Lio/realm/internal/SubscriptionAwareOsResults$3;

    invoke-direct {p2, p0}, Lio/realm/internal/SubscriptionAwareOsResults$3;-><init>(Lio/realm/internal/SubscriptionAwareOsResults;)V

    invoke-virtual {p1, p2}, Lio/realm/internal/RealmNotifier;->addFinishedSendingNotificationsCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$000(Lio/realm/internal/SubscriptionAwareOsResults;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lio/realm/internal/SubscriptionAwareOsResults;->subscriptionChanged:Z

    return p0
.end method

.method static synthetic access$002(Lio/realm/internal/SubscriptionAwareOsResults;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lio/realm/internal/SubscriptionAwareOsResults;->subscriptionChanged:Z

    return p1
.end method

.method static synthetic access$100(Lio/realm/internal/SubscriptionAwareOsResults;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lio/realm/internal/SubscriptionAwareOsResults;->collectionChanged:Z

    return p0
.end method

.method static synthetic access$102(Lio/realm/internal/SubscriptionAwareOsResults;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lio/realm/internal/SubscriptionAwareOsResults;->collectionChanged:Z

    return p1
.end method

.method static synthetic access$202(Lio/realm/internal/SubscriptionAwareOsResults;J)J
    .locals 0

    .line 27
    iput-wide p1, p0, Lio/realm/internal/SubscriptionAwareOsResults;->delayedNotificationPtr:J

    return-wide p1
.end method

.method static synthetic access$300(Lio/realm/internal/SubscriptionAwareOsResults;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lio/realm/internal/SubscriptionAwareOsResults;->triggerDelayedChangeListener()V

    return-void
.end method

.method public static createFromQuery(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/TableQuery;Lio/realm/internal/core/DescriptorOrdering;Ljava/lang/String;)Lio/realm/internal/SubscriptionAwareOsResults;
    .locals 12

    .line 42
    invoke-virtual {p1}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 43
    invoke-virtual {p0}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v0

    invoke-virtual {p1}, Lio/realm/internal/TableQuery;->getNativePtr()J

    move-result-wide v2

    invoke-virtual {p2}, Lio/realm/internal/core/DescriptorOrdering;->getNativePtr()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lio/realm/internal/SubscriptionAwareOsResults;->nativeCreateResults(JJJ)J

    move-result-wide v9

    .line 44
    new-instance p2, Lio/realm/internal/SubscriptionAwareOsResults;

    invoke-virtual {p1}, Lio/realm/internal/TableQuery;->getTable()Lio/realm/internal/Table;

    move-result-object v8

    move-object v6, p2

    move-object v7, p0

    move-object v11, p3

    invoke-direct/range {v6 .. v11}, Lio/realm/internal/SubscriptionAwareOsResults;-><init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/Table;JLjava/lang/String;)V

    return-object p2
.end method

.method private triggerDelayedChangeListener()V
    .locals 10

    .line 79
    iget-boolean v0, p0, Lio/realm/internal/SubscriptionAwareOsResults;->subscriptionChanged:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/realm/internal/SubscriptionAwareOsResults;->subscription:Lio/realm/internal/sync/OsSubscription;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    .line 84
    iget-wide v0, p0, Lio/realm/internal/SubscriptionAwareOsResults;->delayedNotificationPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    if-eqz v5, :cond_1

    iget-boolean v0, p0, Lio/realm/internal/SubscriptionAwareOsResults;->firstCallback:Z

    if-nez v0, :cond_1

    .line 87
    invoke-virtual {v5}, Lio/realm/internal/sync/OsSubscription;->getState()Lio/realm/internal/sync/OsSubscription$SubscriptionState;

    move-result-object v0

    sget-object v1, Lio/realm/internal/sync/OsSubscription$SubscriptionState;->ERROR:Lio/realm/internal/sync/OsSubscription$SubscriptionState;

    if-eq v0, v1, :cond_1

    .line 88
    invoke-virtual {v5}, Lio/realm/internal/sync/OsSubscription;->getState()Lio/realm/internal/sync/OsSubscription$SubscriptionState;

    move-result-object v0

    sget-object v1, Lio/realm/internal/sync/OsSubscription$SubscriptionState;->COMPLETE:Lio/realm/internal/sync/OsSubscription$SubscriptionState;

    if-eq v0, v1, :cond_1

    return-void

    .line 93
    :cond_1
    iget-wide v6, p0, Lio/realm/internal/SubscriptionAwareOsResults;->delayedNotificationPtr:J

    const/4 v0, 0x1

    cmp-long v1, v6, v2

    if-nez v1, :cond_2

    .line 94
    new-instance v1, Lio/realm/internal/EmptyLoadChangeSet;

    iget-boolean v2, p0, Lio/realm/internal/SubscriptionAwareOsResults;->firstCallback:Z

    invoke-direct {v1, v5, v2, v0}, Lio/realm/internal/EmptyLoadChangeSet;-><init>(Lio/realm/internal/sync/OsSubscription;ZZ)V

    goto :goto_1

    .line 96
    :cond_2
    new-instance v8, Lio/realm/internal/OsCollectionChangeSet;

    iget-boolean v4, p0, Lio/realm/internal/SubscriptionAwareOsResults;->firstCallback:Z

    const/4 v9, 0x1

    move-object v1, v8

    move-wide v2, v6

    move v6, v9

    invoke-direct/range {v1 .. v6}, Lio/realm/internal/OsCollectionChangeSet;-><init>(JZLio/realm/internal/sync/OsSubscription;Z)V

    .line 102
    :goto_1
    invoke-virtual {v1}, Lio/realm/internal/OsCollectionChangeSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lio/realm/internal/SubscriptionAwareOsResults;->isLoaded()Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    .line 105
    :cond_3
    iput-boolean v0, p0, Lio/realm/internal/SubscriptionAwareOsResults;->loaded:Z

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lio/realm/internal/SubscriptionAwareOsResults;->firstCallback:Z

    .line 107
    iget-object v0, p0, Lio/realm/internal/SubscriptionAwareOsResults;->observerPairs:Lio/realm/internal/ObserverPairList;

    new-instance v2, Lio/realm/internal/ObservableCollection$Callback;

    invoke-direct {v2, v1}, Lio/realm/internal/ObservableCollection$Callback;-><init>(Lio/realm/internal/OsCollectionChangeSet;)V

    invoke-virtual {v0, v2}, Lio/realm/internal/ObserverPairList;->foreach(Lio/realm/internal/ObserverPairList$Callback;)V

    return-void
.end method


# virtual methods
.method public notifyChangeListeners(J)V
    .locals 1

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lio/realm/internal/SubscriptionAwareOsResults;->collectionChanged:Z

    .line 113
    iput-wide p1, p0, Lio/realm/internal/SubscriptionAwareOsResults;->delayedNotificationPtr:J

    return-void
.end method
